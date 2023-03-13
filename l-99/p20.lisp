(defun remove-at (l n)
  (if (= n 0) (cdr l)
      (cons (car l) (remove-at (cdr l) (1- n)))))

(print (remove-at '(a b c d) 2))
