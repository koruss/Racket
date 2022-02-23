#lang racket
(require racket/struct)

(define-struct Node(id name value children)#:transparent #:mutable); transparent hace que se pueda printear el struct
(define nodito1 (make-Node 1 'nodito1 11 empty ))
(define nodito2 (make-Node 2 'nodito2 12 empty ))
(define lista (list nodito1 nodito2))
(define nodito3 (Node 3 'nodito3 13 lista))

; para acceder a los campos del struct se llaman usando la siguiente funcion
; (nombreStruct-nombreDelAtributo definicion)
; ejemplo para obtener el nombre del nodito: (Node-name nodito)

(define (append-element lst elem)
  (foldr cons (list elem) lst))

(define (search list value)
 (cond
  [(empty? list) false]
  [(= (Node-value(first list)) value) true]
  [else (search (rest list) value)]
  )
)

(define (delete-element lst elem)
  (foldr remove (list elem) lst))

(define (insertNode parent child)
   (set-Node-children! parent (append-element (Node-children parent) child))
)

(define (deleteNode parent child)
   (set-Node-children! parent (delete-element (Node-children parent) child))
)


  

(define (insert root parent id name value)
    (if (equal? parent (Node-value root))
        (insertNode root (make-Node id name value empty)) ; Si estoy en el nodo correcto
        (
            for( [tmpNode (Node-children root)]); ingrese en los subnodos
                    (insert tmpNode parent id name value)
        )
    )
)

(define (find root value)
    (if (equal? value (Node-value root))
        (print (list (Node-id root) (Node-name root) (Node-value root) )) ; Si estoy en el nodo correcto
        (
            for( [tmpNode (Node-children root)]); ingrese en los subnodos
                    (find tmpNode value)
        )
    )
)



(define (ancestor root value) 
    (
    define (ancestorAux root value parent)
        (if (equal? value (Node-value root))
            (print (list (Node-id parent) (Node-name parent) (Node-value parent) )) ; Si estoy en el nodo correcto
            (
                for( [tmpNode (Node-children root)]); ingrese en los subnodos
                        (ancestorAux tmpNode value root)
            )
        )
    )
  (ancestorAux root value null)
)



(define (delete-node root node) 
    (
    define (delete-node-aux root node parent)
        (if (equal? (Node-value node) (Node-value root))
            (deleteNode parent node) ; Si estoy en el nodo correcto
            (
                for( [tmpNode (Node-children root)]); ingrese en los subnodos
                        (delete-node-aux tmpNode node root)
            )
        )
    )
  (ancestorAux root value null)
  (root)
)

(insert nodito3 12 77 'Maria 77)
(insert nodito3 12 88 'Jose 88)
(insert nodito3 88 99 'Milton 99)
(insert nodito3 99  22 'Marco 22) 