#lang racket
(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
                 (fib (- n 2))))))

(define phi (/ (+ 1 (sqrt 5)) 2))

(define (^ a b)
  (if (= b 0)
  1
  (* a (^ a (- b 1)))))

(define (fib2 n)
  (/ (^ phi n) (sqrt 5)))