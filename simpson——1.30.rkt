#lang racket
(define (real x) x)
(define (cube x)
  (+ x
     x
     x))
(define (inc x)
  (+ x 1))
(define (sum term a next b)
  (if (> a b)
      0
  (+ (term a)
     (sum term (next a) next b))))


(define (intergral f a b n)
  (define dx
    (/ (- b a)
       n))
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b) dx))

(define (simpson f a b n)
  (define (footlen a b n)
    (/ (- b a) n))
  (define h
    (footlen a b n))
  (define (add-footlen x)
    (+ x
       h))
  (define (dec-footlen x)
    (- x
       h))
  (define (add-double-footlen x)
    (+ x
       h
       h))
  (* (/ h
        3)
     (+ (f a)
        (f b)
        (* 2 (sum f (add-footlen a) add-footlen (dec-footlen b)))
        (* 2 (sum f (add-footlen a) add-double-footlen (dec-footlen b))))))