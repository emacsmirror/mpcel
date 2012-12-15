;; mpcel-devel-test.el
;;
;; Dit is de mpcel.el sandbox
;;
;; Hier worden nieuwe routines gemaakt
;; en getest voordat ze toegevoegd worden
;; aan mpcel-devel.el versie


(defun mpcel-playlist-view ()
"Shows available playlists"
  (interactive)
  (shell-command 
   "mpc lsplaylists"))

;; prints the playlist :
(defun mpcel-playlist-print ()
  "Prints mpd's current playlist"
  (interactive)
  (get-buffer-create "*mpcel playlist*") 
  (shell-command 
   "mpc --format \"[%artist%--[%album%--[%title%]]]|[%file%]\" playlist" "*mpcel playlist*")
  (with-current-buffer "*mpcel playlist*"
         (toggle-read-only))
)

(defun mpcel-library-list ()
"Shows all the files in the music library"
  (interactive)
 (get-buffer-create "*mpcel Music library")
 (shell-command "mpc listall" "*mpcel Music library"  "*mpcel Music library")
  (with-current-buffer "*mpcel Music library*"
         (toggle-read-only))
)

;;*** 2009-10-28-21:07 Rene ***
(defun mpcel-playlist-add-song-library
  (interactive)
)

;;*** 2009-11-09-19:27 Rene ***
(defun mpcel-library-search-track (pattern)
 (interactive "sEnter searchpattern:" pattern)
  ;; Use buffer with Music library
 ( if (string= (buffer-name) "*mpcel Music library") 
	  (message "Library buffer select") 
      (mpcel-library-list))
)

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

