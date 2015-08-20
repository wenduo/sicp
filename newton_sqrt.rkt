#lang racket
(define (square x)
  (* x x))
(define (newton_sqrt guess x)
  ( if(good_enough guess x)
      guess
      (newton_sqrt (improve guess x) x)))
(define (good_enough guess x)
  (< (abs (- x
             (square guess)))
     0.001))
(define (improve guess x)
  (average guess (/ x guess)))
(define (average x y)
  (/ (+ x y) 2))
(newton_sqrt 1 100.0)