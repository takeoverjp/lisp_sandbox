(defun encode-direct (l)
  (if (null l) nil
    (add-item (car l) (encode-direct (cdr l)))))

(defun add-item (item code)
  (if (null code)
      (list item)
    (append (add-to-run item (car code))
            (cdr code))))

(defun add-to-run (item run)
  (if (listp run)
    (if (equal item (second run))
      (list (cons (1+ (car run)) (cdr run)))
      (list item run))
      (if (equal item run)
          (list (list 2 item))
        (list item run))))

(print (encode-direct '(a a a a b c c a a d e e e e)))
