
(defun eval-infix (e)
  (cond
    ((eq e nil) nil)
    ((eq e t) t)
    ((eq (first e) 'not) (not (eval-infix (second e))))
    ((eq (second e) 'and) (and (eval-infix (first e)) (eval-infix (third e))))))

(print (eval-infix t))
(print (eval-infix nil))
(print (eval-infix '(not t)))
(print (eval-infix '(not nil)))
(print (eval-infix '(t and t)))
(print (eval-infix '(t and nil)))
(print (eval-infix '(nil and t)))
(print (eval-infix '(nil and nil)))
