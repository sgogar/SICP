#lang racket
;ex 1.11
;recursive
(define (f n)
  (if (< n 3)
      n 
      (+ (f (- n 1))
      (* 2 (f (- n 2)))
      (* 3 (f (- n 3)))
           ))
  )

;iterative
(define (f2 n)
  (if (< n 3)
      n
  (f2-iter 2 1 0 n)))

(define (f2-iter a b c n)
  (if (< n 3)
      a
      (f2-iter (+ a (* 2 b) (* 3 c))
               a
               b
               (- n 1))
      ))

