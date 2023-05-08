echo "\n[31mHello\e[0m"
a=50
echo $a
echo $(touch test_file.txt)
b=(20 10)
echo ${b[0]}
date1=$(date +%F)
echo todays date is $date1
a=$((2+19/4-12))
echo "mathamatic calculation of a is $a"

## Q1 if Condition statement

touch sample
if [ $? -eq 0 ]; then
    echo Hello
else
    echo Not working
fi
## Q2 sum of 100 numbers

echo Enter A number
read num
i=1
sum=0
while [ $i -le $num ]; do
  sum=$((i + sum))
  i=$((i+1))
done

echo "the sum of $num is = $sum"

##Q3 Joining two variables

echo Enter a number
Num_1=Hello
Num_2=World
Num_1+=$Num_2
echo $Num_1

##Q4

