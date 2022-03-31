#lang racket

(require racket/gui)

; Make a frame by instantiating the frame% class
(define frame (new frame%
                   [label "Damas Chinas - P1"]
                   [border 10]
                   [spacing 5]
                   [x 1000]	 
                   [y 30]))

; Make a button in the frame
(define bnn (new button% [parent frame]
             [label "Click para empezar"]
             [enabled #t]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send bnn enable #f)
                         (jugar))]))

; Make a static text message in the frame
(define msg (new message% [parent frame]
                          [label "Hi!"]
                          [vert-margin 10]
                          [stretchable-width #f]	 
                          [stretchable-height #f]	
                          [auto-resize #t]))

; ---------------------------------------------------------------------

(define row0 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b0-1 (new button% [parent row0]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 0 0 0 0 #f tablero) (cambiar-posiciones 0 0)))]))

; ---------------------------------------------------------------------

(define row1 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b1-1 (new button% [parent row1]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 1 0 0 0 #f tablero) (cambiar-posiciones 1 0)))]))

; Make a button in the frame
(define b1-2 (new button% [parent row1]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 1 1 0 0 #f tablero) (cambiar-posiciones 1 1)))]))


; ---------------------------------------------------------------------

(define row2 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b2-1 (new button% [parent row2]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 2 0 0 0 #f tablero) (cambiar-posiciones 2 0)))]))

; Make a button in the frame
(define b2-2 (new button% [parent row2]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 2 1 0 0 #f tablero) (cambiar-posiciones 2 1)))]))

; Make a button in the frame
(define b2-3 (new button% [parent row2]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 2 2 0 0 #f tablero) (cambiar-posiciones 2 2)))]))


; -----------------------------------------------------------------

(define row3 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))


; Make a button in the frame
(define b3-1 (new button% [parent row3]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 3 0 0 0 #f tablero) (cambiar-posiciones 3 0)))]))

; Make a button in the frame
(define b3-2 (new button% [parent row3]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 3 1 0 0 #f tablero) (cambiar-posiciones 3 1)))]))

; Make a button in the frame
(define b3-3 (new button% [parent row3]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 3 2 0 0 #f tablero) (cambiar-posiciones 3 2)))]))

; Make a button in the frame
(define b3-4 (new button% [parent row3]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 3 3 0 0 #f tablero) (cambiar-posiciones 3 3)))]))


; -----------------------------------------------------------------

(define row4 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b4-1 (new button% [parent row4]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 4 0 0 0 #f tablero) (cambiar-posiciones 4 0)))]))

; Make a button in the frame
(define b4-2 (new button% [parent row4]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 4 1 0 0 #f tablero) (cambiar-posiciones 4 1)))]))

; Make a button in the frame
(define b4-3 (new button% [parent row4]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 4 2 0 0 #f tablero) (cambiar-posiciones 4 2)))]))

; Make a button in the frame
(define b4-4 (new button% [parent row4]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 4 3 0 0 #f tablero) (cambiar-posiciones 4 3)))]))

; Make a button in the frame
(define b4-5 (new button% [parent row4]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 4 4 0 0 #f tablero) (cambiar-posiciones 4 4)))]))

; -----------------------------------------------------------------

(define row5 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b5-1 (new button% [parent row5]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 5 0 0 0 #f tablero) (cambiar-posiciones 5 0)))]))

; Make a button in the frame
(define b5-2 (new button% [parent row5]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 5 1 0 0 #f tablero) (cambiar-posiciones 5 1)))]))

; Make a button in the frame
(define b5-3 (new button% [parent row5]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 5 2 0 0 #f tablero) (cambiar-posiciones 5 2)))]))

; Make a button in the frame
(define b5-4 (new button% [parent row5]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 5 3 0 0 #f tablero) (cambiar-posiciones 5 3)))]))

; Make a button in the frame
(define b5-5 (new button% [parent row5]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 5 4 0 0 #f tablero) (cambiar-posiciones 5 4)))]))

; Make a button in the frame
(define b5-6 (new button% [parent row5]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 5 5 0 0 #f tablero) (cambiar-posiciones 5 5)))]))

; -----------------------------------------------------------------

(define row6 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b6-1 (new button% [parent row6]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 6 0 0 0 #f tablero) (cambiar-posiciones 6 0)))]))

; Make a button in the frame
(define b6-2 (new button% [parent row6]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 6 1 0 0 #f tablero) (cambiar-posiciones 6 1)))]))

; Make a button in the frame
(define b6-3 (new button% [parent row6]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 6 2 0 0 #f tablero) (cambiar-posiciones 6 2)))]))

; Make a button in the frame
(define b6-4 (new button% [parent row6]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 6 3 0 0 #f tablero) (cambiar-posiciones 6 3)))]))

; Make a button in the frame
(define b6-5 (new button% [parent row6]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 6 4 0 0 #f tablero) (cambiar-posiciones 6 4)))]))

; Make a button in the frame
(define b6-6 (new button% [parent row6]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 6 5 0 0 #f tablero) (cambiar-posiciones 6 5)))]))

; Make a button in the frame
(define b6-7 (new button% [parent row6]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 6 6 0 0 #f tablero) (cambiar-posiciones 6 6)))]))

; -----------------------------------------------------------------

(define row7 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b7-1 (new button% [parent row7]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 7 0 0 0 #f tablero) (cambiar-posiciones 7 0)))]))

; Make a button in the frame
(define b7-2 (new button% [parent row7]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 7 1 0 0 #f tablero) (cambiar-posiciones 7 1)))]))

; Make a button in the frame
(define b7-3 (new button% [parent row7]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 7 2 0 0 #f tablero) (cambiar-posiciones 7 2)))]))

; Make a button in the frame
(define b7-4 (new button% [parent row7]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 7 3 0 0 #f tablero) (cambiar-posiciones 7 3)))]))

; Make a button in the frame
(define b7-5 (new button% [parent row7]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 7 4 0 0 #f tablero) (cambiar-posiciones 7 4)))]))

; Make a button in the frame
(define b7-6 (new button% [parent row7]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 7 5 0 0 #f tablero) (cambiar-posiciones 7 5)))]))

; Make a button in the frame
(define b7-7 (new button% [parent row7]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 7 6 0 0 #f tablero) (cambiar-posiciones 7 6)))]))

; Make a button in the frame
(define b7-8 (new button% [parent row7]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 7 7 0 0 #f tablero) (cambiar-posiciones 7 7)))]))

; -----------------------------------------------------------------

(define row8 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b8-1 (new button% [parent row8]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 8 0 0 0 #f tablero) (cambiar-posiciones 8 0)))]))

; Make a button in the frame
(define b8-2 (new button% [parent row8]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 8 1 0 0 #f tablero) (cambiar-posiciones 8 1)))]))

; Make a button in the frame
(define b8-3 (new button% [parent row8]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 8 2 0 0 #f tablero) (cambiar-posiciones 8 2)))]))

; Make a button in the frame
(define b8-4 (new button% [parent row8]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 8 3 0 0 #f tablero) (cambiar-posiciones 8 3)))]))

; Make a button in the frame
(define b8-5 (new button% [parent row8]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 8 4 0 0 #f tablero) (cambiar-posiciones 8 4)))]))

; Make a button in the frame
(define b8-6 (new button% [parent row8]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 8 5 0 0 #f tablero) (cambiar-posiciones 8 5)))]))

; Make a button in the frame
(define b8-7 (new button% [parent row8]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 8 6 0 0 #f tablero) (cambiar-posiciones 8 6)))]))

; -----------------------------------------------------------------

(define row9 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b9-1 (new button% [parent row9]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 9 0 0 0 #f tablero) (cambiar-posiciones 9 0)))]))

; Make a button in the frame
(define b9-2 (new button% [parent row9]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 9 1 0 0 #f tablero) (cambiar-posiciones 9 1)))]))

; Make a button in the frame
(define b9-3 (new button% [parent row9]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 9 2 0 0 #f tablero) (cambiar-posiciones 9 2)))]))

; Make a button in the frame
(define b9-4 (new button% [parent row9]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 9 3 0 0 #f tablero) (cambiar-posiciones 9 3)))]))

; Make a button in the frame
(define b9-5 (new button% [parent row9]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 9 4 0 0 #f tablero) (cambiar-posiciones 9 4)))]))

; Make a button in the frame
(define b9-6 (new button% [parent row9]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 9 5 0 0 #f tablero) (cambiar-posiciones 9 5)))]))

; -----------------------------------------------------------------

(define row10 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b10-1 (new button% [parent row10]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 10 0 0 0 #f tablero) (cambiar-posiciones 10 0)))]))

; Make a button in the frame
(define b10-2 (new button% [parent row10]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 10 1 0 0 #f tablero) (cambiar-posiciones 10 1)))]))

; Make a button in the frame
(define b10-3 (new button% [parent row10]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 10 2 0 0 #f tablero) (cambiar-posiciones 10 2)))]))

; Make a button in the frame
(define b10-4 (new button% [parent row10]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 10 3 0 0 #f tablero) (cambiar-posiciones 10 3)))]))

; Make a button in the frame
(define b10-5 (new button% [parent row10]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 10 4 0 0 #f tablero) (cambiar-posiciones 10 4)))]))

; -----------------------------------------------------------------

(define row11 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b11-1 (new button% [parent row11]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 11 0 0 0 #f tablero) (cambiar-posiciones 11 0)))]))

; Make a button in the frame
(define b11-2 (new button% [parent row11]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 11 1 0 0 #f tablero) (cambiar-posiciones 11 1)))]))

; Make a button in the frame
(define b11-3 (new button% [parent row11]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 11 2 0 0 #f tablero) (cambiar-posiciones 11 2)))]))

; Make a button in the frame
(define b11-4 (new button% [parent row11]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 11 3 0 0 #f tablero) (cambiar-posiciones 11 3)))]))

; -----------------------------------------------------------------

(define row12 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b12-1 (new button% [parent row12]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 12 0 0 0 #f tablero) (cambiar-posiciones 12 0)))]))

; Make a button in the frame
(define b12-2 (new button% [parent row12]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 12 1 0 0 #f tablero) (cambiar-posiciones 12 1)))]))

; Make a button in the frame
(define b12-3 (new button% [parent row12]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 12 2 0 0 #f tablero) (cambiar-posiciones 12 2)))]))

; -----------------------------------------------------------------

(define row13 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b13-1 (new button% [parent row13]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 13 0 0 0 #f tablero) (cambiar-posiciones 13 0)))]))

; Make a button in the frame
(define b13-2 (new button% [parent row13]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 13 1 0 0 #f tablero) (cambiar-posiciones 13 1)))]))


; -----------------------------------------------------------------

(define row14 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b14-1 (new button% [parent row14]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         ;(check-availables b12-1))]))
                         (if (= accionActual 0) (verificar-disponibles 14 0 0 0 #f tablero) (cambiar-posiciones 14 0)))]))

;-------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------

(define-struct ficha(tipo x y btn) #:mutable #:transparent)

(define f01(ficha "X" 0 0 b0-1))

(define f02(ficha "X" 1 0 b1-1))
(define f03(ficha "X" 1 1 b1-2))

(define f04(ficha "X" 2 0 b2-1))
(define f05(ficha "X" 2 1 b2-2)) ; Fichas del jugador X
(define f06(ficha "X" 2 2 b2-3))

(define f07(ficha "X" 3 0 b3-1))
(define f08(ficha "X" 3 1 b3-2))
(define f09(ficha "X" 3 2 b3-3))
(define f10(ficha "X" 3 3 b3-4))

(define f11(ficha "O" 14 0 b14-1))
(define f12(ficha "O" 13 0 b13-1))
(define f13(ficha "O" 13 1 b13-2))
(define f14(ficha "O" 12 0 b12-1))
(define f15(ficha "O" 12 1 b12-2)) ; Fichas del jugador O
(define f16(ficha "O" 12 2 b12-3))
(define f17(ficha "O" 11 0 b11-1))
(define f18(ficha "O" 11 1 b11-2))
(define f19(ficha "O" 11 2 b11-3))
(define f20(ficha "O" 11 3 b11-4))

(define e01(ficha "E" 4 0 b4-1))
(define e02(ficha "E" 4 1 b4-2))
(define e03(ficha "E" 4 2 b4-3))
(define e04(ficha "E" 4 3 b4-4))
(define e05(ficha "E" 4 4 b4-5))

(define e06(ficha "E" 5 0 b5-1))
(define e07(ficha "E" 5 1 b5-2))
(define e08(ficha "E" 5 2 b5-3))
(define e09(ficha "E" 5 3 b5-4))
(define e10(ficha "E" 5 4 b5-5))
(define e11(ficha "E" 5 5 b5-6))

(define e12(ficha "E" 6 0 b6-1))
(define e13(ficha "E" 6 1 b6-2))
(define e14(ficha "E" 6 2 b6-3)) ; Espacios disponibles
(define e15(ficha "E" 6 3 b6-4))
(define e16(ficha "E" 6 4 b6-5))
(define e17(ficha "E" 6 5 b6-6))
(define e18(ficha "E" 6 6 b6-7))
(define e19(ficha "E" 7 0 b7-1))
(define e20(ficha "E" 7 1 b7-2))
(define e21(ficha "E" 7 2 b7-3))
(define e22(ficha "E" 7 3 b7-4))
(define e23(ficha "E" 7 4 b7-5))
(define e24(ficha "E" 7 5 b7-6))
(define e25(ficha "E" 7 6 b7-7))
(define e26(ficha "E" 7 7 b7-8))
(define e27(ficha "E" 8 0 b8-1))
(define e28(ficha "E" 8 1 b8-2))
(define e29(ficha "E" 8 2 b8-3))
(define e30(ficha "E" 8 3 b8-4))
(define e31(ficha "E" 8 4 b8-5))
(define e32(ficha "E" 8 5 b8-6))
(define e33(ficha "E" 8 6 b8-7))
(define e34(ficha "E" 9 0 b9-1))
(define e35(ficha "E" 9 1 b9-2))
(define e36(ficha "E" 9 2 b9-3))
(define e37(ficha "E" 9 3 b9-4))
(define e38(ficha "E" 9 4 b9-5))
(define e39(ficha "E" 9 5 b9-6))
(define e40(ficha "E" 10 0 b10-1))
(define e41(ficha "E" 10 1 b10-2))
(define e42(ficha "E" 10 2 b10-3))
(define e43(ficha "E" 10 3 b10-4))
(define e44(ficha "E" 10 4 b10-5))

(define turnoActual "O")
(define accionActual 0)
(define actualX null)
(define actualY null)
(define tableroTMP null)

; X-O --> Fichas de jugadores.
; E --> Espacio.

(define tablero(list
               (list                  f01)
               (list                f02 f03)
               (list              f04 f05 f06)
               (list            f07 f08 f09 f10)
               (list          e01 e02 e03 e04 e05)
               (list        e06 e07 e08 e09 e10 e11)
               (list      e12 e13 e14 e15 e16 e17 e18)
               (list    e19 e20 e21 e22 e23 e24 e25 e26)
               (list      e27 e28 e29 e30 e31 e32 e33)
               (list        e34 e35 e36 e37 e38 e39)
               (list          e40 e41 e42 e43 e44)
               (list            f17 f18 f19 f20)
               (list              f14 f15 f16)
               (list                f12 f13)
               (list                  f11)
               ))

;-----------------------------------

(define (ubicar-elemento tableroo x1 y1 x2 y2)
  (cond
    [(empty? tableroo) 0]
    [else (ubicar-elemento-aux tableroo x1 y1 x2 y2 (first tableroo))]))

(define (ubicar-elemento-aux tableroo x1 y1 x2 y2 fila)
  (cond
    [(empty? fila) (ubicar-elemento (rest tableroo) x1 y1 (+ x2 1) 0)]
    [(equal? x1 x2) (cond
                       [(equal? y1 y2)(first fila)]
                       [else (ubicar-elemento-aux tableroo x1 y1 x2 (+ y2 1) (rest fila))])]
    [else (ubicar-elemento-aux tableroo x1 y1 x2 (+ y2 1)(rest fila))]))

;------------------------------------

(define (nuevo-tablero tableroo x1 y1 x2 y2 tablero2)
  (cond
    [(empty? tableroo) (set! tableroTMP tablero2)]
    [else (nuevo-tablero-aux tableroo x1 y1 x2 y2 (first tableroo) tablero2 (list))]))

(define (nuevo-tablero-aux tableroo x1 y1 x2 y2 fila tablero2 fila2)
  (cond
    [(empty? fila) (nuevo-tablero (rest tableroo) x1 y1 (+ x2 1) 0 (append tablero2 (list fila2)))]
    [(equal? x1 x2) (cond
                       [(equal? y1 y2) (nuevo-tablero-aux tableroo x1 y1 x2 (+ y2 1) (rest fila) tablero2 (append fila2 (list (struct-copy ficha (ubicar-elemento tablero x1 y1 0 0) [tipo turnoActual]))))]
                       [else (nuevo-tablero-aux tableroo x1 y1 x2 (+ y2 1)(rest fila) tablero2 (append fila2 (list(first fila))))])]
    [(equal? actualX x2) (cond
                       [(equal? actualY y2) (nuevo-tablero-aux tableroo x1 y1 x2 (+ y2 1) (rest fila) tablero2 (append fila2 (list (struct-copy ficha (ubicar-elemento tablero actualX actualY 0 0) [tipo "E"]))))]
                       [else (nuevo-tablero-aux tableroo x1 y1 x2 (+ y2 1) (rest fila) tablero2 (append fila2 (list(first fila))))])]
    [else (nuevo-tablero-aux tableroo x1 y1 x2 (+ y2 1)(rest fila) tablero2 (append fila2 (list(first fila))))]))

;----------------------------------
(define (cambiar-posiciones x1 y1)

  (send (ficha-btn (ubicar-elemento tablero x1 y1 0 0)) set-label turnoActual)
  (send (ficha-btn (ubicar-elemento tablero actualX actualY 0 0)) set-label "-")

  (nuevo-tablero tablero x1 y1 0 0 (list))
  (set tablero null)
  (set! tablero tableroTMP)
  (set! tableroTMP null)
  (set! accionActual 0)

  (if (equal? turnoActual "O") (set! turnoActual "X") (set! turnoActual "O"))
  (jugar))

(define (realizar-jugada x1 y1)
  (set! actualX x1)
  (set! actualY y1)
  (set! accionActual 1)
  (cambiar-btns turnoActual tablero #f)
  )

;------------------

(define (verificar-disponibles x1 y1 x2 y2 flag tableroo)
  (cond
    [(empty? tableroo) (if (boolean=? flag #f) (send msg set-label "No hay jugada") (realizar-jugada x1 y1))]
    [else (verificar-disponibles-aux x1 y1 x2 y2 tableroo (first tableroo) flag)]))

(define (verificar-disponibles-aux x1 y1 x2 y2 tableroo fila flag)
  (cond
    [(empty? fila) (verificar-disponibles x1 y1 (+ x2 1) 0 flag (rest tableroo))] 
    [(not(verificar-espacio-vacio (first fila))) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)]


    [(> x1 7)
    (cond
    ;abajo de la mitad
    [(equal? (- x1 1) x2)
     (cond
      [(equal? y1 y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] ; arriba - izquierda
      [(equal? y1 (- y2 1)) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] ; arriba - derecha
      [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]

    [(equal? (+ x1 1) x2)
     (cond
      [(equal? y1 y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] ; arriba - izquierda
      [(equal? (- y1 1) y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] ; arriba - derecha
      [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]
    ;error
    ;[(equal? (- x1 2) x2)
    ; (cond
    ;  [(equal? (+ y1 1) y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] ; arriba - derecha
    ;  [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]
    ;error
    ;[(equal? (+ x1 2) x2)
    ; (cond
    ;  [(equal? (- y1 1) y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] ; arriba - derecha
    ;  [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]6
    
    [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]

    [(< x1 7)
     (cond
    ;arriba de la mitad
    [(equal? (+ x1 1) x2)
     (cond
      [(equal? y1 y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] ; arriba - izquierda
      [(equal? (+ y1 1) y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] ; arriba - derecha
      [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]

    [(equal? (- x1 1) x2)
     (cond
      [(equal? y1 y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] ; arriba - izquierda
      [(equal? y1 (+ y2 1)) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] ; arriba - derecha
      [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]
    ;error
    ;[(equal? (+ x1 2) x2)
    ; (cond
    ;  [(equal? (+ y1 1) y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] ; arriba - derecha
    ;  [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]
    ;error
    ;[(equal? (- x1 2) x2)
    ; (cond
    ;  [(equal? (- y1 1) y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] ; arriba - derecha
    ;  [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]
    
    [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]
    

    [(= x1 7)
     (cond
       [(equal? (+ x1 1) x2)
     (cond
      [(equal? y1 y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] ; arriba - izquierda
      [(equal? (- y1 1) y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] ; arriba - derecha
      [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]

    [(equal? (- x1 1) x2)
     (cond
      [(equal? y1 y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] ; arriba - izquierda
      [(equal? y1 (+ y2 1)) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] ; arriba - derecha
      [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]
       [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]
    ;error
    ;[(equal? (- x1 2) x2)
    ; (cond
    ;  [(equal? (+ y1 1) y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] ; arriba - derecha
    ;  [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]
    ;error
    ;[(equal? (+ x1 2) x2)
    ; (cond
    ;  [(equal? (- y1 1) y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] ; arriba - derecha
    ;  [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]
    
    [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)]))

;------------------

(define (verificar-espacio-vacio fichaa)
  (if (equal? (ficha-tipo fichaa) "E") #t #f))

(define (hay-ganador)
  (cond
    [(equal? (ficha-tipo (first(first tablero))) "X") #f]
    [(equal? (ficha-tipo (first(first tablero))) "E") #f]
    [(equal? (ficha-tipo (first(last tablero))) "O") #f]
    [(equal? (ficha-tipo (first(last tablero))) "E") #f]

    [(equal? (verificar-fila (fifth tablero)) #f) #f]
    [(equal? (verificar-fila (sixth tablero)) #f) #f]
    [(equal? (verificar-fila (seventh tablero)) #f) #f]
    [(equal? (verificar-fila (eighth tablero)) #f) #f]
    [(equal? (verificar-fila (ninth tablero)) #f) #f]
    [(equal? (verificar-fila (tenth tablero)) #f) #f]
    [(equal? (verificar-fila (tenth (rest tablero))) #f) #f]
    
    [else #t]))

(define (verificar-fila fila)
  (cond
    [(empty? fila) #t]
    [(equal? (ficha-tipo (first fila)) "E") (verificar-fila (rest fila))]
    [else #f]))

(define (jugar)
  (cond
    [(boolean=? (hay-ganador) #t) (begin (send msg set-label "Hay ganador") (cambiar-btns "X" tablero #f) (cambiar-btns "O" tablero #f) (cambiar-btns "E" tablero #f))]
    [(equal? turnoActual "O") (juega-O)]
    [else (juega-X)]))

(define (juega-O)
  (send msg set-label "O")
  (cambiar-btns "X" tablero #f) ;apago los botones de "X"
  (cambiar-btns "E" tablero #f) ;apago los botones de "O"
  (cambiar-btns "0" tablero #t) ;prendo los botones de "O"
  )

(define (juega-X)
  (send msg set-label "X")
  (cambiar-btns "0" tablero #f) ;apago los botones de "O"
  (cambiar-btns "E" tablero #f) ;apago los botones de "O"
  (cambiar-btns "X" tablero #t) ;prendo los botones de "X"
  )

;------------------------------

(define (cambiar-btns tipo tableroo condicion)
  (cond
    [(empty? tableroo) 0]
    [(equal? tipo "X") (cambiar-btns-aux tableroo "X" (first tableroo) condicion)]
    [(equal? tipo "E") (cambiar-btns-aux tableroo "E" (first tableroo) condicion)]
    [else (cambiar-btns-aux tableroo "O" (first tableroo) condicion)]))

(define (cambiar-btns-aux tableroo tipo fila condicion)
  (cond
    [(empty? fila) (cambiar-btns tipo (rest tableroo) condicion)]
    [(equal? (ficha-tipo (first fila)) tipo) (begin (cambiar-btn (ficha-btn (first fila)) condicion) (cambiar-btns-aux tableroo tipo (rest fila) condicion))]
    [else (cambiar-btns-aux tableroo tipo (rest fila) condicion)]))

;------------------------------

(define (cambiar-btn btn condicion)
  (send btn enable condicion))
;-------PRUEBAS 12 AM
;-------PRUEBAS 1 AM
(send frame show #t)


;
;
; Logica del programa 
;
;
(define (append-element lst elem)
  (foldr cons (list elem) lst))

(define-struct Jugada(tableroJugada ficha xDest yDest)#:transparent #:mutable)

(define listaJugadasSimples (list (list 0 1); esto lo tenia y lo perdi hay que volverlo a hacer
                                  (list 0 1)
                                  (list 0 1)
                                  (list 0 1)
                                  (list 0 1)
                                  (list 0 1)
                                  (list 0 1)
                                  ))

(define listaJugadasSalto (list (list 2 0)
                                (list 2 1)
                                (list 2 2)
                                (list 2 -2)
                                (list 2 -1)
                                (list 2 0)
                                ))


(define (validarJugada pTablero pX pY )
  (if (< pX (length tablero))
      (if(< pY (length (list-ref pTablero pX))  )
         (if (equal? "E" (ficha-tipo (list-ref (list-ref pTablero pX)pY) ))
             #t
             #f
             )
         #f
         )
      #f
      )   
  )

;(define (validarJugadaSalto pTablero pX pY )
;   (if (< x (length tablero))
;       (if(< y (length (list-ref tablero x))  )
;          (if (equal? "E" (ficha-tipo (list-ref (list-ref tablero x)y) ))
;              "#t"
;              "#f"
;              )
;          "#f"
;          )
;       "#f"
;       )   
;)

(define (jugadaSimple pTablero pFicha pX pY)
  (
   if (equal? #t (validarJugada tablero pX pY))
      (make-Jugada pTablero pFicha pX pY);hay que cambiar pX y pY por la suma de la posicion mas el x y de la ficha
      #f
      )  
  )




(define (validarJugadaSalto pTablero pXOrigen pYOrigen pX pY)
  (
   if (equal? #t (validarJugada pTablero (+ pXOrigen pX) (+ pYOrigen pY) ));hay que cambiar pX y pY por la suma de la posicion mas el x y de la ficha
      (if (> pXOrigen 6);Cambie la logica si es la mitad del tablero
          (
           cond
            [(equal? pY -2);salto a la izq (2 -2)
             (if (not (validarJugada pTablero (+ pXOrigen 1) (- pYOrigen 1) )); revisamos si hay ficha para poder saltar lo invertimos con el not ;hay que cambiar 
                 #t ;cumplimos con todo
                 #f;si no cumplimos todo
                 )
             ]
            [
             (equal? pY -1); salto al centro (2, -1)
             (
              cond
               [(not (validarJugada pTablero (+ pXOrigen 1) (- pYOrigen 1) ))  #t ];salto por el lado izq, revisamos si hay ficha que saltar
               [(not (validarJugada pTablero (+ pXOrigen 1) pYOrigen )) #t];salto por la der,
               )  
             ]
            [(equal? pY 0);salto a la izq (2, 0)
             (if (not (validarJugada pTablero (+ pXOrigen 1) pYOrigen )); revisamos si hay ficha para poder saltar lo invertimos con el not
                 #t ;cumplimos con todo
                 #f;si no cumplimos todo
                 )
             ]
            )
          ;aqui empieza si no es mayor que 6 o sea la parte superior
          (
           cond
            [(equal? pY 0);salto a la izq (2 0)
             (if (not (validarJugada pTablero (+ pXOrigen 1) pYOrigen )); revisamos si hay ficha para poder saltar lo invertimos con el not ;hay que cambiar 
                 #t ;cumplimos con todo
                 #f;si no cumplimos todo
                 )
             ]
            [
             (equal? pY 1); salto al centro (2, 1)
             (
              cond
               [(not (validarJugada pTablero  (+ pXOrigen 1) pYOrigen ))  #t ];salto por el lado izq, revisamos si hay ficha que saltar
               [(not (validarJugada pTablero (+ pXOrigen 1) (+ pYOrigen 1) )) #t];salto por la der,
               )  
             ]
            [
             (equal? pY 2);salto a la derecha (2, 2)
             (if (not (validarJugada pTablero (+ pXOrigen 1) (+ pYOrigen 2) )); revisamos si hay ficha para poder saltar lo invertimos con el not
                 #t ;cumplimos con todo
                 #f;si no cumplimos todo
                 )
             ]
            ) 
          )
      #f ; si el espacio destino esta ocupado
      )
  )



(define (jugadaSalto pTablero pFicha pX pY )
  (
   define (jugadaSaltoAux pTableroAux pFichaAux pXOrigen pYOrigen pXAux pYAux listaAux cont)
    (
     cond
      [(equal? #f validarJugadaSalto pXOrigen pYOrigen  pXAux pYAux  ) listaAux]
      [(< (length listaJugadasSalto) cont); 
       (
        jugadaSaltoAux
        pTableroAux ;el tablero
        pFichaAux; la ficha
        (+ pXOrigen pXAux); el nuevo punto de origen 
        (+ pYOrigen pYAux); el nuevo punto de origen 
        (first(list-ref listaJugadasSalto cont));obtiene de la lista de movimientos Salto
        (second(list-ref listaJugadasSalto cont))
        (append-element listaAux (make-Jugada pTablero pFicha pX pY))
        (+ cont 1)
        
        
        )
       ]
      )
       
    )
  (
  for( [tupleList listaJugadasSalto]);cambiar a car cdr 
  (jugadaSaltoAux pTablero pFicha (ficha-x pFicha) (ficha-y pFicha) (first tupleList) (second tupleList) '() 0)
   )

  )


;(define (crearJugadas tablero pFicha x y); esta funcion deberia de crear todas las posibles jugadas 
;  (
;   define (crearJugadasAux tablero ficha listaJugadas)
;    (
;     if (equal? #f validarJugadaSalto)
;        
;     )
;   )
;
;)
