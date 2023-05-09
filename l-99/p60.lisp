(defun min-nodes (h)
  (cond 
    ((< h 0) 0)
    ((= h 0) 1)
    (t (+ 1 (min-nodes (- h 1)) (min-nodes (- h 2))))))

(assert (= 1 (min-nodes 0)))
(assert (= 2 (min-nodes 1)))
(assert (= 4 (min-nodes 2)))

(defun max-height (n &optional (height -1) (last-maximum 0) (maximum 1))
  (if (< n maximum)
    height
    (max-height n (1+ height) maximum (+ 1 last-maximum maximum))))

(assert (= 0 (max-height 1)))
(assert (= 1 (max-height 2)))
(assert (= 1 (max-height 3)))
(assert (= 2 (max-height 4)))

(load "p59.lisp")

(defun hbal-tree-nodes (n)
  (let ((result nil))
    (dotimes (h (1+ (max-height n)) result)
      (setf result (append (hbal-tree-aux n h) result)))))

(defun hbal-tree-aux (n h)
  (if (= n 0)
      (if (= h -1) '(()) '())
    (let ((a nil))
      (dotimes (i n a)
        (setf a (append (cart-process (hbal-tree-aux i (- h 2))
                                      (hbal-tree-aux (- n i 1) (- h 1)))
                        (cart-process (hbal-tree-aux i (- h 1))
                                      (hbal-tree-aux (- n i 1) (- h 1)))
                        (cart-process (hbal-tree-aux i (- h 1))
                                      (hbal-tree-aux (- n i 1) (- h 2)))
                        a))))))

(print (hbal-tree-nodes 5))
