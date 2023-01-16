(setq A nil)
(setq B '(87 58 90))
(setq C '(I B M))

(print (null t))
; nil
(print (null A))
; t
(print (null (null A)))
; nil
(print (cadr B))
; 58
(print (+ (car b) (caddr B)))
; 177
(print (cadr C))
(print (set (car C) (cdr B)))
; (58 90)
(print (atom C))
; nil
(print (atom (car I)))
; t
(print (atom (cdddr B)))
; t
(print (setq I (cdr I)))
; (90)
(print (null (cdr I)))
; t
; (atom (caar B))
; error

