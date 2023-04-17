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
