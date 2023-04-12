
(defun eval-infix (e)
  (cond
    ((eq e nil) nil)
    ((eq e t) t)
    ((eq (first e) 'not) (not (eval-infix (second e))))))

(print (eval-infix t))
(print (eval-infix nil))
(print (eval-infix '(not t)))
(print (eval-infix '(not nil)))
