(defun element-at (l i)
  (if (= i 1)
      (car l)
      (element-at (cdr l) (1- i))))

(print (element-at '(a b c d e) 3))
