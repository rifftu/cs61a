


(define-macro (def func bindings body)
    `(define ,func (lambda ,bindings ,body))
)

(define (iota n)
(define (add-iota lst m)

(if (> m n)
lst
(add-iota (append lst m) (+ m 1))
)

)

(add-iota '() 1)
)