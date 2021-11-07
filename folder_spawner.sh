# Генератор мусорных файлов и папок с определенным количеством информации
# Возьмем функцию из библиотеки lib_1.sh
source ./lib_1.sh
count=1
while [ $count -le 5 ]
do
echo step is $count
count=$(( $count + 1 ))
flag=$(rand_bool)
echo flag is $flag
folder_maker $flag
done

sleep 20
# удалим все пустые папки
find . -type d -empty -delete
