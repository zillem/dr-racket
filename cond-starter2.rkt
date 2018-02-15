;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname cond-starter2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(mag -1)(define (mag1 x)
  (if (< x 0)
      "negative"
      (if (= x 0)
          "zero"
          "positive")))

Can be re-written as:

(define (mag2 x)
  (cond [(< x 0) "negative"]
        [(= x 0) "zero"]
        [else    "positive"]))

(mag2 0)


(define (mag2 x)
  (cond [(< 0 0) "negative"]
        [(= 0 0) "zero"]
        [else    "positive"]))

(define (mag2 x)
  (cond false
        [(= 0 0) "zero"]
        [else    "positive"]))

(define (mag2 x)
  (cond false
        true
         [else    "positive"]))

"zero"