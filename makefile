README.md: guessinggame.sh
	touch README.md
	echo "# Guess Me" > README.md
	echo "\n" >> README.md
	echo `date -R` >> README.md
	echo "\n" >> README.md
	echo "Line of bash:`wc -l <guessinggame.sh`" >> README.md

clean:
	rm README.md
