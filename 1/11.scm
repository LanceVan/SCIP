(define (f1 n)
	(if (< n 4)
		n
  		(+ (f1 (- n 1)) (f1 (- n 2)) (f1 (- n 3)))
	)
)

(define (f2 n)
 	(f-iter 0 0 1 1 n)
)

(define (f-iter a b c i n)
 	(if (= i n)
		c
   		(if (< i 3)
			(f-iter b c (+ i 1) (+ i 1) n)
   			(f-iter b c (+ a b c) (+ i 1) n)
   		)
	)
)
