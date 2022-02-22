#lang racket
(require racket/struct)

(define-struct Node(id name value children)#:transparent); transparent hace que se pueda printear el struct
(define nodito1 (make-Node 1 'nodito1 11 '() ))
(define nodito2 (make-Node 2 'nodito2 12 '() ))
(define lista (list nodito1 nodito2))
(define nodito3 (Node 3 'nodito3 13 lista))

; para acceder a los campos del struct se llaman usando la siguiente funcion
; (nombreStruct-nombreDelAtributo definicion)
; ejemplo para obtener el nombre del nodito: (Node-name nodito)

(define (search list value)
 (cond
  [(empty? list) false]
  [(= (Node-value(first list)) value) true]
  [else (search (rest list) value)]
  )
)

(define (search list value)
    (cond
        [(empty? list) false]
        [(= (first list) value) true]
        [else (search (rest list) value)]
    )
)


(define (insert parent id name value '())
    (
        define (insertAux )
    )
)