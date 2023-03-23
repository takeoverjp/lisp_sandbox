(defun is-prime (n)
  (and (> n 1) (not (can-divide n (floor n 2)))))

(defun can-divide (n m)
  (if (<= m 1) nil
      (if (= 0 (mod n m)) t (can-divide n (1- m)))))

(print (is-prime 17))
(print (is-prime 18))
(print (is-prime 47))
(print (is-prime 524287))
