(defun compare_priority (text)
	(if (or (string= text "ALTA") (string= text "MEDIA") (string= text "BAJA"))
		text
		nil
	)
)



(defun read_doc (document) 
	(let ((line (read-line document nil)))
		(if line 
			(progn 
				(print (compare_priority (subseq line 0 (position #\: line))))
				(write-line line) 
				(read_doc document)
			)
			(close document)
		)
	)
)

(read_doc (open "prueba.txt"))

; (print (position #\Space "1 234 5 6" :start 2))
; (print (subseq "123456" 0 1))
