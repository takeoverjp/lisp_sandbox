(defun my-last (l)
  (cond ((atom l) l)
        ((= (length l) 1) (car l))
        (t (my-last (cdr l)))))

(print (my-last '(a b c d)))
