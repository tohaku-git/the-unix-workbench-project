readme.md: guessinggame.sh
	echo "#Assignment of the Unix Workbench" > readme.md
	echo "The date and time at which make was run:" >> readme.md
	date >> readme.md
	echo "The number of lines contained in guessinggame.sh:" >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md
