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


(setq x (list 'ahO 'baka 'chombo))
(setq y x)
(setq z (list 'ahO 'baka 'chombo))

(print (eq nil nil))
; t
(print (eq '() nil))
; t
(print (eq 'A t))
; nil
(print (eq 1115 1115))
; t
(print (eq 201 (+ 190 11)))
; t
(print (eq 1 'one))
; nil
(print (eq x '(ahO baka chombo)))
; nil
(print (eq y x))
; T
; 新しくリストが作られるのは、cons/listを実行したときと、リストリテラル表記のときのみ
; setqではリストは作られない
(print (eq x z))
; nil
(print (eq (cdr x) (cdr y)))
; T
; 新しくリストが作られるのは、cons/listを実行したときと、リストリテラル表記のときのみ
; setq/cdrではリストは作られない
(print (eq (cdr x) (cdr z)))
; nil
(print (eq 3 '(+ 1 2)))
; nil
(print (eq (car x) (car z)))
; t
(print (eq (cadr y) 'baka))
; t
(print (eq (cdddr x) (cdddr z)))
; t