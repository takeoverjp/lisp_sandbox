(defun duplicate (l)
  (if (null l) nil
    (append (list (car l) (car l)) (duplicate (cdr l)))))

(print (duplicate '(a b c d e)))
