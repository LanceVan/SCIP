(define tolerance 0.00005)

(define (cont-frac n d k)
	(define (close-enough? v1 v2)
		(< (abs (- v1 v2)) tolerance)
	)

	(define (cont-frac-iter n d k result)
  		(let ((next ((lambda (x) (/ n (+ d x))) result)))
			(if (close-enough? next result)
				k
				(cont-frac-iter n d (+ k 1) next)
			)
		)
	)

 	(cont-frac-iter n d 1 0.0)
)
