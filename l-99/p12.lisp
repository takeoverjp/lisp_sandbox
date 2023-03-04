(defun encode (l &optional (n 1))
  (cond
    ((null l) nil)
    ((null (cdr l)) (list (list n (car l))))
    ((equal (car l) (cadr l)) (encode (cdr l) (1+ n)))
    ((eq n 1) (cons (car l) (encode (cdr l) 1)))
    (t (cons (list n (car l)) (encode (cdr l) 1)))))

(defun decode (l)
  (cond
    ((null l) nil)
    ((atom (car l)) (append (list (car l)) (decode (cdr l))))
    (t (append (repeat (first (car l)) (second (car l)))
               (decode (cdr l))))))

(defun repeat (n elem)
  (if (zerop n)
      nil
      (cons elem (repeat (1- n) elem))))

(print (decode (encode '(a a a a b c c a a d e e e e))))
