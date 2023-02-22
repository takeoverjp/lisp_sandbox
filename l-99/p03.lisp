(defun element-at (l i)
  (nth (- i 1) l))

(print (element-at '(a b c d e) 3))
