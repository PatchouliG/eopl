; (symbol? `a)
; (null? `())


; (cond (`#f `not_match)
    ; (#f `match)
    ; (#t 'yes))
(define (handle_s_list new old slist)
(if (null? slist)
    slist
    (cons (handle_s_exp new old (car slist))  
        (handle_s_list new old (cdr slist))))
    )

(define (handle_s_exp new old s_exp)
    (if (symbol? s_exp)
        (if (equal? old s_exp)
            new 
            s_exp )
        (handle_s_list new old s_exp)))