(defun bst-add (item tree)
  (cond
    ((null tree) (list item nil nil))
    ((< item (first tree)) (list (first tree)
                                 (bst-add item (second tree))
                                 (third tree)))
                                 
    ((> item (first tree)) (list (first tree)
                                 (second tree)
                                 (bst-add item (third tree))))
    (t tree)))

(assert (equal '(1 nil nil) (bst-add 1 nil)))
(assert (equal '(2 (1 nil nil) nil) (bst-add 1 '(2 nil nil))))
(assert (equal '(2 nil (3 nil nil)) (bst-add 3 '(2 nil nil))))
