(defun fact (n)
  (if (eq n 0) 1
    (* n (fact (1- n)))))

(print (fact 0))
(print (fact 5))
