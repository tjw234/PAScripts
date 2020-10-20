#!/bin/bash

for ((i = 0 ; i < 100 ; i++)); do
	base=($RANDOM)
	exponent=($RANDOM)
	let "base %=20"
	let "exponent %= 200"
	./pow-iter-eval $base $exponent
	./pow-recur-eval $base $exponent 
	./pow-std-eval $base $exponent
done

for ((i = 0 ; i < 100 ; i++)); do
	base=($RANDOM)
	./sqrt-iter-eval $base
	./sqrt-recur-eval $base
	./sqrt-std-eval $base
done
echo "Done"
