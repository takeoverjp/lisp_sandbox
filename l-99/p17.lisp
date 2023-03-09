(defun split-list (l n)
  (if (> n 0) (append (list (car l)) (split-list (cdr l) (1- n)))
      (list l)))

(print (split-list '(a b c d e f g h i j k) 3))
