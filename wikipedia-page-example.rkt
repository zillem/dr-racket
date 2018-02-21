;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname wikipedia-page-example) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;#lang racket
(require 2htdp/image)

(let sierpinski ([n 8])
  (if (zero? n)
      (trianle 2 'solid 'red)
      (let ([t sierpinski (- n 1)]))
        (freeze (above t (beside t t )))))
  