#1/bin/bash

<<info
Loop is anything that you want to repeat
again and again based on conditions

1...10

start point = 1
end point = 2
increment/decrement = +/-

info

for (( num=1 ; num<=10 ; num++))
do
	echo "$num"
	echo "hello"
done

