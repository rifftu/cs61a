; Lab 13: Final Review

; Q3
(define (compose-all funcs)
  (cond 
    ((null? funcs) (lambda (x) x))
;    ((null? cdr funcs) (lambda (x) ((car funcs) x)))
    
    (else (lambda (x) ((compose-all (cdr funcs)) ((car funcs) x))))
    )
)