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

(defun my-nreverse (x) (nrev2 x nil))
(defun nrev2 (x r)
  (cond ((null x) r)
        (t (prog1 (nrev2 (cdr x) x)
                  (rplacd x r)))))

(print (my-nreverse '(1 2 3 4 5)))
