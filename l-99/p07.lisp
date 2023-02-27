(defun flatten (l)
  (if (null l)
      nil
      (let ((elem (car l)) (rest (cdr l)))
        (if (listp elem)
            (append (flatten elem) (flatten rest))
            (append (list elem) (flatten rest))))))

(print (flatten '(a b (c d e) (f g (h i j)))))
