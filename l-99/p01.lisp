(defun my-last (l)
  (cond ((atom l) nil)
        ((= (length l) 1) l)
        (t (my-last (cdr l)))))

(print (my-last '(a b c d)))
