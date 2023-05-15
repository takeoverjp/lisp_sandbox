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

(defun complete-binary-tree (n)
  (cbt-label n 1))

(defun cbt-label (n k)
  (cond
    ((= n 0) nil)
    ((= n 1) (list k nil nil))
    (t (let* ((p (floor (highest-2-power n)2))
              (left (if (= 2 (floor n p))
                        (+ p (mod n p))
                      (+ p (1- p)))))
         (list k
               (cbt-label left (* 2 k))
               (cbt-label (- n 1 left) (+ 1 (* 2 k))))))))

(assert (equal '(1 nil nil) (complete-binary-tree 1)))
(assert (equal '(1 (2 nil nil) nil) (complete-binary-tree 2)))
(assert (equal '(1 (2 nil nil) (3 nil nil)) (complete-binary-tree 3)))
(assert (equal '(1 (2 (4 nil nil) nil) (3 nil nil)) (complete-binary-tree 4)))
