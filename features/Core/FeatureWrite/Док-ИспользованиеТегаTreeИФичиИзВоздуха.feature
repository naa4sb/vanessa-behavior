﻿# encoding: utf-8
# language: ru

@IgnoreOnCIMainBuild
@DocumentationBuild
@tree

Функционал: Использование тэга tree и Фичи из воздуха
	Как Разработчик
	Я Хочу Иметь возможность писать feature-файлы с использованием иерархии шагов
	Чтобы работать с feature-файлом как с деревом

Контекст:
	Дано я добавляю в служебные файлы автоинструкции "Support\Instructions\Temp\ФичаПримерТэгTree.feature"
	Дано я убедился, что служебные файлы фичи удалены
	
Сценарий: Написание требований бизнес аналитиком и их детализация


	Когда Я открываю Visual Studio Code
	И Я разворачиваю активное окно на полный экран
	Допустим бизнес аналитик написал нам подобный feature файл
			И я пишу "@tree "
			И я пишу "Функционал: Создание документа прихода "
			И я пишу "Как оператор склада "
			И я пишу "Я хочу чтобы у меня был документ для отражения факта прихода товара на склад "
			И я пишу "Чтобы я мог изменить состояние учета "
			И я добавляю пустую строку
			И я пишу "Контекст: "
			И я пишу "	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий "
			И я перехожу к началу строчки
			И я добавляю пустую строку
			И я пишу 'Сценарий: Оформление прихода товара '
			И я пишу '	Когда я открываю журнал документов '
			И я пишу 'И я создаю новый документ '
			И я пишу 'И в шапке документа я указываю склад '
			И я пишу 'И в табличной части я указываю товары и их количество '
			И я пишу 'И я записываю документ '
			И я пишу 'И документ изменил состояние учета '
			И я сохраняю файл открытый в редакторе как "Support\Instructions\Temp\ФичаПримерТэгTree.feature"
			И я закрываю текстовый редактор
			
	И обратите внимание 'Обратите внимание. Для экономии времени на разработку, часть шагов фичи можно накликать мышкой.'		
	И обратите внимание 'Давайте сделаем это и постараемся сохранить читаемость фича файла. Для этого мы указали в тексте тэг tree.'		


	
	Накликаем функционал создания документа прихода
			Когда Я запускаю сеанс TestManager в служебной базе
			И Пауза 5
			И я разворачиваю активное окно на полный экран
			И Я запускаю Vanessa-Behavior интерактивно
			И я перехожу к закладке Работа с UI
			И я Начинаю запись поведения
			И обратите внимание 'При нажатии на эту кнопку открылся сеанс с ключом запуска /TestClient'		
			И я разворачиваю активное окно на полный экран
			И я Создаю новый документ прихода на склад
			И я выбираю склад "Основной"
			И я добавляю товар "Вентилятор Binatone"
			И я ввожу количество 10
			И я нажимаю на кнопку Провести и закрыть
			И я прижимаю активное окно вправо
			И заканчиваю запись поведения


	
	И обратите внимание 'Мы получили готовые шаги сценария с помощью мышки. Этот механизм называется: Фичи из воздуха.'
	Теперь добавим в наш feature файл полученные шаги.
			И я прижимаю активное окно вправо
			Когда я открываю текстовый редактор
			И я прижимаю активное окно влево
			#теперь у нас текстовый редактор слева а служебная база оказалась справа
			
			И я открываю в текстовом редакторе файл "Support\Instructions\Temp\ФичаПримерТэгTree.feature"
			
			И я выделяю 3 строки начиная с "В панели разделов" и вставляю их в текст фичи после "Когда я открываю журнал"
			И я выделяю 1 строки начиная с 'я нажимаю на кнопку "Создать"' и вставляю их в текст фичи после "И я создаю новый документ"
			И я выделяю 2 строки начиная с 'в поле "Склад"' и вставляю их в текст фичи после "я указываю склад"
			И я выделяю 6 строки начиная с 'я нажимаю на кнопку "Добавить"' и вставляю их в текст фичи после "я указываю товары"
			И я выделяю 1 строки начиная с 'Провести и закрыть' и вставляю их в текст фичи после "я записываю документ"
			
			И я сохраняю изменения в файле
			И я закрываю текстовый редактор
			


	#сейчас активно окно тестовой базы
	Теперь загрузим нашу фичу в Vanessa-Behavior и выполним её
			И Я разворачиваю активное окно на полный экран
			И Я загружаю один feature файл "Support\Instructions\Temp\ФичаПримерТэгTree.feature"
			И обратите внимание 'Обратите внимание. Часть шагов стала ветками дерева. Такие шаги выполнятся не будут.'		
			И я прижимаю активное окно влево
			И я выполняю сценарии и ожидаю их окончания в сеансе служебной базы
			И обратите внимание 'Таким образом нам осталось запрограммировать только последний шаг.'
			И обратите внимание 'Спасибо за внимание!'
	
			
	