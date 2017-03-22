#lang typed/racket ;/no-check

(define a (current-seconds))

(: collatzChain (-> Integer (Listof Integer)))
(define (collatzChain n)
  (cond
    [(= n 1) (list 1)]
    [else (collatzIter (list n))]))
    
(: collatzIter (-> (Listof Integer) (Listof Integer)))
(define (collatzIter l)
  (cond
    [(= 1 (first l)) l]
    [(even? (first l))
     (collatzIter (cons (quotient (first l) 2) l))]
    [else
     (collatzIter (cons (+ 1 (* 3 (first l))) l))]))

(: collatzLength (-> (Listof Integer) (List Integer Integer)))
(define (collatzLength l)
  (list (last l) (length l)))

(define collatzChainList : (Listof (Listof Integer))
  (map collatzChain (range 1 500000)))

(define collatzLengths
  (map collatzLength collatzChainList))

(foldr (λ ([x : (Listof Integer)] [y : (Listof Integer)])
;(foldr (λ (x y)
         (if (> (second x) (second y)) x y))
         (list 0 0)
         collatzLengths)

(define b (current-seconds))
(- b a)