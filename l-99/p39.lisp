(load "p31.lisp")

(defun prime-between (m n)
  (if (= m n) nil
    (if (is-prime m) (cons m (prime-between (1+ m) n))
      (prime-between (1+ m) n))))

(print (prime-between 6 22))
