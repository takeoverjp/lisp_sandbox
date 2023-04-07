(defun table (a b e)
  (dolist (va '(t nil))
    (dolist (vb '(t nil))
      (format t "~S ~S ~S~%"
        va vb
        (eval-infix a va b vb e)))))

(defun eval-infix (a va b vb e)
  (cond
    ((eq e a) va)
    ((eq e b) vb)
    ((eq (car e) 'not) (not (eval-infix a va b vb (cadr e))))
    ((eq (cadr e) 'and) (and (eval-infix a va b vb (car e)) (eval-infix a va b vb (caddr e))))
    ((eq (cadr e) 'nand) (not (and (eval-infix a va b vb (car e)) (eval-infix a va b vb (caddr e)))))
    ((eq (cadr e) 'or) (or (eval-infix a va b vb (car e)) (eval-infix a va b vb (caddr e))))))

(table 'A 'B 'A)
(table 'A 'B 'B)
(table 'A 'B '(not B))
(table 'A 'B '(A and B))
(table 'A 'B '(A or B))

(table 'A 'B '(A and (A or (not B))))
(table 'A 'B '(A nand B))
