(defun my-remove-1 (x y)
  (cond ((null y) nil)
        ((eq x (car y)) (cdr y))
        (t (cons (car y) (my-remove-1 x (cdr y))))))

(defun my-remove (x y)
  (cond ((null y) nil)
        ((eq x (car y)) (my-remove x (cdr y)))
        (t (cons (car y) (my-remove x (cdr y))))))

(print (my-remove-1 2 '(1 1 2 2 3 3)))
(print (my-remove 2 '(1 1 2 2 3 3)))
