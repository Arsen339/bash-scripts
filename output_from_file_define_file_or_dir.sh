# вывод из файла
file="file"
# IFS разделитель строки
IFS=$'D'
for var in $(cat $file)
do
echo " $var"
done
# Определим, файл или директория 
for obj in /home/arseny/scripts/*
do
if [ -d "$obj" ]
then
echo "$obj is a directory"
elif [ -f "$obj" ]
then
echo "$obj is a file"
fi
done
