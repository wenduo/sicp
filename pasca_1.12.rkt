#lang racket
(define (pascal raw column)
  (cond ((= raw 1) 1)
        ((= column 1) 1)
        ((= column raw) 1)
        (else (+(pascal (- raw 1) (- column 1))
                (pascal (- raw 1) column)))))