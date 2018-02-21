;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname cond-starter2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (mag1 x)
  (if (< x 0)
      "negative"
      (if (= x 0)
          "zero1"
          "positive")))

;;Can be re-written as:
(define (mag2 x)
  (cond [(< x 0) "negative"]
        [(= x 0) "zero2"]
        [else    "positive"]))

(mag2 0)

;;Can be re-written as:
(define (mag3 x)
  (cond [false "negative"]
        [(= x 0) "zero3"]
        [else    "positive"]))

(mag3 0)

;;Can be re-written as:
(define (mag4 x)
  (cond [false "negative"]
        [(= x 0) "zero4"]
        [else    "positive"]))

(mag4 0)

;;Can be re-written as:
(define (mag5 x)
  (cond [false "negative"]
        [true "zero5"]
        [else    "positive"]))
(mag5 5)

;;Can be re-written as:
"zero"