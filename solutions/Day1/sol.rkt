(define/contract (check-record s)
  (-> string? boolean?)
  (helper 0 0 (string->list s)))

(define (helper A L lst)
  (cond
    [(empty? lst) (and (< A 2) (< L 3))]
    [(or (>= A 2) (>= L 3)) false] 
    [(equal? (first lst) #\A) (helper (+ A 1) 0 (rest lst))] 
    [(equal? (first lst) #\L) (helper A (+ L 1) (rest lst))]
    [(equal? (first lst) #\P) (helper A 0 (rest lst))]))