(defun primep (n)
  (primep2 n 2 (truncate (sqrt n))))

(defun primep2 (n k end)
  (if (> k end)
      t 
      (if (= (mod n k) 0)
          nil
          (primep2 n (+ k 1) end))))

(print (primep 23))
(print (primep 39))
