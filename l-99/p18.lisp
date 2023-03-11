(defun extract (l start end)
  (cond ((= end 0) nil)
        ((= start 1) (cons (car l) (extract (cdr l) 1 (1- end))))
        (t (extract (cdr l) (1- start) (1- end)))))

(print (extract '(a b c d e f g h i j) 3 7))
