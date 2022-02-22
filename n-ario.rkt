#lang racket
(require racket/struct)

(define-struct Node(id name value children)#:transparent #:mutable); transparent hace que se pueda printear el struct
(define nodito1 (make-Node 1 'nodito1 11 empty ))
(define nodito2 (make-Node 2 'nodito2 12 empty ))
;(define lista (list nodito1 nodito2))
;(define nodito3 (Node 3 'nodito3 13 lista))

; para acceder a los campos del struct se llaman usando la siguiente funcion
; (nombreStruct-nombreDelAtributo definicion)
; ejemplo para obtener el nombre del nodito: (Node-name nodito)

;Auxiliares
(define (append-element lst elem)
  (foldr cons (list elem) lst))

(define (search list value)
 (cond
  [(empty? list) false]
  [(= (Node-value(first list)) value) true]
  [else (search (rest list) value)]
  )
)
(define (insertNode parent child)
   (set-Node-children! parent (append-element (Node-children parent) child))
)
;;;;;;


  

(define (insert root parent id name value); root es el nodo en la posicion actual
    (cond
        [ (equal? parent (Node-value root) ) (insertNode root (make-Node id name value empty)) ] ; si encontre el parent
        [(empty?(Node-children root))
            (null) ; si estoy en una hoja
            (
                for( [tmpNode (Node-children root)]); ingrese en los subnodos
                    (insert tmpNode parent id name value)
            )      
    ]
    )
)