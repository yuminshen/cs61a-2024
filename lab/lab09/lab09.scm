(define (over-or-under num1 num2) 
    (cond ((< num1 num2) -1)
          ((= num1 num2) 0)
          ((> num1 num2) 1)
        ))

(define (make-adder num) 
    (lambda (x) (+ x num)))

(define (composed f g) 
    (lambda (x) (f (g x))))

(define (repeat f n) 
    (lambda (x) 
        (f (if (= n 1) x ((repeat f (- n 1)) x)))))

(define (square x) (* x x))

((repeat square 2) 5)

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b) 
    (if (= 0 (modulo (max a b) (min a b)))
        (min a b)
        (gcd (max a b) (modulo (max a b) (min a b)))))
