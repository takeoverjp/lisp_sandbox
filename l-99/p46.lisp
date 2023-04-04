(defun table (a b e)
  (dolist (va '(t nil))
    (dolist (vb '(t nil))
      (format t "~S ~S ~%" va vb))))

(table 'A 'B '(and A (or A B)))
