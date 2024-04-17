#!/bin/bash

echo "Сегодня я перемещу тебя в 19 век, по мотивам сказки "Алиса в стране чудес".Ты научишься основам работы с командной строкой и поможешь героям этой сказки, пройдя всего 3 этапа."

sleep 8
for i in {5..1}; do
	echo "Приготовься $i"
	sleep 1
done
	echo " "
	echo "ЭТАП 1. Свадьба Алисы"	
	echo ""Все ждут, что я соглашусь, ты ведь все же Лорд.""
	echo " "
	echo "Алиса не хочет этой свадьбы и под предлогом все обдумать убегает за кроликом, используя утилиту adduser тебе нужно создать 3 пользователя: Alice, Rabbit, Lord. Создавай пользователей последовательно!"
	read first_task_first
	if [[ "$first_task_first" = "adduser Alice" ]]; then
		echo "Ты успешно создал пользователя Алиса"
		adduser Alice
	else
		echo "Ты допустил ошибку, осталось 2 попытки"
        read first_task_first
        if [[ "$first_task_first" = "adduser Alice" ]]; then
                echo "Ты успешно создал пользователя Алиса"
                adduser Alice
        else
                echo "Ты допустил ошибку, осталась 1 попытка"
        read first_task_first
        if [[ "$first_task_first" = "adduser Alice" ]]; then
                echo "Ты успешно создал пользователя Алиса"
                adduser Alice
        else
                echo "К сожалению ты не справился с этим этапом, теперь Алиса не попадет в страну чудес, набирайся знаний и возвращайся!"
		exit 1
        fi
	fi
	fi
	read first_task_second
	if [[ "$first_task_second" = "adduser Rabbit" ]]; then
		echo "Ты успешно создал пользователя Кролик"
		adduser Rabbit
   	else
                echo "Ты допустили ошибку, осталось 2 попытки"
        read first_task_second
        if [[ "$first_task_second" = "adduser Rabbit" ]]; then
                echo "Ты успешно создал пользователя Кролик"
                adduser Rabbit
        else
                echo "Ты допустил ошибку, осталась 1 попытка"
        read first_task_second
        if [[ "$first_task_second" = "adduser Rabbit" ]]; then
                echo "Ты успешно создал пользователя Кролик"
                adduser Rabbit
        else
                echo "К сожалению ты не справился с этим этапом, теперь Алиса не попадет в страну чудес, набирайся знаний и возвращайся!"
		userdel -r Alice
                exit 1
        fi
	fi
	fi
	read first_task_third
	if [[ "$first_task_third" = "adduser Lord" ]]; then
		echo "Ты успешно создал пользователя Лорд"
		adduser Lord
   	else
                echo "Ты допустил ошибку, осталось 2 попытки"
		read first_task_third
		if [[ "$first_task_third" = "adduser Lord" ]]; then
                	echo "Ты успешно создал пользователя Лорд"
                	adduser Lord
		else 
			echo "Ты допустил ошибку, осталась 1 попытки"
			                read first_task_third
                if [[ "$first_task_third" = "adduser Lord" ]]; then
                        echo "Ты успешно создали пользователя Лорд"
                        adduser Lord
                else
                echo "К сожалению ты не справился с этим этапом, теперь Алиса не попадет в страну чудес, набирайся знаний и возвращайся!"
                userdel -r Alice
		userdel -r Rabbit
                exit 1
        fi
        fi
        fi
	echo "Алиса убегает от Лорда к Кролику, создай для Алисы и Кролика отдельную группу, назови ее friends, используй утилиту groupadd"
	read first_task_fourth
	if [[ "$first_task_fourth" = "groupadd friends" ]]; then
                echo "Ты успешно создал группу друзья"
                groupadd friends
        else
                echo "Ты допустил ошибку, осталось 2 попытки"
                read first_task_fourth
	if [[ "$first_task_fourth" = "groupadd friends" ]]; then
                echo "Ты успешно создал группу друзья"
                groupadd friends
        else
                echo "Ты допустил ошибку, осталась 1 попытка"
                read first_task_fourth
	if [[ "$first_task_fourth" = "groupadd friends" ]]; then
                echo "Ты успешно создал группу друзья"
                groupadd friends
        else
                echo "К сожалению ты не справился с этим этапом, теперь Алиса не попадет в страну чудес, набирайся знаний и возвращайся!"
                userdel -r Alice
                userdel -r Rabbit
		userdel -r Lord
		exit 1
	fi
	fi
	fi
	echo "Теперь осталось добавить Алису и Кролика в группу друзья используй утилиту usermod, не забывай про ключи -aG. Ключ a нужен для того, чтобы не удалять пользователя из прошлых групп в которых он состоял. Ключ G указывает на группу к которой нужно добавить пользователя. В Linux можно написать команды последовательно, они разделяются ; , команда1 ; команда2..... ; командаn. Добавь сначала Алису, потом Кролика, используя разделение ; ,до и после разделения поставь пробелы!"
	read first_task_fith
	if [[ "$first_task_fith" = "usermod -aG friends Alice ; usermod -aG friends Rabbit" ]]; then
                echo "Ты успешно добавил в одну группу Алису и Кролика"
        usermod -aG friends Alice ; usermod -aG friends Rabbit
        else
                echo "Ты допустил ошибку, осталось 2 попытки"
        read first_task_fith
        if [[ "$first_task_fith" = "usermod -aG friends Alice ; usermod -aG friends Rabbit" ]]; then
                echo "Ты успешно добавил в одну группу Алису и Кролика"
        usermod -aG friends Alice ; usermod -aG friends Rabbit
        else
                echo "Ты допустил ошибку, осталась 1 попытка"
       read first_task_fith
        if [[ "$first_task_fith" = "usermod -aG friends Alice ; usermod -aG friends Rabbit" ]]; then
                echo "Ты успешно добавил в одну группу Алису и Кролика"
        usermod -aG friends Alice ; usermod -aG friends Rabbit
        else
               echo "К сожалению ты не справился с этим этапом, теперь Алиса не попадет в страну чудес, набирайся знаний и возвращайся!"
                userdel -r Alice
                userdel -r Rabbit
                userdel -r Lord
		groupdel friends
		exit 1
	fi
	fi
	fi
		echo "Ты справился! Успешно создал пользователей для главных героев нашего эпизода и подружил Алису с кроликом. Подготовься к следующему этапу!"

sleep 8
for i in {5..1}; do
        echo "Приготовься $i"
        sleep 1
done
echo " "
echo "ЭТАП 2. Погоня за кроликом"
	echo " "
	echo "Алиса бежит за кроликом, хоть в сказке ее не догоняют, нам все равно нужно будет защитить Алису от Лорда. Представим, что кроличья нора это папка в которой они будут прятаться"
	echo " "
	echo "Используя утилиту mkdir тебе нужно создать папку с названием hole"
	read second_task_first
	if [[ "$second_task_first" = "mkdir hole" ]]; then
                echo "Ты успешно создал 'нору'"
        mkdir hole
        else
                echo "Ты допустил ошибку, осталась 1 попытка"
        read second_task_first
        if [[ "$second_task_first" = "mkdir hole" ]]; then
                echo "Ты успешно создал 'нору'"
        mkdir hole
        else
               echo "К сожалению ты не справился с этим этапом, теперь Алиса не попадет в страну чудес, набирайся знаний и возвращайся!"
                gpasswd -d Alice friends
		gpasswd -d Rabbit friends
	        userdel -r Alice
                userdel -r Rabbit
                userdel -r Lord
                groupdel friends
                exit 1
	fi
	fi
	echo "Для того,чтобы Алиса и Кролик встретились в норе и смогли немного пообщаться, нужно создать для них текстовый документ используя утилиту touch с названием write.txt . Тебе нужно в одну строку написать 3 команды, сначала используя утилиту cd перейти в каталог hole, потом создать файл, перейти на 1 директорию вверх используя cd .."
	read second_task_second
       if [[ "$second_task_second" = "cd hole ; touch write.txt ; cd .." ]]; then
                echo "Ты успешно создал файл для диалога Алисы с Кроликом"
        cd hole ; touch write.txt ; cd ..
        else
                echo "Ты допустил ошибку, осталась 1 попытка"
       read second_task_second
       if [[ "$second_task_second" = "cd hole ; touch write.txt ; cd .." ]]; then
                echo "Ты успешно создал файл для диалога Алисы с Кроликом"
        cd hole ; touch write.txt ; cd ..
        else
              echo "К сожалению ты не справился с этим этапом, теперь Алиса не пообщается с Кроликом, набирайся знаний и возвращайся!"
 		rm -rf hole
	        gpasswd -d Alice friends
                gpasswd -d Rabbit friends
                userdel -r Alice
                userdel -r Rabbit
                userdel -r Lord
                groupdel friends
                exit 1
       fi
       fi
		echo "Мы уверенны, что Алиса не особо хочет общаться с Лордом,но скрыть от него нору явно не получится."
		echo " "
		echo "В Linux утилита chmod нужна для того, чтобы разграничивать доступ к файлам между пользователями. По стандарту файлы в линукс создаются с правами 0777 - umask, в нашем случае umask также по стандарту равен 0022, это значит, что файлы создаются с правами 755 (rwx - для владельца (создателя), rw - для группы создателя и остальных пользователей u (user) - владелец файла, g (group) - группа владельца файла, o (others) - остальные пользователи."
		echo " "
		echo "Для начала задай права для Лорда для папки hole, помни о том, что он только видит нору, а значит может в нее заглянуть, но он явно в нее не полезет. Используй символьный способ, Лорд относится к категории 'остальные пользователи'"
		read second_task_third
       if [[ "$second_task_third" = "chmod o-w hole" ]]; then
                echo "Теперь Лорд может лишь заглянуть в нору, но никак не помешать общению Алисы с Кроликом"
        chmod o-w hole
        else
                echo "Ты допустил ошибку, осталась 1 попытка"
       read second_task_third
       if [[ "$second_task_third" = "chmod o-w hole" ]]; then
                echo "Теперь Лорд может лишь заглянуть в нору, но никак не помешать общению Алисы с Кроликом"
        chmod o-w hole
        else
              echo "К сожалению ты не справился с этим этапом, теперь Лорд не даст Алисе пообщаться с кроликом. Набирайся знаний и возвращайся!"
                rm -rf hole
                gpasswd -d Alice friends
                gpasswd -d Rabbit friends
                userdel -r Alice
                userdel -r Rabbit
                userdel -r Lord
                groupdel friends
                exit 1
	fi
       fi
       echo "А вдруг Лорд все таки решиться залезть в нору, или к примеру он ее раскопает?"
       echo " "
       echo "Тебе нужно снять с него любые права на текстовый файл write.txt - числовым способом. read(чтение)=4, write(запись)=2, execute(выполнение)=1, Помни, что в числовом способе нужно не забыть также указать права для владельца и группы владельца. Не забудь перейти в директорию где находится файл, а после выдачи прав вернуться назад. Нужно написать 3 команды разделив их ; , перед и после разделениями должны стоять пробелы"
       read second_task_fourth
      if [[ "$second_task_fourth" = "cd hole ; chmod 750 write.txt ; cd .." ]]; then
                echo "Теперь Лорд точно не помешает общению Алисы с Кроликом"
        cd hole ; chmod 750 write.txt ; cd ..
        else
                echo "Ты допустил ошибку, осталась 1 попытка"
       read second_task_fourth
       if [[ "$second_task_fourth" = "cd hole ; chmod 750 write.txt ; cd .." ]]; then
                echo "Теперь Лорд точно не помешает общению Алисы с Кроликом"
        cd hole ; chmod 750 write.txt ; cd ..
        else
              echo "К сожалению ты не справился с этим этапом, теперь Лорд не даст Алисе пообщаться с кроликом. Набирайся знаний и возвращайся!"
                rm -rf hole
                gpasswd -d Alice friends
                gpasswd -d Rabbit friends
                userdel -r Alice
                userdel -r Rabbit
                userdel -r Lord
                groupdel friends
		exit 1
       fi
      fi
               echo "Ты справился! Теперь когда Алиса догонит Кролика она сможет с ним поговорить и им никто не помешает. Подготовься к следующему этапу!"
sleep 8
for i in {5..1}; do
        echo "Приготовься $i"
        sleep 1
done
	echo " "
	echo "ЭТАП 3. Кроличья нора"
	echo " "
	echo "Насколько глубоко Алиса падает в кроличью нору? А насколько глубоко готов упать ты? Говорят, чтобы взлететь еще выше, нужно оттолкнуться от самого дна. На этом этапе у тебя не будет права на ошибку." 
	echo " "
	echo "Алиса нашла компьютер в кроличьей норе, операционная система  - РЕД, хоть там и очень много графических инструментов, Алиса сначала открыла терминал, она пишет команды которые только сможет найти в старых книжках рядом с компьютером. Твоя задача - глядя на вывод команды полностью ее повторить. Помни, ты никак не можешь ошибиться, ведь если ты ошибешься Алиса никак не сможет связаться с кроликом, а уж темболее найти Страну чудес!"
	echo " "
	echo "0/10. Первая команда:"
	id
	read first_command
	if [[ "$first_command" = "id" ]]; then
		echo "Это верный ответ!"
	else 
		echo "Ошибка! Набирайся знаний и возвращайся!"
		rm -rf hole
                gpasswd -d Alice friends
                gpasswd -d Rabbit friends
                userdel -r Alice
                userdel -r Rabbit
                userdel -r Lord
                groupdel friends
                exit 1
	fi
        echo " "
        echo "1/15. Вторая команда:"
        uname -a
	read second_command
        if [[ "$second_command" = "uname -a" ]]; then
                echo "Это верный ответ!"
        else 
                echo "Ошибка! Набирайся знаний и возвращайся!"
		rm -rf hole
                gpasswd -d Alice friends
                gpasswd -d Rabbit friends
                userdel -r Alice
                userdel -r Rabbit
                userdel -r Lord
                groupdel friends
                exit 1
        fi
	        echo " "
        echo "2/15. Третья команда:"
        pwd
        read third_command
        if [[ "$third_command" = "pwd" ]]; then
                echo "Это верный ответ!"
        else
                echo "Ошибка! Набирайся знаний и возвращайся!"
		rm -rf hole
                gpasswd -d Alice friends
                gpasswd -d Rabbit friends
                userdel -r Alice
                userdel -r Rabbit
                userdel -r Lord
                groupdel friends
                exit 1
        fi
	        echo " "
        echo "3/15. Четвёртая команда:"
        lsblk
        read fourth_command
        if [[ "$fourth_command" = "lsblk" ]]; then
                echo "Это верный ответ!"
        else
                echo "Ошибка! Набирайся знаний и возвращайся!"
		rm -rf hole
                gpasswd -d Alice friends
                gpasswd -d Rabbit friends
                userdel -r Alice
                userdel -r Rabbit
                userdel -r Lord
                groupdel friends
                exit 1
        fi
	        echo " "
        echo "4/15. Пятая команда:"
        date
        read fith_command
        if [[ "$fith_command" = "date" ]]; then
                echo "Это верный ответ!"
        else
                echo "Ошибка! Набирайся знаний и возвращайся!"
		rm -rf hole
                gpasswd -d Alice friends
                gpasswd -d Rabbit friends
                userdel -r Alice
                userdel -r Rabbit
                userdel -r Lord
                groupdel friends
                exit 1
        fi
        echo " "
        echo "5/15. Шестая команда:"
        du -h
        read sixth_command
        if [[ "$sixth_command" = "du -h" ]]; then
                echo "Это верный ответ!"
        else 
                echo "Ошибка! Набирайся знаний и возвращайся!"
		rm -rf hole
                gpasswd -d Alice friends
                gpasswd -d Rabbit friends
                userdel -r Alice
                userdel -r Rabbit
                userdel -r Lord
                groupdel friends
                exit 1
        fi
        echo " "
        echo "6/15. Седьмая команда:"
        free
        read seventh_command
        if [[ "$seventh_command" = "free" ]]; then
                echo "Это верный ответ!"
        else 
                echo "Ошибка! Набирайся знаний и возвращайся!"
		rm -rf hole
                gpasswd -d Alice friends
                gpasswd -d Rabbit friends
                userdel -r Alice
                userdel -r Rabbit
                userdel -r Lord
                groupdel friends
                exit 1
        fi
        echo " "
        echo "7/15. Восьмая команда:"
        lsmod
        read eight_command
        if [[ "$eight_command" = "lsmod" ]]; then
                echo "Это верный ответ!"
        else 
                echo "Ошибка! Набирайся знаний и возвращайся!"
		rm -rf hole
                gpasswd -d Alice friends
                gpasswd -d Rabbit friends
                userdel -r Alice
                userdel -r Rabbit
                userdel -r Lord
                groupdel friends
                exit 1
        fi
        echo " "
        echo "8/15. Девятая команда:"
        ps aux
        read nine_command
        if [[ "$nine_command" = "ps aux" ]]; then
                echo "Это верный ответ!"
        else 
                echo "Ошибка! Набирайся знаний и возвращайся!"
		rm -rf hole
                gpasswd -d Alice friends
                gpasswd -d Rabbit friends
                userdel -r Alice
                userdel -r Rabbit
                userdel -r Lord
                groupdel friends
                exit 1
        fi
        echo " "
        echo "9/15. Десятая команда:"
        lsusb
        read ten_command
        if [[ "$ten_command" = "lsusb" ]]; then
                echo "Это верный ответ!"
        else 
                echo "Ошибка! Набирайся знаний и возвращайся!"
		rm -rf hole
                gpasswd -d Alice friends
                gpasswd -d Rabbit friends
                userdel -r Alice
                userdel -r Rabbit
                userdel -r Lord
                groupdel friends
                exit 1
        fi
	        echo " "
        echo "10/15. Одиннадцатая команда:"
        journalctl --disk-usage
        read a_command
        if [[ "$a_command" = "journalctl --disk-usage" ]]; then
                echo "Это верный ответ!"
        else
                echo "Ошибка! Набирайся знаний и возвращайся!"
                rm -rf hole
                gpasswd -d Alice friends
                gpasswd -d Rabbit friends
                userdel -r Alice
                userdel -r Rabbit
                userdel -r Lord
                groupdel friends
                exit 1
        fi
        echo " "
        echo "11/15. Двенадцатая команда:"
        ps
        read b_command
        if [[ "$b_command" = "ps" ]]; then
                echo "Это верный ответ!"
        else
                echo "Ошибка! Набирайся знаний и возвращайся!"
                rm -rf hole
                gpasswd -d Alice friends
                gpasswd -d Rabbit friends
                userdel -r Alice
                userdel -r Rabbit
                userdel -r Lord
                groupdel friends
                exit 1
        fi
        echo " "
        echo "12/15. Тринадцатая команда:"
        blkid
        read d_command
        if [[ "$d_command" = "blkid" ]]; then
                echo "Это верный ответ!"
        else
                echo "Ошибка! Набирайся знаний и возвращайся!"
                rm -rf hole
                gpasswd -d Alice friends
                gpasswd -d Rabbit friends
                userdel -r Alice
                userdel -r Rabbit
                userdel -r Lord
                groupdel friends
                exit 1
        fi
        echo " "
        echo "13/15. Четырнадцатая команда:"
        cat /etc/fstab
        read e_command
        if [[ "$e_command" = "cat /etc/fstab" ]]; then
                echo "Это верный ответ!"
        else
                echo "Ошибка! Набирайся знаний и возвращайся!"
                rm -rf hole
                gpasswd -d Alice friends
                gpasswd -d Rabbit friends
                userdel -r Alice
                userdel -r Rabbit
                userdel -r Lord
                groupdel friends
                exit 1
        fi
        echo " "
        echo "14/15. Пятнадцатая команда:"
        cat /etc/passwd
        read f_command
        if [[ "$f_command" = "cat /etc/passwd" ]]; then
                echo "Это верный ответ!"
        else
                echo "Ошибка! Набирайся знаний и возвращайся!"
                rm -rf hole
                gpasswd -d Alice friends
                gpasswd -d Rabbit friends
                userdel -r Alice
                userdel -r Rabbit
                userdel -r Lord
                groupdel friends
                exit 1
        fi

echo "15/15. Ты смог полностью повторить все команды введенные Алисой! Подготовься к заключающему этапу игры!"
                rm -rf hole
                gpasswd -d Alice friends
                gpasswd -d Rabbit friends
                userdel -r Alice
                userdel -r Rabbit
                userdel -r Lord
                groupdel friends
sleep 8
for i in {5..1}; do
        echo "Приготовься $i"
        sleep 1
done
        echo " "
        echo "ЭТАП 4. Волшебный мир"
        echo " "
        echo "Спустя 2 месяца упорного изучения командной строки, Алиса так и не смогла наладить соединение с Кроликом, она была настолько увлечена, что даже не заметила небольшой проход в странное место." 
	echo " "
	echo "Сначала тебе нужно сохранить все команды которая писала Алиса в файл bash_history, чтобы Алиса всегда могла вернуться и вспомнить все чему научилась. Используй соответствующую команду с нужным ключом."
	      read fourth_task_first
      if [[ "$fourth_task_first" = "history -a" ]]; then
                echo "Ты успешно сохранил историю команд в файл bash_history"
        history -a
        else
                echo "Ты допустил ошибку, осталась 1 попытка"
       read fourth_task_first
       if [[ "$fourth_task_first" = "history -a" ]]; then
                echo "Ты успешно сохранил историю команд в файл bash_history"
        history -a
        else
              echo "К сожалению ты не справился с этим этапом!"
       fi
      fi
	      echo " "
	      echo "Алиса никак не может пройти в волшебный мир, проход слишком маленький, так как Алиса это героиня нашей сказки, то мы можем изменить ее размер, используя алгоритмы сжатия, помни, что каждый алгоритм сжатия применяется в зависимости от ситуации и что конкретно нужно сжать, но как же узнать какой подойдет именно нам? Давай проведем эксперимент и ответим на этот вопрос!"
	      echo " "
	      echo "У тебя есть файл под названием Alice, сжимай его всеми следующими методами сжатия по порядку: gzip, bzip2, zip, 7z. Не забудь написать соответствующую команду при каждом сжатии, чтобы знать сколько времени происходит сжатие. Не перепутай расширения итоговых архивов."
             read fourth_task_second
      if [[ "$fourth_task_second" = "time tar -cvzf Alice.tar.gz Alice" ]]; then
                echo " "
        time tar -cvzf Alice.tar.gz Alice
	        echo "Правильно! Продолжай в том же духе"
        else
                echo "Ты допустил ошибку, осталась 1 попытка"
       read fourth_task_second
       if [[ "$fourth_task_second" = "time tar -cvzf Alice.tar.gz Alice" ]]; then
                echo " "
        time tar -cvzf Alice.tar.gz Alice
	        echo "Правильно! Продолжай в том же духе"
        else
              echo "К сожалению ты не справился с этим этапом!"
              exit 1
       fi
      fi
                   read fourth_task_third
      if [[ "$fourth_task_third" = "time tar -cvjf Alice.tar.bz2 Alice" ]]; then
                echo " "
        time tar -cvjf Alice.tar.bz2 Alice
	        echo "Правильно! Продолжай в том же духе"
        else
                echo "Ты допустил ошибку, осталась 1 попытка"
       read fourth_task_third
       if [[ "$fourth_task_third" = "time tar -cvjf Alice.tar.bz2 Alice" ]]; then
                echo " "
        time tar -cvjf Alice.tar.bz2 Alice
	        echo "Правильно! Продолжай в том же духе"
        else
              echo "К сожалению ты не справился с этим этапом!"
	      rm -y Alice.tar.gz
              exit 1
       fi
      fi
                   read fourth_task_thourth
      if [[ "$fourth_task_thourth" = "time zip Alice.zip Alice" ]]; then
                echo " "
        time zip Alice.zip Alice
	        echo "Правильно! Продолжай в том же духе"
        else
                echo "Ты допустил ошибку, осталась 1 попытка"
       read fourth_task_thourth
       if [[ "$fourth_task_thourth" = "time zip Alice.zip Alice" ]]; then
                echo " "
        time zip Alice.zip Alice
	        echo "Правильно! Продолжай в том же духе"
        else
              echo "К сожалению ты не справился с этим этапом!"
	      rm -y Alice.tar.gz
	      rm -y Alice.tar.bz2
              exit 1
       fi
      fi
                   read fourth_task_fith
      if [[ "$fourth_task_fith" = "time 7z a Alice.7z Alice" ]]; then
                echo " "
        time 7z a Alice.7z Alice
	echo "Правильно! Продолжай в том же духе"
        else
                echo "Ты допустил ошибку, осталась 1 попытка"
       read fourth_task_fith
       if [[ "$fourth_task_fith" = "time 7z a Alice.7z Alice" ]]; then
                echo " "
        time 7z a Alice.7z Alice
	        echo "Правильно! Продолжай в том же духе"
        else
              echo "К сожалению ты не справился с этим этапом!"
	      rm -y Alice.tar.gz
	      rm -y Alice.tar.bz2
	      rm -y Alice.zip
              exit 1
       fi
      fi
	echo " "
	echo "Теперь просмотри размер созданных архивов одной командой (существует базовый Алиас) без ключей"
	                   read fourth_task_sixth
      if [[ "$fourth_task_sixth" = "ll" ]]; then
                echo " "
        ls -l
        else
                echo "Ты допустил ошибку, осталась 1 попытка"
       read fourth_task_sixth
       if [[ "$fourth_task_sixth" = "ll" ]]; then
                echo " "
        ls -l
        else
              echo "К сожалению ты не справился с этим этапом!"
	                                  rm -rf Alice.tar.gz
              rm -rf Alice.tar.bz2
              rm -rf Alice.zip
	      rm -rf Alice.7z
              exit 1
       fi
      fi
              echo " "
        echo "Какой из алгоритмов выиграл по времени?"
                           read fourth_task_seventh
      if [[ "$fourth_task_seventh" = "zip" ]]; then
                echo " "
        echo "Правильно!"
        else
                echo "Ты допустил ошибку, осталась 1 попытка"
       read fourth_task_seventh
       if [[ "$fourth_task_seventh" = "zip" ]]; then
                echo " "
        echo "Правильно!"
        else
              echo "К сожалению ты не справился с этим этапом!"
	                    rm -rf Alice.tar.gz
              rm -rf Alice.tar.bz2
              rm -rf Alice.zip
		rm -rf Alice.7z
              exit 1
       fi
      fi
                    echo " "
		    echo "Какой из алгоритмов выиграл по памяти? (величины сжатия)"
                           read fourth_task_eight
      if [[ "$fourth_task_eight" = "7z" ]]; then
                echo " "
              echo "Правильно!"
        else
                echo "Ты допустил ошибку, осталась 1 попытка"
       read fourth_task_eight
       if [[ "$fourth_task_eight" = "7z" ]]; then
                echo " "
                echo "Правильно!"
        else
              echo "К сожалению ты не справился с этим этапом!"
	                                  rm -rf Alice.tar.gz
              rm -rf Alice.tar.bz2
              rm -rf Alice.zip
                rm -rf Alice.7z
              exit 1
       fi
      fi
echo " "
echo "Ты справился и Алиса, пролезла в маленький проход"
echo " "
echo "Ты изменил размер Алисы, но теперь когда она уже в волшебном мире, неплохо было бы вернуть ее в предыдущее состояние, не забывай о том, что мы проводим эксперимент, нам важно знать сколько потребуется времени, чтобы вернуть Алисе ее размер"
echo " "
echo "Поочереди разархивируй файлы gzip, bzip2, 7z, zip." 
read fith_task_first
      if [[ "$fith_task_first" = "time tar -xzvf Alice.tar.gz" ]]; then
                echo " "
        time tar -xzvf Alice.tar.gz
                echo "Правильно! Продолжай в том же духе"
        else
                echo "Ты допустил ошибку, осталась 1 попытка"
       read fith_task_first
       if [[ "$fith_task_first" = "time tar -xzvf Alice.tar.gz" ]]; then
                echo " "
        time tar -xzvf Alice.tar.gz
                echo "Правильно! Продолжай в том же духе"
        else
              echo "К сожалению ты не справился с этим этапом!"
	                                                rm -rf Alice.tar.gz
              rm -rf Alice.tar.bz2
              rm -rf Alice.zip
                rm -rf Alice.7z
              exit 1
       fi
      fi
read fith_task_second
      if [[ "$fith_task_second" = "time tar -xjvf Alice.tar.bz2" ]]; then
                echo " "
        time tar -xjvf Alice.tar.bz2
                echo "Правильно! Продолжай в том же духе"
        else
                echo "Ты допустил ошибку, осталась 1 попытка"
       read fith_task_second
       if [[ "$fith_task_second" = "time tar -xjvf Alice.tar.bz2" ]]; then
                echo " "
        time tar -xjvf Alice.tar.bz2
                echo "Правильно! Продолжай в том же духе"
        else
              echo "К сожалению ты не справился с этим этапом!"
	                                                rm -rf Alice.tar.gz
              rm -rf Alice.tar.bz2
              rm -rf Alice.zip
                rm -rf Alice.7z
              exit 1
       fi
      fi
      echo "Не забудь, что архив сжатый 7z, тебе нужно разархивировать в директорию 7z (она уже создана)"
read fith_task_third
      if [[ "$fith_task_third" = "time 7z x Alice.7z -o./7z/" ]]; then
                echo " "
        mkdir 7z; time 7z x Alice.7z -o./7z/
                echo "Правильно! Продолжай в том же духе"
        else
                echo "Ты допустил ошибку, осталась 1 попытка"
       read fith_task_third
       if [[ "$fith_task_third" = "time 7z x Alice.7z -o./7z/" ]]; then
                echo " "
        mkdir 7z; time 7z x Alice.7z -o./7z/
                echo "Правильно! Продолжай в том же духе"
        else
              echo "К сожалению ты не справился с этим этапом!"
	                                                rm -rf Alice.tar.gz
              rm -rf Alice.tar.bz2
              rm -rf Alice.zip
                rm -rf Alice.7z
              exit 1
       fi
      fi
read fith_task_thourth
      if [[ "$fith_task_thourth" = "time unzip Alice.zip" ]]; then
                echo " "
        rm -f Alice; time unzip Alice.zip
                echo "Правильно! Продолжай в том же духе"
        else
                echo "Ты допустил ошибку, осталась 1 попытка"
       read fith_task_thourth
       if [[ "$fith_task_thourth" = "time unzip Alice.zip" ]]; then
                echo " "
        rm -f Alice; time unzip Alice.zip
                echo "Правильно! Продолжай в том же духе"
        else
              echo "К сожалению ты не справился с этим этапом!"
	                                                rm -rf Alice.tar.gz
              rm -rf Alice.tar.bz2
              rm -rf Alice.zip
                rm -rf Alice.7z
rm -rf 7z/
              exit 1
       fi
      fi
echo "Какой архив разархивировался быстрее остальных, напиши расширение этого архива"
read fith_task_fith
      if [[ "$fith_task_fith" = "7z" ]]; then
                echo " "
                echo "Правильно! Продолжай в том же духе"
        else
                echo "Ты допустил ошибку, осталась 1 попытка"
       read fith_task_fith
       if [[ "$fith_task_fith" = "7z" ]]; then
                echo " "
        else
              echo "К сожалению ты не справился с этим этапом!"
              exit 1
       fi
      fi
echo "Ты вернул Алисе ее рост. Теперь Алиса прекрасно чувствует себя в Волшебном мире."

                                                        rm -rf Alice.tar.gz
              rm -rf Alice.tar.bz2
              rm -rf Alice.zip
                rm -rf Alice.7z
rm -rf 7z/
