(defun internal (tree)
  (cond ((null tree) nil)
        ((and (null (second tree))
              (null (third tree))) ())
        (t (append (list (first tree)) (internal (second tree)) (internal (third tree))))))

(assert (equal nil (internal nil)))
(assert (equal '() (internal '(x nil nil))))
(assert (equal '(a) (internal '(a (b nil nil) (c nil nil)))))
(assert (equal '(a b) (internal '(a (b nil (c nil nil)) (d nil nil)))))
