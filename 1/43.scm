(define (repeated f n)
	(lambda (x)
		(if (= n 0)
			x
			((repeated f (- n 1)) (f x))
		)
	)
)
