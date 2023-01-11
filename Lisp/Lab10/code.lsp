;***************************** Определить функцию, единственным аргументом который 
;***************************** являлся бы список списков, объединяющую все списки в одноуровневый список
; -> Рекурсия по значению
(defun unionList(oldList)
  (cond 
    ((null oldList) NIL)
    ((append (car oldList) (unionList (cdr oldList))))
  )
)

; -> Рекурсия по аргументу (Не совсем то)
(defun unionList(oldList)
  (cond 
    ((null oldList) NIL)
    ((append (unionList (cdr oldList)) (car oldList)))
  )
)

; -> Рекурсия по значению
(defun unionList(oldList)
  (cond 
    ((null oldList) NIL)
    ((setq lis (append (car oldList) (unionList (cdr oldList)))))
    ((nreverse lis))
  )
)


; -> Проверка
(print (unionList '((a b c) (z x r) (v))))

(defun sublist (sub lst)
  (cond 
    (
      (not (null sub))
      (cond
        ((member (car sub) lst) (sublist (cdr sub) lst)) 
        (t NIL)
      )
    )
  (t t)) 
)