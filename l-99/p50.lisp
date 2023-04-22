(defun huffman (l) ())
(print (huffman '((a 45) (b 13) (c 12) (d 16) (e 9) (f 5))))

(defun huf-encode (l)
  (list (first l) (second l) nil nil))

(assert (equal '(a 45 nil nil) (huf-encode '(a 45))))
