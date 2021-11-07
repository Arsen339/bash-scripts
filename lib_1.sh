function rand_bool {
# Генерация случайных "true" и "false" значений.
BINARY=2
number=$RANDOM
T=1
let "number %= $BINARY"
# let "number >>= 14"    дает более равномерное распределение
# (сдвиг вправо смещает старший бит на нулевую позицию, остальные биты обнуляются).
if [ "$number" -eq $T ]
then
  output=1
  
else
  output=0

fi
echo $output
}


function folder_maker {
# создает папку или файл со случайным именем
if [ $1 -eq 0 ]
then
filename=$RANDOM
touch $filename
echo "333333333333333333333333333333">>$filename
echo FILE IS $filename
else
foldername=$RANDOM
mkdir $RANDOM
echo FOLDER IS $RANDOM
fi
}
