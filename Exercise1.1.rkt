#lang racket

10                                ; 10
(+ 5 3 4)                         ; 12
(- 9 1)                           ; 8
(/ 6 2)                           ; 3
(+ (* 2 4) (- 4 6))               ; 2 * 4 + (4 - 6) --> 8 -2 --> 6
(define a 3)                      ; a = 3
(define b (+ a 1))                ; b = a + 1 --> b = 3 + 1 --> b = 4
(+ a b (* a b))                   ; a + b + a * b --> 7 + 12 --> 19
(= a b)                           ; a == b --> false
(if (and (> b a) (< b (* a b)))   ; if b is greater than a and b is less than a * b --> if 4 > 3 and 4 < 12 --> true --> b --> 4
    b
    a)
(cond ((= a 4) 6)                 ; if a == 4 then 6
      ((= b 4) (+ 6 7 a))         ; if b == 4 then 6 + 7 + a --> 6 + 7 + 3 --> 16
      (else 25))                  ; else 25
(+ 2 (if (> b a) b a))            ; if b > a then 2 + b else 2 + a --> 2 + b --> 2 + 4 --> 6
(* (cond ((> a b) a)              ; if a > b then a * (a + 1)
         ((< a b) b)              ; if a < b then b * (a + 1) --> 4 * (3 + 1) --> 4 * 4 --> 16
         (else -1))               ; else -1 * (a + 1)
   (+ a 1))
