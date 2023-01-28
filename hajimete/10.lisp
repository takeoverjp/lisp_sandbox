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

(defun fun-length (x)
  (cond ((null x) 0)
        (t (1+ (length (cdr x))))))

(defmacro if-null (nan dos1 dos2)
  `(cond ((null ,nan) ,dos1)
         (t ,dos2)))

(defun macro-length (x)
  (if-null x 0 (1+ (length (cdr x)))))

(print (fun-length '(1 2 3)))
(print (macro-length '(1 2 3)))

(defmacro my-pop (x) `(prog1 (car ,x) (setq ,x (cdr ,x))))
(defmacro my-push (y x) `(setq ,x (cons ,y ,x)))

(setq x (list 1 2 3))
(print (my-pop x))
(print x)
(my-push 1 x)
(print x)
