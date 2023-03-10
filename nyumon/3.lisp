; A list (Association list)
(setq db '((elephant . 5200) (cat . 2) (lion . 300) (dog . 25)))
(print (assoc 'cat db))
(print (cdr (assoc 'lion db)))
(setq db2 (acons 'pig 100 db))
(print db2)
(print db)

; P list (Property list)
(setq db '(elephat 5200 cat 2 lion 300 dog 25))
(print (getf db 'cat))
(print (getf db 'lion))
(setf (getf db 'pig) 100)
(print db)
