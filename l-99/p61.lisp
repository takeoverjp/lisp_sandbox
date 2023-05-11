(defun count-leaves (tree)
  (cond ((null tree) 0)
        ((and (null (second tree))
              (null (third tree))) 1)
        (t (+ (count-leaves (second tree)) (count-leaves (third tree))))))

(assert (= 0 (count-leaves nil)))
(assert (= 1 (count-leaves '(x nil nil))))
(assert (= 2 (count-leaves '(x (x nil nil) (x nil nil)))))
(assert (= 2 (count-leaves '(x (x nil (x nil nil)) (x nil nil)))))
