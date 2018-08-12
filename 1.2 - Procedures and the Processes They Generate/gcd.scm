#lang sicp
(#%provide (all-defined))

; Greatest common divisor
; =======================

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))