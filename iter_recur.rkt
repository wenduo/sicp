#lang racket
(define (recur n)
  (cond ((< n 3) n)
        (else (+(recur (- n 1))
                (recur (- n 2))
                (recur (- n 3))))))
(define (iter n1 n2 n3 iterator n)
  (if (= iterator n)
      n1
      (iter n2 n3 (+ n1 n2 n3) (+ iterator 1) n)))
     
    