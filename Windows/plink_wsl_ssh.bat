if "%1" == "-ssh" (
	if "%3" == "-pw" (
		start wsl ssh %2 -p %6 -L %9
	) else (
		start wsl ssh %2 -p %4 -L %7
	)
	pause
	exit
) else (
	echo "Not SSH"
	exit
)
