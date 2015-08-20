#lang racket
(define (new_if pre then_clause else_clause)
  (cond (pre then_clause)
        (else else_clause)))
(define (bigger x y)
  (new_if(< x y) y x))
(bigger 2 5)
(define (newif_sqrt guess x)
  ( new_if (good_enough guess x)
          guess
          (newif_sqrt (improve guess x) x)))
(newif_sqrt 1 100)

          