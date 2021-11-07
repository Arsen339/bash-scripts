import subprocess
import time

# делаем файл исполняемым
subprocess.run("chmod ugo+x script_1.sh", shell=True)
subprocess.run("chmod ugo+x script_2.sh", shell=True)
time.sleep(2)

# запускаем процесс скрипта 1
pr1 = subprocess.Popen("/home/arseny/scripts/script_1.sh", shell=True)
pr1.wait()

# запустим  процесс из терминала, передав в терминал переменную
command = "date"
print(f"Our  command is {command}")
subprocess.run(f"{command}", shell=True)
time.sleep(2)

# запускаем процесс скрипта 1, передав ему аргумент world
pr2 = subprocess.Popen(["/home/arseny/scripts/script_2.sh world"], shell=True)
pr2.wait()
