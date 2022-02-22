#lang scheme

(define (crear-arbol key izq der)
  (list key izq der))


  (define (crear-arbol-vacio)
    '())

  (define (crear-arbol-nodo key)
    (crear-arbol key ;key
                 (crear-arbol-vacio) ;nodo izq
                 (crear-arbol-vacio))) ;nodo der