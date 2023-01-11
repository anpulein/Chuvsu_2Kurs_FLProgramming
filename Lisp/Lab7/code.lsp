; Создание структуры
(setq family '(
	(father("Trifonov" "Sergey" "Vladimirovich" 39))
	(mother("Galkina" "Natalya" "Vladimirovna" 36))
	(brother("Galkin" "Dmitriy" "Sergeevich" 20))
	(sister_1("Galkina" "Victoria" "Sergeevna" 9))
	(sister_2("Trifonova" "Milana" "Valentinovna" 1))	
	)
)

; Отделение головы от списка
(car family)
; Отделение хвоста из списка
(cdr family)
; Добавление элемента в список
(cons
 '((friend("Ivanov Ivan Ivanovich 21")))
 family
)

;--------------------------------- Предикаты
; Возвращает T, если аргумент - целое число 
(write (integerp 1))
(write (integerp "one"))

; Возвращает T, если аргумент - нечетное число
(write (oddp 2))
(write (oddp 1))

; Возвращает T, если список пуст
(write (null family))
(write (lst))
