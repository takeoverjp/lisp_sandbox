(defun fm2val (fm)
  (cond ((numberp fm) fm)
        ((null (cdr fm)) (fm2val (car fm)))
        ((eql (cadr fm) '+)
          (+ (fm2val (car fm)) (fm2val (cddr fm))))
        ((eql (cadr fm) '-)
            (+ (fm2val (car fm))
               (fm2val (cons (- (fm2val (caddr fm)))
                                        (cdddr fm)))))
        (t (fm2val (cons (eval (list (cadr fm)
                                     (fm2val (car fm))
                                     (fm2val (caddr fm))))
                         (cdddr fm))))))

(print (fm2val '(1 + 3 * 4 - 3)))

(defun kippu (en)
  (let ((A1 (first en)) (A2 (second en))
        (A3 (third en)) (A4 (fourth en)))
  (dolist (e1 '(+ - * /))
    (dolist (e2 '(+ - * /))
      (dolist (e3 '(+ - * /))
        (and (= (fm2val (list A1 e1 A2 e2 A3 e3 A4)) 10)
             (print (list A1 e1 A2 e2 A3 e3 A4))))))))

(kippu '(1 3 4 3))

(print ((lambda (x) (* x x)) 5))

(defun nibun (f a b)
  (if (< (- b a) 0.0001)
      a
      (if (> (* (funcall f a) (funcall f (/ (+ a b) 2))) 0)
          (nibun f (/ (+ a b) 2) b)
          (nibun f a (/ (+ a b) 2)))))

(print (nibun (lambda (x) (- (* x x) x 2)) 0.0 5.0))
(print (mapcar (lambda (x) (* x x)) '(1 2 3 4 5)))
