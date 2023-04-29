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

(print (bst-add 1 nil))
(print (bst-add 1 '(2 nil nil)))
(print (bst-add 3 '(2 nil nil)))
