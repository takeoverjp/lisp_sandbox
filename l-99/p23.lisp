(defun remove-at (l n)
  (if (= n 0) (cdr l)
      (cons (car l) (remove-at (cdr l) (1- n)))))

(setq *random-state* (make-random-state t))
(defun rnd-select (l n)
  (if (= (length l) n) l
      (rnd-select (remove-at l (random (length l))) n)))

(print (rnd-select '(a b c d e f g h i) 3))
