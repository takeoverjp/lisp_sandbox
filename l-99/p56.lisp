(defun symmetric (tree)
  (or (null tree) (equal-tree (second tree) (revert (third tree)))))

(defun revert (tree)
  (if (null tree) ()
    (list (first tree) (revert (third tree)) (revert (second tree)))))

(defun equal-tree (t1 t2)
  (cond
    ((null t1) (eq t1 t2))
    ((null t2) nil)
    (t (and (equal-tree (second t1) (second t2))
         (equal-tree (third t1) (second t2))))))

(assert (not (symmetric '(a (b nil nil) nil))))
(assert (symmetric '(a (b nil nil) (b nil nil))))
