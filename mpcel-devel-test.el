;; mpcel-devel-test.el
;;
;; Dit is de mpcel.el sandbox
;;
;; Hier worden nieuwe routines gemaakt
;; en getest voordat ze toegevoegd worden
;; aan mpcel-devel.el versie












;========== KLAD ==========

;; *** 2009-10-28-21:24 Rene ***
;;test routine voor het kopieren van een
;;region naar een variabele
(defun copy-region-to-variable (start end variable)
  (interactive "r\nvCopy region to variable: ")
  (set variable (buffer-substring start end))
)

(let ((x 3))
  (+ x 4)
)

(let ((buffernaam (current-buffer)))
  (message "%s" buffernaam)
)

;;============================


;----------EOF mpcel-devel-test.el ----------

