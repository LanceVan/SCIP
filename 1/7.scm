(define (sqrt-iter guess x)
	(if (good-enough? guess x)
  		guess
  		(sqrt-iter (improve guess x) x)
  	)
)

(define (good-enough? guess x)
 	(< (abs (- x (square guess))) 0.001)
)

(define (improve guess x)
 	(/ (+ (/ x (square y)) (* 2 y)) 3)
)
