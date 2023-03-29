(load "p10.lisp")
(load "p35.lisp")

(defun prime-factors-mult (n)
  (encode (prime-factors n)))

(print (prime-factors-mult 315))
