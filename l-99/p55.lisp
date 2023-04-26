(defun cbal-tree-print (n)
  (print (cbal-tree n)))

(defun cbal-tree (n)
  (cond
    ((zerop n) '(()))
    ((oddp n) (append (cart-process (cbal-tree (/ (1- n) 2))
                                    (cbal-tree (/ (1- n) 2)))))
    ((evenp n) (append (cart-process (cbal-tree (/ (- n 2) 2))
                                     (cbal-tree (/ n 2)))
                       (cart-process (cbal-tree (/ n 2))
                                     (cbal-tree (/ (- n 2) 2)))))))

(defun cart-process (l1 l2) (process (cart-product l1 l2)))

(defun process (l)
  (mapcar #'(lambda (x) (cons 'x x)) l))

(defun cart-product (l1 l2)
  (let ((a nil))
    (dolist (t1 l1 a)
      (setf a (append (mapcar #'(lambda (x) (list t1 x)) l2) a)))))

(assert (equal '(()) (cbal-tree 0)))
(assert (equal '((x nil nil)) (cbal-tree 1)))
(assert (equal '((x nil (x nil nil)) (x (x nil nil) nil)) (cbal-tree 2)))

(cbal-tree-print 4)
