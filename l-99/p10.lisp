(defun encode (l &optional (n 1))
  (cond
    ((null l) nil)
    ((null (cdr l)) (list (list n (car l))))
    ((equal (car l) (cadr l)) (encode (cdr l) (1+ n)))
    (t (cons (list n (car l)) (encode (cdr l) 1)))))

(print (encode '(a a a a b c c a a d e e e e)))
