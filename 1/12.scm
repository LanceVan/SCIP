(define (pascal-triangle i j)
 	(if (or (= i 1) (= j 1) (= i j))
   		1
   		(+ (pascal-triangle (- i 1) j) (pascal-triangle (- i 1) (- j 1)))
   	)
)
