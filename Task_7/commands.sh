
roqaya@pop-os:~/Linux-25-Materials/tasks/Linux-25-Tasks/Task_7$ grep -oP '\b[0-9]{3}[-. ]?[0-9]{3}[-. ]?[0-9]{4}\b' data.txt
roqaya@pop-os:~/Linux-25-Materials/tasks/Linux-25-Tasks/Task_7$ grep -oP '\b(\+?[0-9]{1,3}[-. ]?)?\(?[0-9]{2,4}\)?[-. ]?[0-9]{3,4}[-. ]?[0-9]{4}\b' data.txt
roqaya@pop-os:~/Linux-25-Materials/tasks/Linux-25-Tasks/Task_7$ grep -oP '\b(?:[0-9]{1,3}\.){3}[0-9]{1,3}\b' data.txt

