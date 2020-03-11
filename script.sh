function women_amount {
	echo "Women 16/17:"
	cat geslaagden_vrouwen.csv |\
	grep "2016/'17" |\
	cut -d';' -f9
	
	echo "Women 17/18:"
	cat geslaagden_vrouwen.csv |\
	grep "2017/'18" |\
	cut -d';' -f9 
}

function men_amount {
	echo "Men 16/17:"
	cat geslaagden_mannen.csv |\
	grep "2016/'17" |\
	cut -d';' -f9 
	
	echo "Men 17/18:"
	cat geslaagden_mannen.csv |\
	grep "2017/'18" |\
	cut -d';' -f9
}

women_amount
men_amount
