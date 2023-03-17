(defun range (start end)
  (if (> start end) nil
      (cons start (range (1+ start) end))))

(defun remove-at (l n)
  (if (= n 0) (cdr l)
      (cons (car l) (remove-at (cdr l) (1- n)))))

(setq *random-state* (make-random-state t))
(defun rnd-select (l n)
  (if (= (length l) n) l
      (rnd-select (remove-at l (random (length l))) n)))

(defun lotto-select (n m)
  (rnd-select (range 1 m) n))

(print (lotto-select 6 49))

