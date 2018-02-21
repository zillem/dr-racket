;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |HtDF quiz|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;HtDF Design Quiz

(require 2htdp/image)

;# Problem
;; Design a function that consumes two images and produces  
;; true if the first image is larger in width, height or both, than the second.

;; Image Image -> Boolean                            ;signature
;; Return true if img1 is larger than img2     ;purpose
;;(define (img>? img1 img2) true)             ;stub
(check-expect (img>?
               (rectangle 30 40 "solid" "orange")
               (rectangle 30 40 "solid" "orange"))
              false) ;;size is equal
(check-expect (img>?
               (rectangle 40 40 "solid" "orange")
               (rectangle 30 40 "solid" "orange"))
              true) ;only width is larger
(check-expect (img>?
               (rectangle 10 50 "solid" "orange")
               (rectangle 30 40 "solid" "orange"))
              true) ;only height is larger
(check-expect (img>?
               (rectangle 40 50 "solid" "orange")
               (rectangle 30 40 "solid" "orange"))
              true) ;width and height are larger

;(define (img>? img1 img2) ;template
;  (...img1 img2))

(define (img>? img1 img2)
  (or 
       (> (image-width img1)
          (image-width img2)
          )
       (> (image-height img1)
          (image-height img2)
          )
       )
  )
 
