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

(defun get10prime2 (count n result)
  (if (= count 10)
    result
    (if (primep n)
        (get10prime2 (1+ count) (1- n) (cons n result))
        (get10prime2 count (1- n) result))))

(print (get10prime2 0 10000 nil))
