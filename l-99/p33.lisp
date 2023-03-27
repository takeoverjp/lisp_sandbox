(load "p32.lisp")
(defun coprime (lhs rhs)
  (eq (my-gcd lhs rhs) 1))

(print (coprime 35 64))
(print (coprime 35 65))
