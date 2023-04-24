(defun istree (tree)
  (if (null tree) t
    (if (not (= (length tree) 3)) nil 
      (and (atom (car tree)) (istree (second tree)) (istree (third tree))))))

(assert (istree '(a (b nil nil) nil)))
(assert (not (istree '(a (b nil nil)))))
