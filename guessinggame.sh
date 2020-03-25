echo "Guess the quantity of files in this folder:"
read nrGuess
nrFiles=$(ls -1|wc -l)

function isNumber()
{
	declare x="$1"
	while ! [[ $x =~ ^[0-9]+$ ]]
	do
		echo "The input is not a number"
		echo "Guess again"
		read x
	done
}

isNumber $nrGuess

while ! [[  $nrGuess -eq $nrFiles ]]
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
	isNumber $nrGuess

done
echo "Correct!"
