(load "p55.lisp")
(load "p56.lisp")

(defun sym-cbal-trees-print (n)
  (sym-cbal-trees-print-impl (cbal-tree n)))

(defun sym-cbal-trees-print-impl (l)
  (if (null l) nil
    (if (symmetric (car l)) (print (car l))
      (sym-cbal-trees-print-impl (cdr l)))))

(sym-cbal-trees-print 5)
