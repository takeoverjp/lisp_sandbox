(defun cart-product (l1 l2)
  (let ((a nil))
    (dolist (t1 l1 a)
      (setf a (append (mapcar #'(lambda (x) (list t1 x)) l2) a)))))

(assert (equal nil (cart-product nil nil)))
(assert (equal '((nil 2) (nil nil) (nil nil) (nil 2) (nil nil) (nil nil) (1 2) (1 nil) (1 nil)) (cart-product '(1 nil nil) '(2 nil nil))))

