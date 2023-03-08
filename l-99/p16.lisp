(defun drop (l n &optional (i 1))
  (cond ((null l) nil)
        ((zerop (mod i n)) (drop (cdr l) n (1+ i)))
        (t (append (list (car l)) (drop (cdr l) n (1+ i))))))

(print (drop '(a b c d e f g h i j k) 3))
