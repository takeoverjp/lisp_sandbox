(load "p31.lisp")

(defun goldbach (n)
  (goldbach2 2 (- n 2)))

(defun goldbach2 (m n)
  (if (> m n) nil
    (if (and (is-prime m) (is-prime n)) (list m n)
      (goldbach2 (1+ m) (1- n)))))

(print (goldbach 28))
