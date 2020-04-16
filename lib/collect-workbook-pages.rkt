#!/usr/bin/env racket

#lang racket

(require "utils.rkt")

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

(define *lesson-order* (read-data-file "lessons/lessons.txt"))

(define *language* (getenv "LANGUAGE"))

(define (write-pages-info lesson-dir o #:paginate [paginate "yes"])
  (let* ([workbook-pages-file (format "~a/pages/workbook-pages.txt" lesson-dir)]
         [exercise-pages-file (format "~a/pages/exercise-pages.txt.kp" lesson-dir)]
         [workbook-pages
           (cond [(file-exists? workbook-pages-file)
                  (read-data-file workbook-pages-file #:mode 'lines)]
                 [else
                   (printf "WARNING: missing ~a\n" workbook-pages-file)
                   '()])]
         [exercise-pages
           (cond [(not (truthy-getenv "ADDEXERCISES")) '()]
                 [(file-exists? exercise-pages-file)
                  (read-data-file exercise-pages-file #:mode 'files)]
                 [else
                   '()])])
    (unless (null? workbook-pages)
      (let ([workbook-pages-ls-file (format "~a/pages/workbook-pages-ls.txt.kp" lesson-dir)])
        (call-with-output-file workbook-pages-ls-file
          (lambda (o2)
            (for ([page workbook-pages])
              (let ([file (list-ref page 0)]
                    [aspect "portrait"]
                    [n (length page)])
                (when (>= n 2)
                  (set! aspect (list-ref page 1)))
                (when (>= n 3)
                  (set! paginate (list-ref page 2)))
                (fprintf o2 "~a\n" file)
                (fprintf o "(~s ~s ~s ~s ~s)\n" lesson-dir file (gen-handle) aspect paginate)))
            ;
            (for ([file exercise-pages])
              (fprintf o "(~s ~s ~s ~s ~s)\n" lesson-dir file (gen-handle) "portrait" "no")))
          #:exists 'replace)))))

(call-with-output-file "workbook-page-index.rkt"
  (lambda (o)
    (fprintf o "(\n")
    (write-pages-info "front-matter" o #:paginate "no")
    (for ([lesson *lesson-order*])
      (let ([lesson-dir (string-append "lessons/" lesson)])
        (write-pages-info lesson-dir o)))
    (write-pages-info "back-matter" o #:paginate "no")
    (fprintf o ")\n"))
  #:exists 'replace)

(void)
