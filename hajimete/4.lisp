(print (cons 'A nil))
; -> (A)

(print (list nil))
; -> (())

(print (list 'A nil))
; -> (A ())

(print (cons (cons 'A nil) (cons 'B nil)))
; -> ((A) B)

(print (list (list 1) (list 2) (list 3)))
; -> ((1) (2) (3))

(print (cons 'head (list 'body 'tail)))
; -> (head body tail)
