(defun my-count (l)
  (if (null l)
      0
      (1+ (my-count (cdr l)))))

(print (my-count '(A B C D E)))
