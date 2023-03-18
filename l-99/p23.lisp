(defun remove-at (l n)
  (if (= n 0) (cdr l)
      (cons (car l) (remove-at (cdr l) (1- n)))))

(setq *random-state* (make-random-state t))
(defun rnd-select (l n)
  (if (= n 0) nil
      (let ((rnd-pos (random (length l))))
           (cons (nth rnd-pos l) (rnd-select (remove-at l rnd-pos) (1- n))))))

(print (rnd-select '(a b c d e f g h i) 3))
