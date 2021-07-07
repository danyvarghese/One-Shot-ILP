COUNTER_FILE3="intermediatea.txt"
COUNTER_FILE="OSHD_Accuracy_Result.txt"
for l in {2..4}
do
	
	echo " Class $l">>$COUNTER_FILE3
	for k in {1..30}
	do
	echo " Class $l">>$COUNTER_FILE
	
	echo "Iteration $k">>$COUNTER_FILE
	
	echo "################ OSHD Result ################" >> $COUNTER_FILE
	
	FLOOR=0;
	CEILING=3;
	RANGE=$(($CEILING-$FLOOR+1));
	POSITIVE=$RANDOM;
	let "POSITIVE %= $RANGE";
	POSITIVE=$(($POSITIVE+$FLOOR));
	echo "POSITIVE" $POSITIVE
	TRAIN=(${POSITIVE})
	TEST=(${POSITIVE})
		COUNTER=1
		while [  $COUNTER -lt $l ]; 
		do
			Flag=0
			NEGATIVE=$RANDOM;
			let "NEGATIVE %= $RANGE";
			NEGATIVE=$(($NEGATIVE+$FLOOR));
			#echo $NEGATIVE
			for u in "${TRAIN[@]}"
			do
				if [ $u == $NEGATIVE ]
				then 
					Flag=1
				fi
			done
			if [ $Flag == 1 ]
			then
				:
			else
				TRAIN[COUNTER]=$NEGATIVE
				let COUNTER=COUNTER+1
			fi
		done
		echo " ----------------------------------OSHD-------------------- " >> $COUNTER_FILE3
		echo "Train Set" ${TRAIN[@]}
		TRAININDICES=($(shuf -i 0-8 -n $l))
		echo "Train INDICESE" ${TRAININDICES[@]}
		COUNTER=1
		while [  $COUNTER -lt $l ]; 
		do
			Flag=0
			NEGATIVE=$RANDOM;
			let "NEGATIVE %= $RANGE";
			NEGATIVE=$(($NEGATIVE+$FLOOR));
			echo $NEGATIVE
			for u in "${TEST[@]}"
			do
				if [ $u == $NEGATIVE ]
				then 
					Flag=1
				fi
			done
			if [ $Flag == 1 ]
			then
				:
			else
				TEST[COUNTER]=$NEGATIVE
				let COUNTER=COUNTER+1
			fi
		done
		echo "TEST Set" ${TEST[@]}
		TESTINDICES=($(shuf -i 0-8 -n $l))
		echo "Train INDICESE" ${TESTINDICES[@]}
		cd Fundus_ILP
		echo "TRAIN"
		
		python OSHD_Training_Example_GenerationC.py ${TRAIN[@]} ${TRAININDICES[@]}
		cd ..
		echo " -----------Training------------ " >> $COUNTER_FILE3
		yap -l OSHD_Train.pl
		echo " -----------Testing------------ " >> $COUNTER_FILE3
		cd Fundus_ILP
		python OSHD_Test_Example_GenerationC.py ${TEST[@]} ${TESTINDICES[@]}
		cd ..
		yap -l OSHD_Test.pl
		input="intermediate.txt"
		read -a WORDS -d "" < "$input"

		num=$(echo ${WORDS[@]} | cut -d',' -f 2)
		echo ${WORDS[@]} | cut -d',' -f 2 >> $COUNTER_FILE
		python3 Siamese_Main_V1C.py ${TRAIN[@]} ${TRAININDICES[@]} ${TEST[@]} ${TESTINDICES[@]} $CEILING
		#yap -l OSHD_Train.pl
	done
done
python3 graph.py


