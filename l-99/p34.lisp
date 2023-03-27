(load "p33.lisp")

(defun toitent-phi (m)
  (toitent-phi2 m (1- m)))

(defun toitent-phi2 (m n)
  (cond 
    ((<= n 1) 1)
    ((coprime m n) (1+ (toitent-phi2 m (1- n))))
    (t (toitent-phi2 m (1- n)))))

(print (toitent-phi 11))
(print (toitent-phi 10))
(print (toitent-phi 1))
