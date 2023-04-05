(defun table (a b e)
  (dolist (va '(t nil))
    (dolist (vb '(t nil))
      (format t "~S ~S ~S~%"
        va vb
        (eval (subst vb b (subst va a e)))))))

(table 'A 'B '(and A (or A B)))
