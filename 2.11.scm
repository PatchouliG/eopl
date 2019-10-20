(define extend_env (lambda (var_list value_list env) 
        (cons
            (list var_list value_list)
            env
        )
))

(define apply_env (lambda (var env) 
(if (null? env)
    `not_match
    (let ((var_list (car (car env)))
          (value_list (cdr (car env)))
          (res (list_search var var_list 0))
          )
          (cond ((number? res) (list_get value_list res)
              (else (apply_env var (cdr env))
)))))))

(define (list_search var list n)
    (cond ((null? list) `())
        ((equal? (car list) var ) n)
        (list_search var list (+ n  1))
        )
    )

(define (list_get  list n )
    (cond ((null? list) `())
        ((= n 0) (car list))
        (else (list_get (cdr list) (- n 1)))))
    

