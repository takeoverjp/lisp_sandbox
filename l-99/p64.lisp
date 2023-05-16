(defun size (tree)
  (if (null tree)
    0
    (+ 1 (size (second tree)) (size (third tree)))))

(assert (= 0 (size nil)))
(assert (= 1 (size '(x nil nil))))
(assert (= 3 (size '(x (l nil nil) (r nil nil)))))
