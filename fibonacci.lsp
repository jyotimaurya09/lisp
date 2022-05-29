; Function to calculate fibonacci number
(defun fibonacci (n)
    (cond
        (                                     
             
            (<= n 2)                          
            1
        )
        (t                                    
            (+  
                (fibonacci (- n 1))           
                (fibonacci (- n 2))
            )
        )
    )
)

; Calling fibonacci function
(write(fibonacci 1 ))
(terpri)
(write(fibonacci 2 ))
(terpri)
(write(fibonacci 3 ))
(terpri)
(write(fibonacci 4 ))
(terpri)
(write(fibonacci 5 ))
(terpri)
(write(fibonacci 6 ))
(terpri)
(write(fibonacci 7 ))