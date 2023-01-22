(defun my-equal (lhs rhs)
  (cond ((eq lhs rhs) t)
        ((atom lhs) (eq lhs rhs))
        ((atom rhs) nil)
        (t (and (eq (car lhs) (car rhs)) (my-equal (cdr lhs) (cdr rhs))))))

(print (my-equal '(1 2 3) '(1 2 3)))
(print (my-equal '(1 2 3) '(1 2 4)))
(print (my-equal 1 '(1 2 4)))
(print (my-equal '(1 2 4) 1))

(defun my-member (l target)
  (cond ((null l) nil)
        ((eq (car l) target) target)
        (t (my-member (cdr l) target))))
(print (my-member '(1 2 3) 1))
(print (my-member '() 1))
(print (my-member '(1 2 3) 4))

