(load "p32.lisp")
(defun coprimise (lhs rhs)
  (eq (my-gcd lhs rhs) 1))

(print (coprimise 35 64))
(print (coprimise 35 65))
