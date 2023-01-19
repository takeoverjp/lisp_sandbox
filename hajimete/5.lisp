(defun last-elem (l)
  (cond ((null (cdr l)) (car l))
        (t (last-elem (cdr l)))))

(print (last-elem '(1 2 3 4)))
(print (last-elem '(aho boke chombo)))
