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
