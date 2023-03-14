(defun insert-at (elem l i)
  (if (= i 1) (cons elem l)
      (cons (car l) (insert-at elem (cdr l) (1- i)))))

(print (insert-at 'alfa '(a b c d) 2))
