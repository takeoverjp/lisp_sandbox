(defun range (start end)
  (if (> start end) nil
      (cons start (range (1+ start) end))))

(print (range 4 9))
