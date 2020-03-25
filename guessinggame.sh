nrFiles=$(ls -1A|wc -l)

read -p "Guess the quantity of files in this folder: " nrGuess

function isNumber()
{
	if [[ "$1" =~ ^[+-]?[0-9]+$ ]]
	then
		return 0
	else
		return 1
	fi
}

while	[[ $nrGuess != $nrFiles ]]
do
	if ! $(isNumber $nrGuess)
	then
		printf "The input is not an integer, "
	elif [[ $nrGuess -gt $nrFiles ]]
	then
		printf "The guess is larger than real, "
	else
		printf "The guess is smaller than real, "
	fi
	read -p "guess again: " nrGuess
done

echo "Congrats, correct number!"
