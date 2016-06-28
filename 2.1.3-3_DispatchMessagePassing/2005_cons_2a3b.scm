(define (cons23 n)
  (let* ((a (get-a n))
        (b (if (> a 0)
             (get-b (/ n a))
             (get-b n))))
    (cons a b)))
(define (get-a n)
  (define (a-iter n a)
    (if (= 0 (remainder n 2))
      (a-iter (/ n 2) (+ a 1))
      a))
  (a-iter n 0))
(define (get-b n)
  (define (b-iter n b)
    (if (< (/ n 3) 1)
      b
      (b-iter (/ n 3) (+ b 1))))
  (b-iter n 0))