(defun my-subst (new old tree)
  (cond ((eq old tree) new)
    ((atom tree) tree)
    (t (cons (my-subst new old (car tree))
             (my-subst new old (cdr tree))))))

(defun my-subst2 (new old tree)
  (cond ((eq old tree) new)
        ((atom tree) tree)
        (t (let ((a (subst new old (car tree)))
                 (d (subst new old (cdr tree))))
             (cond ((and (eq a (car tree))
                         (eq d (cdr tree)))
                   tree)
                   (t (cons a d)))))))

(print (my-subst 'kk nil '(a b (b a) nil a)))
(print (my-subst2 'kk nil '(a b (b a) nil a)))
