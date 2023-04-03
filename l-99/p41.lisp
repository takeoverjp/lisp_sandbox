(load "p40.lisp")

(defun even-numbers-between (lower-bound upper-bound)
  (labels ((helper (n acc)
             (cond ((> n upper-bound) acc)
                   ((evenp n) (helper (1+ n) (cons n acc)))
                   (t (helper (1+ n) acc)))))
    (nreverse (helper lower-bound nil))))

(defun goldbach-between (m n)
  (mapcar #'goldbach (even-numbers-between m n)))

(defun goldbach-list (m n lower)
  (remove-if (lambda (x)
               (or (null x) (< (car x) lower)))
             (goldbach-between m n)))

(print (goldbach-between 9 20))
(print (goldbach-list 1 2000 50))
