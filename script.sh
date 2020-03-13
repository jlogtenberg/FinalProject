function get_input {
	echo 'Year (between 2005 and 2017):'
	read YEAR
	echo 'Education level (Vmbo/Havo/Vwo):'
	read LEVEL
	echo 'Male graduates:'
	search geslaagden_mannen.csv $YEAR $LEVEL
	echo 'Female graduates:'
	search geslaagden_vrouwen.csv $YEAR $LEVEL
}

function search() {
	FILE=$1
	YEAR=$2
	LEVEL=$3
	cat $FILE |\
	grep $YEAR |\
	if [ $LEVEL == "Vmbo" ]
	then
		cut -d';' -f7
	elif [ $LEVEL == "Havo" ]
	then
		cut -d';' -f8
	elif [ $LEVEL == "Vwo" ]
	then
		cut -d';' -f9
	else
		echo 'Not a valid year or education level.'
	fi
}

get_input
