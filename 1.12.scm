#lang racket
(define (pascal a b)
  (define (factorial n)
    (if (= n 0)
        1
        (* n (factorial(- n 1)))
        ))
  (if (< a b)
      0
  (/ (factorial a) (* (factorial b) (factorial (- a b)))))
 )