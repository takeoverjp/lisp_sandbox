(defun eliminate-consecutive (l &optional last)
  (cond ((null l) nil)
        ((eq (car l) last) (eliminate-consecutive (cdr l) (car l)))
        (t (append (list (car l)) (eliminate-consecutive (cdr l) (car l))))))
(print (eliminate-consecutive '(a a a b c d e e a b c)))
