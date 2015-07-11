(define (fib-iter a b p q count)
	(if (= count 0)
  		b
  		(if (= 1 (remainder count 2))
			(fib-iter
				(+ (* b q) (* a q) (* a p ))
				(+ (* b p) (* a q))
				p
				q
				(- count 1)
			)
	  		(fib-iter
	  			a
	  			b
	  			(+ (square p) (square q))
	  			(+ (* 2 p q) (square q))
	  			(/ count 2)
	  		)
			
		)
  	)
)
