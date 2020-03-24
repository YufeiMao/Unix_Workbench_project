README.md: guessinggame.sh
	touch README.md
	echo "#Guess Me" > README.md
	echo "\n" >> README.md
	echo `date -R` >> README.md
	echo "\n" >> README.md
	echo "Line of bash:`wc -l <guessinggame.sh`" >> README.md
	touch file1.txt
	touch file2.txt
	touch file3.txt


clean:
	rm README.md
	rm *.txt
