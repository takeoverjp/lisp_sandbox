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

(defun layout-binary-tree (tree)
  (if (null tree)
    nil
    (let ((lsize (size (second tree))))
      (list
        (first tree)
        (1+ lsize)
        1
        (move 0 1 (layout-binary-tree (second tree)))
        (move 0 1 (move (1+ lsize) 0 (layout-binary-tree (third tree))))))))

(assert (equal nil (layout-binary-tree '())))
(assert (equal '(x 1 1 nil nil) (layout-binary-tree '(x nil nil))))
(assert (equal '(x 2 1 (l 1 2 nil nil) (r 3 2 nil nil)) (layout-binary-tree '(x (l nil nil) (r nil nil)))))
