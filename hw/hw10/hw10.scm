(define (accumulate combiner start n term)
  (define (recursor x)
  (cond 
    ((= x n) (term x))
    (else (combiner (term x) (recursor (+ x 1))))      
    )  

  )
  (combiner start (recursor 1))
)

(define (accumulate-tail combiner start n term)
  
  (define (recursor x total)
    (cond 
      ((= x n) (combiner total (term x)))
      (else (recursor (+ x 1) (combiner total (term x))))      
      )  
    
  )
  (recursor 1 start)
)

(define (partial-sums stream)
  (define (recursor previous rest)
        
        (if (null? rest) nil
          (begin
          (define total (+ previous (car rest)))
          (cons-stream
            total
            (recursor total (cdr-stream rest))
            )
          )
        )
  )
  (recursor 0 stream)
)


(define (rle s)
    (define (recursor curr rest length)
        
        (if (null? rest) (cons-stream (list curr length) nil)
          (begin
          (define next (car rest))
          (cond
            ((= next curr) (recursor next (cdr-stream rest) (+ length 1)))
            (else (cons-stream
                    (list curr length)
                    (recursor next (cdr-stream rest) 1)
                    ))
            )
          )
        )
  )
  (if (null? s) '()
  (recursor (car s) (cdr-stream s) 1)
  )
)