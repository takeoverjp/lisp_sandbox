(defun gray-list (n)
  (if (= n 0)
      '(())
    (let ((prev (gray-list (1- n))))
      (append (add #\0 prev)
	      (add #\1 (reverse prev))))))

(defun add (digit word)
  (mapcar #'(lambda (x) (cons digit x)) word))

(print (gray-list 2))
