#lang scheme
(define revert_pair (lambda (pair) (cons
    (car (cdr pair)) (cons (car pair) `())
)))

(revert_pair `(1 2))

(define revert (lambda (lst) 
    (if (null? lst)
        lst
        (cons (revert_pair (car lst))   (revert (cdr lst)))
)))
(require racket/trace)
(trace revert)

 (revert `((1 2) (3 4)))