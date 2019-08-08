#!/usr/bin/env racket

#lang racket

(define *handle-prefix* "")
(define *handle-counter* 0)

(define *char-code-before-A* (sub1 (char->integer #\A)))

(define (zero-out-handle)
  (set! *handle-prefix* "")
  (set! *handle-counter* 0))

(define (gen-handle)
  (set! *handle-counter* (+ *handle-counter* 1))
  (when (> *handle-counter* 26)
    (set! *handle-prefix* (string-append *handle-prefix* "Z"))
    (set! *handle-counter* 1))
  (format "~a~a" *handle-prefix* (integer->char (+ *char-code-before-A* *handle-counter*))))

;

(define *workbook-index*
  (call-with-input-file "workbook-index.rkt" read))

(define *language* (getenv "LANGUAGE"))

(call-with-output-file "workbook-page-index.rkt"
  (lambda (o)
    (fprintf o "(~n")
    (for ((lesson *workbook-index*))
      (system (format "cp -pr $TOPDIR/lessons/~a/langs/~a lessons/~a" lesson *language* lesson))
      (let* ([lesson-index-file (format "lessons/~a/workbook-pages/lesson-index.rkt" lesson)]
             [lesson-index
               (cond [(file-exists? lesson-index-file)
                      (call-with-input-file lesson-index-file read)]
                     [else
                       (printf "WARNING: Lesson ~a is incorrectly organized~n" lesson)
                       '()])])
        (for ((page lesson-index))
          (let ([file page]
                [aspect "portrait"])
            (when (pair? page)
              (set! file (car page))
              (set! aspect (cadr page)))
          (fprintf o "(~s ~s ~s ~s)~n" lesson file (gen-handle) aspect)))))
    (fprintf o ")~n")))

;(printf "returning from copy-lessons.rkt~n")