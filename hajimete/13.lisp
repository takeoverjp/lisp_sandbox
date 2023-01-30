(defun my-eval (form)
  (cond
    ((or (null form) (numberp form) (stringp form)) form)
    ((symbolp form) (varable-value form))
    ((member (car form)
      '(quote cond setq prog progn prog1 prog2 go let let* if do do* defun defmacro function))
      (eval-special-form form))
    ((and (consp (car form))
          (eq (caar form) 'lambda))
     (apply (car form) (evlis (cdr form))))
    ((function-symbol-p (car form))
     (apply (symbol-function (car form))
            (evlis (cdr form))))
    ((macro-symbol-p (car form))
     (eval (apply (macro-function (car form)) (cdr form))))
    (t (error 'cannot-evaluate form))))

(defun evlis (args)
  (cond ((null args) nil)
        (t (cons (eval (car args)) (evlis (cdr args))))))

(defun eval-special-form (form)
  (cond ((eq (car form) 'quote) (cadr form))
        ((eq (car form) 'cond) (evcon (cdr form)))
        ((eq (car form) 'progn) (evprogn (cdr form)))))

(defun evcon (clauses)
  (cond
    ((null clauses) nil)
    ((eval (caar clauses))
     (evprogn (cdar clauses)))
    (t (evcon (cdr clauses)))))

(defun evprogn (forms)
  (cond
    ((null forms) nil)
    ((null (cdr forms)) (eval (car forms)))
    (t (eval (car forms)) (evprogn (cdr forms)))))

(defun function-symbol-p (s)
  (let ((fb (and (symbolp s) (symbol-function s))))
    (and fb (eq (car fb) 'lambda))))

(print (my-eval 1))
(print (my-eval nil))
(print (my-eval (quote (1 2 3))))
