
(defun eval-infix (e)
  (cond
    ((eq e nil) nil)
    ((eq e t) t)
    ((eq (first e) 'not) (not (eval-infix (second e))))
    ((eq (second e) 'and) (and (eval-infix (first e)) (eval-infix (third e))))
    ((eq (second e) 'or) (or (eval-infix (first e)) (eval-infix (third e))))
    ((eq (second e) 'xor) (not (eq (eval-infix (first e)) (eval-infix (third e)))))
    ))

(assert (eval-infix t))
(assert (not (eval-infix nil)))
(assert (not (eval-infix '(not t))))
(assert (eval-infix '(not nil)))

(assert (eq t (eval-infix '(t and t))))
(assert (eq nil (eval-infix '(t and nil))))
(assert (eq nil (eval-infix '(nil and t))))
(assert (eq nil (eval-infix '(nil and nil))))

(assert (eq t (eval-infix '(t or t))))
(assert (eq t (eval-infix '(t or nil))))
(assert (eq t (eval-infix '(nil or t))))
(assert (eq nil (eval-infix '(nil or nil))))

(assert (eq nil (eval-infix '(t xor t))))
(assert (eq t (eval-infix '(t xor nil))))
(assert (eq t (eval-infix '(nil xor t))))
(assert (eq nil (eval-infix '(nil xor nil))))

(format t "OK~%")
