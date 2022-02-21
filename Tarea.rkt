#lang racket
;Kenneth Corrales Lizano 2017151342

;Borrar antes de entregar
(define lista(list 1 1 1 2 2 3 3 1 1 3))
(define lista2(list "a" "a" "a" "b" "b" "c" "c" "a"))
(define p(list 2 "a"))
(define lip(list 3 "c"))
(define lipp(list 5 "h"))
(define lippp(list 4 "a"))
(define le(list p lip lipp lippp))


;
; Auxiliares
;
(define (listN n x);create a list of n elements x 
    (
      cond [(zero? n) empty]
        [else (cons x (listN (sub1 n) x))]
    )
)
(define (append-element lst elem)
  (foldr cons (list elem) lst))
;-----------------------------------------------------------


; Ejercicio 1 
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

; Ejercicio 2
(define (pack lst)
    (      
    define (packAux lst count ele listAux)
        (
            cond
            [(empty? lst) (append-element listAux (listN count ele))]
            [else 
                (
                    if (equal? ele (car lst)) 
                        (packAux (rest lst) (+ count 1) ele listAux ) ; si cumple devuelve esto
                        (packAux  (rest lst) 1 (car lst) (append-element listAux (listN count ele))); si no devuelve esto
                )
            ]
        )      
    )
    (packAux lst 1 (car lst) '())
)

; Ejercicio 3 
(define (encode lst)
    (      
    define (encodeAux lst count ele listAux)
        (
            cond
            [(empty? lst) (append-element listAux (list count ele))]
            [else 
                (
                    if (equal? ele (car lst)) 
                        (encodeAux (rest lst) (+ count 1) ele listAux ) ; si cumple devuelve esto
                        (encodeAux  (rest lst) 1 (car lst) (append-element listAux (list count ele))); si no devuelve esto
                )
            ]
        )      
    )
    (encodeAux lst 0 (car lst) '())
)


; Ejercicio 4

(define (decode lst)
    (
    define (decodeAux lst lstAux)
        (
            if (empty? lst) lstAux (decodeAux (rest lst) ( append lstAux (listN (first(car lst)) (second(car lst)))))    
        )
    )
    (decodeAux lst '() )
)


