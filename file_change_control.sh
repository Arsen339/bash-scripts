# проверим, изменялся ли файл banned_content с момента создания
if [ -N banned_content ]
then
echo Punish the intruder!
fi
# Не будем трогать файл inaccessible
if [ -N inaccessible ]
then
echo Punish the intruder!
else
echo File is not changed
fi

# Проверим, новее ли файл script_3 чем script_2
if [ script_3.sh -nt script_2.sh ]
then
echo First file is newer then second
fi
