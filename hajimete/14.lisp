(write (+ (read) (read)))


(defun foo (x &optional (y 2) (z (+ x y)) &rest r) (append (list x y z) r))

(print (foo 1 2 3 4 5 6))
(print (foo 1 2 3))
(print (foo 1 2))
(print (foo 1))

(let ((s (open "14.lisp" :direction :input)))
     (write (read s))
     (write (read s))
     (close s))
