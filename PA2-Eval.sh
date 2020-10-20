#!/bin/bash

for ((i = 1 ; i < 11 ; i++)); do
    ((amount=$i*200))
	./vector-push-back-v1-eval $amount >> vectorv1.csv
    ./vector-push-back-v2-eval $amount >> vectorv2.csv
	./list-push-back-eval $amount >> listpush.csv
done

for ((i = 1 ; i < 26 ; i++)); do
	((amount=$i*100))
	./vector-contains-eval $amount >> veccontains.csv
	./list-contains-eval $amount >> listcontains.csv
done
echo "Done"
