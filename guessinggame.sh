echo "Guess the quantity of files in this folder:"
read nrGuess
nrFiles=$(ls -1|wc -l)
while ! [[ "$nrGuess" =~ ^[0-9]+$ ]]
do
	echo "The input is not a number"
	echo "Guess again"
	read nrGuess
done

while [[ ! $nrGuess -eq $nrFiles ]]
do
	if [[ $nrGuess -gt $nrFiles ]]
	then
		echo "The guess is larger than real."
	else
		echo "The guess is smaller than real."
	fi
	echo ""
	echo "guess again:"
	read nrGuess
	while ! [[ "$nrGuess" =~ ^[0-9]+$ ]]
	do
        	echo "The input is not a number"
        	read nrGuess
	done

done
echo "Correct!"
