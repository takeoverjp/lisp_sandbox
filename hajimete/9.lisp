(defun remove-1 (x y)
(cond ((null y) nil)
      ((eq x (car y)) (cdr y))
      (t (cons (car y) (remove-1 x (cdr y))))))

(print (remove-1 2 '(1 1 2 3 3)))