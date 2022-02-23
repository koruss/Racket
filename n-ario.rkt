#lang racket
(require racket/struct)

(define-struct Node(id name value children)#:transparent #:mutable); transparent hace que se pueda printear el struct

; para acceder a los campos del struct se llaman usando la siguiente funcion
; (nombreStruct-nombreDelAtributo definicion)
; ejemplo para obtener el nombre del nodito: (Node-name nodito)


;Auxiliares
(define (append-element lst elem)
  (foldr cons (list elem) lst))

(define (delete-element lst elem)
  (remove elem lst))

(define (insertNode parent child)
   (set-Node-children! parent (append-element (Node-children parent) child))
)

(define (deleteNode parent child)
   (set-Node-children! parent (delete-element (Node-children parent) child))
)
;;;

  
;Funcion para insertar el nodo
(define (insert root parent id name value)
    (if (equal? parent (Node-value root))
        (insertNode root (make-Node id name value empty)) ; Si estoy en el nodo correcto
        (
            for( [tmpNode (Node-children root)]); ingrese en los subnodos
                    (insert tmpNode parent id name value)
        )
    )
)


;Funcion busqueda de los nodos 
(define (find-node root value)
    (if (equal? (Node-value value) (Node-value root))
        (print (list (Node-id root) (Node-name root) (Node-value root) )) ; Si estoy en el nodo correcto
        (
            for( [tmpNode (Node-children root)]); ingrese en los subnodos
                    (find-node tmpNode value)
        )
    )
)


;Esta la funcion para buscar el ancestro
(define (ancestor root value) 
    (
    define (ancestorAux root value parent)
        (if (equal? (Node-value value) (Node-value root))
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
            (deleteNode parent root) ; Si estoy en el nodo correcto
            (
                for( [tmpNode (Node-children root)]); ingrese en los subnodos
                        (delete-node-aux tmpNode node root)
            )
        )
    )
  (delete-node-aux root node null)
)