(defun replicate (l n)
  (if (null l) nil
    (append (repeat n (car l)) (replicate (cdr l) n))))

(defun repeat (n elem)
  (if (zerop n)
      nil
      (cons elem (repeat (1- n) elem))))

(print (replicate '(a b c d e) 3))
