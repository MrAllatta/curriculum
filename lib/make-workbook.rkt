#!/usr/bin/env racket

#lang racket

(define *pdflatex* (find-executable-path "pdflatex"))

(define *pdftk* (find-executable-path "pdftk"))

(define *lessons*
  (call-with-input-file "workbook-index.rkt" read))

(define *workbook-page-specs*
  (call-with-input-file "workbook-page-index.rkt" read))

;(printf "*workbook-page-specs* = ~s~n" *workbook-page-specs*)

; *workbook-page-specs* is listof (lesson docfile handle aspect)

(define (make-workbook #:teacher-version [teacher-version #f] #:include-lesson [include-lesson #f])

  (define *pdf-page-specs*
    (map (lambda (f)
           (let* ([lesson-basename (list-ref f 0)]
                  [lesson-workbook-page (list-ref f 1)]
                  [lesson-handle (list-ref f 2)]
                  [lesson-aspect (list-ref f 3)]
                  [lesson-dir (string-append "lessons/" lesson-basename)]
                  [lesson-title (call-with-input-file
                                  (string-append lesson-dir "/index-title.txt")
                                  read-line)]
                  [g (string-append lesson-dir
                                    (if teacher-version "/workbook-sols-pages/" "/workbook-pages/")
                                    lesson-workbook-page)])
             (when (path-has-extension? g #".adoc")
               (set! g (path-replace-extension g ".pdf")))
             (list g lesson-basename lesson-handle lesson-aspect lesson-title)))
         *workbook-page-specs*))

  ; *pdf-page-specs* is listof (docfile basename handle aspect title)

  (set! *pdf-page-specs*
    (filter (lambda (f)
              (let ([docfile (car f)])
                (if (file-exists? docfile) #t
                    (begin
                      (printf "ERROR: ~a is not present\n" docfile)
                      #f))))
            *pdf-page-specs*))

  ;(printf "*pdf-page-specs* = ~s~n" *pdf-page-specs*)

  (for ((pdf-page-spec *pdf-page-specs*))
    (let ([docfile (list-ref pdf-page-spec 0)]
          [basename (list-ref pdf-page-spec 1)]
          [handle (list-ref pdf-page-spec 2)]
          [aspect (list-ref pdf-page-spec 3)]
          [title (list-ref pdf-page-spec 4)])
      (system* *pdftk*
               (format "Q=~a" docfile)
               "cat"
               (if (char-ci=? (string-ref aspect 0) #\l)
                   "Qwest" "Q")
               "output"
               (format "~a.pdf" handle)
               "dont_ask")))

  (call-with-output-file "workbook-numbered.tex"
    (lambda (o)
      (fprintf o
               "\\documentclass{article}
\\usepackage{pdfpages}
\\usepackage{fancyhdr}
%
\\setlength\\topmargin{-0.375in}
\\setlength\\headheight{0in}
\\setlength\\headsep{0in}
\\setlength\\textheight{9.5in}
\\setlength\\textwidth{7.0in}
\\setlength\\oddsidemargin{-0.25in}
\\setlength\\evensidemargin{-0.25in}
%
\\pagestyle{fancy}
\\renewcommand{\\headrulewidth}{0pt}
\\lhead{}\\rhead{}
\\fancyhf{}
%
\\begin{document}\n\n")
      (when (or teacher-version include-lesson)
        (fprintf o "\\includepdf[pages=-,pagecommand={\\lfoot{}\\rfoot{}}]{front-cover-teacher.pdf}\n"))
      (fprintf o "\\includepdf[pages=-,pagecommand={\\lfoot{}\\rfoot{}}]{BSABigIdeas.pdf}\n")
      (let ([curr-lesson #f])
        (let loop ([i 1] [pdf-page-specs *pdf-page-specs*])
          (unless (null? pdf-page-specs)
            (let* ([pdf-page-spec (car pdf-page-specs)]
                   [basename (list-ref pdf-page-spec 1)]
                   [handle (list-ref pdf-page-spec 2)]
                   [title (list-ref pdf-page-spec 4)]
                   [fresh-lesson (not (equal? basename curr-lesson))])
              (set! title (regexp-replace* "&" title "\\\\&"))
              (cond [fresh-lesson
                      (set! curr-lesson basename)
                      (fprintf o "\n\\includepdf[pagecommand={\\lfoot{~a}\\rfoot{~a}}]{~a.pdf}\n"
                               "" i handle)
                      (when include-lesson
                        (fprintf o "\\includepdf[pages=-,pagecommand={\\lfoot{}\\rfoot{}}]{lessons/~a/index.pdf}\n"
                                 curr-lesson))]
                    [else
                      (fprintf o "\\includepdf[pagecommand={\\lfoot{~a}\\rfoot{~a}}]{~a.pdf}\n"
                               title i handle)])
              (loop (+ i 1) (cdr pdf-page-specs))))))
      (fprintf o "\n\\end{document}\n")
      )
    #:exists 'replace)

  (when (file-exists? "workbook-numbered.pdf") (delete-file "workbook-numbered.pdf"))

  (when *pdflatex* (system* *pdflatex* "workbook-numbered"))

  (for ((pdf-page-spec *pdf-page-specs*))
    (let ([handle (list-ref pdf-page-spec 2)])
      (delete-file (format "~a.pdf" handle))))

  (when (file-exists? "workbook-numbered.pdf")
    (system (format "mv workbook-numbered.pdf ~a.pdf"
                    (if teacher-version
                        "resources/protected/workbook-sols"
                        (if include-lesson
                            "workbook/pd-workbook"
                            "workbook/workbook")))))

  )

(make-workbook)
(system (format "mv workbook-numbered.tex workbook.tex"))

(make-workbook #:include-lesson #t)
(system (format "mv workbook-numbered.tex pd-workbook.tex"))

(make-workbook #:teacher-version #t)
(system (format "mv workbook-numbered.tex workbook-sols.tex"))

(void)