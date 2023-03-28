(defun prime-factors (n)
  (labels ((factors (n i)
              (cond ((<= n 1) (list))
                    ((zerop (mod n i)) (cons i (factors (/ n i) i)))
                    (t (factors n (1+ i))))))
    (factors n 2)))

(print (prime-factors 84))
(print (prime-factors 1234567890))
