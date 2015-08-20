#lang racket
(define (coin_weights coin)
    (cond ((= coin 1) 1)
          ((= coin 2) 5)
          ((= coin 3) 10)
          ((= coin 4) 25)
          ((= coin 5) 50)))
(define (count_change total cointypes)
  (change total 5))
(define (divide divider x)
  (cond ((> divider
            (* 100 x))(+ 100
                          (divide (- divider
                                         (* 100 x))
                                      x)))
        ((< divider x) 0)
        ((= divider x) 1)
        ((> divider x) (+ 1 (divide (- divider x) x)))))
         
(define (change amount coin_type type_iter)
  