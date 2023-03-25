(defun my-gcd (lhs rhs)
  (if (= (mod rhs lhs) 0) lhs
    (my-gcd (mod rhs lhs) lhs)))
(print (my-gcd 36 63))
