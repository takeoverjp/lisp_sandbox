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

(defun construct (l)
  (construct-rec (reverse l)))

(defun construct-rec (l)
  (if (null l) nil
    (bst-add (car l) (construct-rec (cdr l)))))

(assert (equal (construct '(3 2 5 7 1)) '(3 (2 (1 nil nil) nil) (5 nil (7 nil nil)))))

