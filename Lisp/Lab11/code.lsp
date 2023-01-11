;-------------------- Задание 1 ---------------------------;
;--- Привести пример функционалос apply и funcall пользуясь заданиями по пунктам 1 и 2
;--- на лабораторную работу 2. 

; --> Пункт 1
; apply 
(apply '* '(3.14 2 2))
; funcall
(funcall '* 3.14 2 2)

;-------------------- Задание 2 ---------------------------;
; --> Пункт 1
; apply 
(apply (function (lambda (R) (* 3.14 R R))) '(2))
; funcall
(funcall (function (lambda (R) (* 3.14 R R))) 2)

; --> Пункт 2
; apply
(apply (defun areaCircle(R) (* 3.14 R R)) '(2)) 
; funcall
(funcall (defun areaCircle(R) (* 3.14 R R)) 2)

;-------------------- Задание 3 ---------------------------;
; --> Пункт 1
((lambda (fn R) (funcall fn 3.14 R R)) '* 2)

; --> Пункт 2


;-------------------- Задание 4 ---------------------------;
; --> mapcar
(mapcar 'cons '(1 2 3) '(a b c))
(mapcar '+ '(1 2) '(3 4) '(5 6))

; --> maplist
(maplist 'reverse '(a b c d))
(maplist 'cdr '(a b c (z g)))

; --> mapcon
(mapcon 'list '(a b c d))
(mapcon 'reverse '(a b c d))

; --> mapcan
(mapcan 'list '(a b c d))
(mapcan 'reverse '(a b c d))