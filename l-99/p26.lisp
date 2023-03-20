(defun combination (k l)
  (cond
    ((= k 0) '(nil))
    ((> k (length l)) nil)
    (t (append (mapcar #'(lambda (x) (cons (car l) x)) (combination (1- k) (cdr l)))
            (combination k (cdr l))))))

(print (combination 3 '(a b c d e f)))
