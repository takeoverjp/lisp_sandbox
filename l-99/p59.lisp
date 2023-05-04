(defun cart-product (l1 l2)
  (let ((a nil))
    (dolist (t1 l1 a)
      (setf a (append (mapcar #'(lambda (x) (list t1 x)) l2) a)))))

(assert (equal nil (cart-product nil nil)))
(assert (equal '((nil nil)) (cart-product '(nil) '(nil))))
(assert (equal '(((nil nil) nil)) (cart-product '((nil nil)) '(nil))))
(assert (equal '(((nil nil) (nil nil))) (cart-product '((nil nil)) '((nil nil)))))
(assert (equal '((nil (nil nil)) ((nil nil) (nil nil))) (cart-product '((nil nil) nil) '((nil nil)))))

(defun add-first-x (l)
  (mapcar #'(lambda (x) (cons 'x x)) l))

(assert (equal nil (add-first-x (cart-product nil nil))))
(assert (equal '((x nil nil)) (add-first-x (cart-product '(nil) '(nil)))))
(assert (equal '((x (nil nil) nil)) (add-first-x (cart-product '((nil nil)) '(nil)))))
(assert (equal '((x (nil nil) (nil nil))) (add-first-x (cart-product '((nil nil)) '((nil nil))))))
(assert (equal '((x nil (nil nil)) (x (nil nil) (nil nil))) (add-first-x (cart-product '((nil nil) nil) '((nil nil))))))

(defun cart-process (l1 l2)
  (add-first-x (cart-product l1 l2)))

(defun hbal-tree (h)
  (cond
    ((<= h -2) nil)
    ((= h -1) '(nil))
    (t (append
         (cart-process (hbal-tree (- h 2)) (hbal-tree (- h 1)))
         (cart-process (hbal-tree (- h 1)) (hbal-tree (- h 1)))
         (cart-process (hbal-tree (- h 1)) (hbal-tree (- h 2)))))))

(defun hbal-tree-print (h)
  (print (hbal-tree h)))

(hbal-tree-print 2)
