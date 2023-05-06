(defun min-nodes (h)
  (cond 
    ((< h 0) 0)
    ((= h 0) 1)
    (t (+ 1 (min-nodes (- h 1)) (min-nodes (- h 2))))))

(assert (= 1 (min-nodes 0)))
(assert (= 2 (min-nodes 1)))
(assert (= 4 (min-nodes 2)))
