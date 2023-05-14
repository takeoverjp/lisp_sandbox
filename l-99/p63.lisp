(defun highest-2-power (n)
  (if (<= n 1)
    1
    
    (* 2 (highest-2-power (floor n 2)))))

(assert (= 1 (highest-2-power 0)))
(assert (= 1 (highest-2-power 1)))
(assert (= 2 (highest-2-power 2)))
(assert (= 2 (highest-2-power 3)))
(assert (= 4 (highest-2-power 4)))
(assert (= 4 (highest-2-power 5)))
(assert (= 4 (highest-2-power 6)))
(assert (= 4 (highest-2-power 7)))
(assert (= 8 (highest-2-power 8)))
