(setq prices '(1 2 3 4 5))
(print (apply '+ prices))
(setq goods '((tissue . 98) (candy . 125) (cookie . 268) (zanmai . 95) (zanmai . 95) (chicken . 244)))
(print (car '(1 . 2)))
(print (apply '+ (mapcar #'(lambda (pair) (cdr pair)) goods)))
