#lang scheme
(define handle_s_exp (lambda (a b s_exp) 
(if (symbol? s_exp )
        (cond ((equal? a s_exp) b)
            ((equal? b s_exp) a)
             (else s_exp))
         s_exp
    )
))

(define handle_s_list (lambda (a b s_list)
    (if (null? s_list)
    s_list
    (cons (handle_s_exp a b (car s_list)) (handle_s_list a  b (cdr s_list))))
)) 

(handle_s_exp 'a 'b 'a)
(handle_s_exp 'a 'b '(a b ))
(handle_s_list 'a 'b '((a c) (b d) b b))
