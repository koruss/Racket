#lang racket

(define lista (list "a" "b" "c" "d" ))
(define lista2 '())

(define (listN n x);create a list of n elements x 
    (
      cond [(zero? n) empty]
        [else (cons x (listN (sub1 n) x))]
    )
)


(
define (duplicate lst)
    (
    define (tail lst lstAux)
            (
                cond
                [(empty? lst) lstAux]
                [else 
                ( tail (rest lst)(append lstAux (listN 2 (car lst))))]
            )    
    )
    (tail lst '())
)

(define (pack lst)
    (      
    define (packAux lst count ele listAux)
        (
            cond
            [(empty? lst) (list listAux (listN count ele))]
            [else 
                (
                    if (= ele (car lst)) 
                        (packAux (rest lst) (+ count 1) ele listAux ) ; si cumple devuelve esto
                        (packAux  (rest lst) 1 (car lst) (list listAux (listN count ele))); si no devuelve esto
                )
            ]
        )      
    )
    (packAux lst 1 (car lst) '())
)
