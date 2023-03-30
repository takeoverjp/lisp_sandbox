(load "p36.lisp")

(defun phi (m)
  (phi2 (prime-factors-mult m)))

(defun phi2 (l)
  (if (null l) 1
    (* (* (expt (cadar l) (1- (caar l))) (1- (cadar l))) (phi2 (cdr l)))))

(print (prime-factors-mult 10))
(print (phi 10))
