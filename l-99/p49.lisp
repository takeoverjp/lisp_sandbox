(defun list-to-string (l)
  (if (null l) ""
    (format nil "~c~A" (car l) (list-to-string (cdr l)))))

(defun gray-list (n)
  (if (= n 0)
      '(())
    (let ((prev (gray-list (1- n))))
      (append (add #\0 prev)
	      (add #\1 (reverse prev))))))

(defun add (digit word)
  (mapcar #'(lambda (x) (cons digit x)) word))

(assert (equal (gray-list 0) '(nil)))
(assert (equal (gray-list 1) '((#\0) (#\1))))
(assert (equal (gray-list 2) '((#\0 #\0) (#\0 #\1) (#\1 #\1) (#\1 #\0))))
(assert (equal (gray-list 3) '((#\0 #\0 #\0) (#\0 #\0 #\1) (#\0 #\1 #\1) (#\0 #\1 #\0) (#\1 #\1 #\0) (#\1 #\1 #\1) (#\1 #\0 #\1) (#\1 #\0 #\0))))

(assert (equal "001" (list-to-string '(#\0 #\0 #\1))))
(assert (equal "111" (list-to-string '(#\1 #\1 #\1))))
