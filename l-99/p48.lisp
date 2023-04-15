
(defun eval-infix (e)
  (cond
    ((eq e nil) nil)
    ((eq e t) t)
    ((eq (first e) 'not) (not (eval-infix (second e))))
    ((eq (second e) 'and) (and (eval-infix (first e)) (eval-infix (third e))))
    ((eq (second e) 'or) (or (eval-infix (first e)) (eval-infix (third e))))
    ((eq (second e) 'equ) (eq (eval-infix (first e)) (eval-infix (third e))))
    ((eq (second e) 'xor) (not (eq (eval-infix (first e)) (eval-infix (third e)))))
    (t 'invalid)
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

(assert (eq t (eval-infix '(t equ t))))
(assert (eq nil (eval-infix '(t equ nil))))
(assert (eq nil (eval-infix '(nil equ t))))
(assert (eq t (eval-infix '(nil equ nil))))



(defun table (vars expr)
  (print-flat (eval-expr () vars expr)))

(defun print-flat (l)
  (dolist (line l)
    (dolist (v (car line))
      (format t "~S " v))
    (format t "~S~%" (cadr line))))

(defun eval-expr (fixed vars expr)
  "eval expr with partially fixed vars"
  (if (null vars)
    ; all vars are fixed
    (list (list fixed (eval-infix expr)))
    (append (eval-expr
              (append fixed '(t))
              (cdr vars) (subst t (car vars) expr))
	          (eval-expr
              (append fixed '(nil))
              (cdr vars) (subst nil (car vars) expr)))))

(table '(A B C) '((A and (B or C)) equ ((A and B) or (A and C))))
