(defun pack (l)
  (if (null l) nil
    (cons (first-consective l) (pack (rest-consective l)))))

(defun first-consective (l)
  (cond ((null l) nil)
        ((null (cdr l)) l)
        ((equal (car l) (cadr l)) (cons (car l) (first-consective (cdr l))))
        (t (list (car l)))))

(defun rest-consective (l)
  (cond ((null l) nil)
        ((null (cdr l)) nil)
        ((equal (car l) (cadr l)) (rest-consective (cdr l)))
        (t (cdr l))))

(print (pack '(a a a a b c c a a d e e e e)))
