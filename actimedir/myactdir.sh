year=$(date +%Y)
month=$(date +%m)
day=$(date +%d)

if [ $# -eq 0 ]
then
	if [ -e ./${year}/${month}/${day} ]
	then
		echo "the file been created!"
	else
		mkdir -p ./${year}/${month}/${day}
	fi

elif [ $# -eq 1 ]
then
	case $1 in
		"-y")
			if [ -e ./${year} ]
			then
				echo "the file been created!"
			else
				mkdir -p ./${year}
			fi
		;;

		"-m")
			if [ -e ./${year}/${month} ]
			then
				echo "the file been created!"
			else
				mkdir -p ./${year}/${month}
			fi
		;;

		"-d")
			if [ -e ./${yer}/${month}/${day} ]
			then
				echo "the file been created!"
			else
				mkdir -p ./${year}/${month}/${day}
			fi
		;;
		
		*)
			echo "too much parameters!"	
		;;
	esac
else
	echo "parameter input errors!!! "
fi
