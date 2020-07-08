file_num=$(ls -1 | wc -l)

function response {
	if [[ $1 -eq $2 ]]
	then
		echo "You entered: $1, that is equal to the actual number of files. You have completed this game."
		let $3=1
	elif [[ $1 -gt $2 ]]
	then
		echo "You entered: $1, that is bigger than the actual number of files. Please try again."
	elif [[ $1 -lt $2 ]]
	then
		echo "You entered: $1, that is smaller than the actual number of files. Please try again."
	fi
}

right_answer=0

while [[ $right_answer -eq 0 ]]
do
	echo "Please guess the number of files and then press Enter:"
	read guess_num
	response $guess_num $file_num right_answer
done
