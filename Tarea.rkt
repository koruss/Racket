#lang racket

(define lista (list "a" "b" "c" "d" ))
(define lista2 '())

(define (listN n x)
  "Repeat x n times."
  (cond [(zero? n) empty]
        [else (cons x (listN (sub1 n) x))]))

(
    define (duplicate lst)
    (
        define (tail lst lstAux)
            (
                cond
                [(empty? lst) lstAux]
                [else 
                ;(define listTemp (list(car lst) (car lst)))
                ( tail (rest lst)(append lstAux (listN 2 (car lst))))]
            )    
    )
    (tail lst '())
)


(define )
