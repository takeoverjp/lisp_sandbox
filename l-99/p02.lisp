(defun my-but-last (l)
  (cond ((= (length l) 2) l)
        ((< (length l) 2) nil)
        (t (my-but-last (cdr l)))))

(print (my-but-last '(a b c d)))
