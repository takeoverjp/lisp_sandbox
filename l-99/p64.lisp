(defun size (tree)
  (if (null tree)
    0
    (+ 1 (size (second tree)) (size (third tree)))))

(assert (= 0 (size nil)))
(assert (= 1 (size '(x nil nil))))
(assert (= 3 (size '(x (l nil nil) (r nil nil)))))

(defun move (x y tree)
  (if (null tree) nil
    (list
      (first tree)
      (+ x (second tree))
      (+ y (third tree))
      (move x y (fourth tree))
      (move x y (fifth tree)))))

(assert (equal '(w 2 4 nil nil) (move 1 2 '(w 1 2 nil nil))))
