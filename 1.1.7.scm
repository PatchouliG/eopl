#lang scheme
(define warp (lambda (a) (cons a `())))

(define warp_list (lambda (list) 
(if (null? list)
    list
    (cons (warp (car list)) (warp_list (cdr list)))
)))

(warp_list `())
(warp_list `(1 b (3 3 4)))