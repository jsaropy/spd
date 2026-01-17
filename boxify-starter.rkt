(require 2htdp/image)

;; boxify-starter.rkt

; 
; PROBLEM:
; 
; Use the How to Design Functions (HtDF) recipe to design a function that consumes an image, 
; and appears to put a box around it. Note that you can do this by creating an "outline" 
; rectangle that is bigger than the image, and then using overlay to put it on top of the image. 
; For example:
; 
; (boxify (ellipse 60 30 "solid" "red")) should produce .
; 
; Remember, when we say DESIGN, we mean follow the recipe.
; 
; Leave behind commented out versions of the stub and template.
; 


;Image -> Image
;given an image produce a box around the image
(check-expect (boxify (ellipse 60 30 "solid" "red"))
              (overlay (rectangle 70 40 "outline" "white")
                       (ellipse 60 30 "solid" "red")))
(check-expect (boxify (square 60 "solid" "red"))
              (overlay (rectangle 70 70 "outline" "white")
                       (square 60 "solid" "red")))
(check-expect (boxify (circle 60 "solid" "red"))
              (overlay (rectangle 130 130 "outline" "white")
                       (circle 60 "solid" "red")))

;(define (boxify img) (overlay (rectangle 0 0 "outline" "white")
                              ;(ellipse 0 0 "solid" "red"))) ;stub (drracket has black background thats why im using white)

;(define (boxify img)
;  (... img)) ;template

(define (boxify img)
  (overlay (rectangle (+ (image-width img) 10)
                      (+ (image-height img) 10)
                      "outline" "white")
           img))
