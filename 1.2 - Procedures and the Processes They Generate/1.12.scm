#lang sicp

; Exercise 1.12:
; ==============
; The following paern of numbers is called Pascal’s triangle.
;
;      1
;     1 1
;    1 2 1
;   1 3 3 1
;  1 4 6 4 1
; . . . . . .
;
; The numbers at the edge of the triangle are all 1, and each number inside the
; triangle is the sum of the two numbers above it. Write a procedure that
; computes elements of Pascal’s triangle by means of a recursive process.

(define (pascal row col)
  (if (or (= col 0) (= col row)) 1
      (+ (pascal (- row 1) (- col 1))
         (pascal (- row 1) col))))

(define (pascal2 row col)
  (cond ((or (< col 0) (> col row)) 0)
        ((= row 0) 1)
        (else (+ (pascal2 (- row 1) (- col 1))
                 (pascal2 (- row 1) col)))))