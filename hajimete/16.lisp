(defun tarai (x y z)
  (cond ((<= x y) y)
        (t (tarai (tarai (1- x) y z)
                  (tarai (1- y) z x)
                  (tarai (1- z) x y)))))
(format t "tarai: ~A~%" (tarai 100000000000 110000000000 120000000000))

(loop (princ  "> ") (write (eval (read))) (terpri))
