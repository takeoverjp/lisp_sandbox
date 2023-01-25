(defun my-subst (new old tree)
  (cond ((eq old tree) new)
    ((atom tree) tree)
    (t (cons (my-subst new old (car tree))
             (my-subst new old (cdr tree))))))

(print (my-subst 'kk nil '(a b (b a) nil a)))
