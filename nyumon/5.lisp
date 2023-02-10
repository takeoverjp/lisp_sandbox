(defun fact (n)
  (if (eq n 0) 1
    (* n (fact (1- n)))))

(defun fact2 (n ans)
  (if (eq n 0) ans
    (fact2 (1- n) (* n ans))))

(print (fact 0))
(print (fact 5))
(print (fact2 0 1))
(print (fact2 5 1))

(defun mygcd (n m)
  (let ((r (mod n m)))
    (if (= r 0)
      m
      (mygcd m r))))

(print (mygcd 512 968))
(print (mygcd 968 512))

(defun rev (l)
  (if (= (length l) 0)
    l
    (append (rev (cdr l)) (list (car l)))))

(print (rev '(1 2 3 4 5)))

(defun fib (n)
  (cond ((= n 1) 1)
        ((= n 2) 1)
        (t (+ (fib (- n 1)) (fib (- n 2))))))

(time (fib 30))

(defun fib2 (n)
  (let ((a1 1) (a2 1) (f 1))
    (dotimes (e (- n 2) f)
      (setq f (+ a1 a2))
      (setq a2 a1)
      (setq a1 f))))

(time (fib2 30))


(defun qsort (lst)
  (if lst
    (let ((lst1)
          (lst2)
          (pivot (car lst)))
      (multiple-value-setq (lst1 lst2)
        (bunkatsu (cdr lst) pivot lst1 lst2))
      (append (qsort lst1)
        (cons pivot (qsort lst2))))))

(defun bunkatsu (lst pivot lst1 lst2)
  (if (null lst)
    (values-list (list lst1 lst2))
    (let ((a (car lst)))
      (if (< a pivot)
        (bunkatsu (cdr lst) pivot (cons a lst1) lst2)
        (bunkatsu (cdr lst) pivot lst1 (cons a lst2))))))

(print (qsort '(5 1 3 6 5 6 9 1 4)))

(defun myhanoi (n cur to tmp)
  (if (= n 1)
    (format t "disk ~A: ~A -> ~A~%" n cur to)
    (progn
      (myhanoi (1- n) cur tmp to)
      (format t "disk ~A : ~A -> ~A~%" n cur to)
      (myhanoi (1- n) tmp to cur))))
(myhanoi 5 'A 'B 'C)
