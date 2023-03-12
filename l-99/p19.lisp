(defun split-list (l n)
  (list (split-up-to l n) (split-after l n)))

(defun split-up-to (l n)
  (if (zerop n) nil
      (cons (car l) (split-up-to (cdr l) (1- n)))))

(defun split-after (l n)
  (if (zerop n) l
      (split-after (cdr l) (1- n))))

(defun rotate (l n)
  (append (second (split-list l n)) (car (split-list l n))))

(print (rotate '(a b c d e f g h i j k) 3))
