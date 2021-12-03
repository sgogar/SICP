#lang racket
;10 --> 10
;another comment
;2
;3
;4
;Exercise 1.1:
10
(+ 5 3 4)
(- 9 1)
(/ 6 2)
(+ (* 2 4) (- 4 6))
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
(= a b)
(if (and (> b a) (< b (* a b)))
    b
    a)

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))

(* (cond((> a b) a)
        ((< a b) b)
        (else -1))
   (+ a 1))

;Exercise 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
   (* 3 (- 6 2) (- 2 7)))

;Exercise 1.3
(define (square a)
  (* a a))

(define (sumofsquares a b)
  (+ (square a) (square b)))

;Exercise 1.4
#|This is a long comment:
First we define both arguments a and b
Then, if B is greater than 0, use +, else -
(thus -*- = +)
So either way, it will sum to whatever a is, the
absolute value of b. 
|#
(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))

;Exercise 1.5 (for later)
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

#|With applicative-order evaluation:
It's an infinite loop, since the first step to eval
(test 0 (p)) and it evaluates both 0 and (p).

Since evaluating (p) as the output won't complete,
we get an infinite loop.

Remember that (p) is defined as a procedure that
calls itself infinite times.

---

Normal-order evaluation(fully expand and reduce):

It'd be something like
(test 0 (p)) ==> (if (= 0 0) 0 (p))

ergo, we'd get 0 as the final output. 
|#

;Exercise 1.6
;define new if 
;define sqrt procedure

