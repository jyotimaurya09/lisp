; This Program compares two lists and tells if they have similar pattern 
; T is True 
;NIL is False

(defun match (pattern1 pattern2)
    (cond 
        (
            (or (atom pattern1) (atom pattern2))
            (match-atom pattern1 pattern2)
        )
        (t (and (match (car pattern1) (car pattern2))
                (match (cdr pattern1) (cdr pattern2))
            )
        )
    )
)

(defun match-atom (pattern1 pattern2)
    (or (equal pattern1 pattern2)
        (variable-p pattern1)
        (variable-p pattern2)
    )
)

(defun variable-p (x) (equal x '?))

(write (match '(likes bill wine) '(likes bill wine)))
(terpri)
(write (match '(likes bill wine) '(likes bill milk)))
(terpri)
(write (match '(likes bill ?) '(likes bill wine)))
(terpri)
(write (match '(likes ? wine) '(likes bill ?)))
(terpri)
(write (match '(likes bill ?) '(likes bill (prolog lisp smalltalk))))
(terpri)
(write (match '(likes ?) '(likes bill wine)))