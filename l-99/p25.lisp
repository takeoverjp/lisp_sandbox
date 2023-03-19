(load "p23.lisp")

(defun rnd-permu (l)
  (rnd-select l (length l)))

(print (rnd-permu '(a b c d e f g h i)))
