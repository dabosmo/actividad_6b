maxlineas=`cat listado.txt | wc -l`
linea=1
procesos_windows=0
procesos_linux=0
users_windows=0
users_linux=0

while [ $linea -le $maxlineas ]; do

    so=`cat listado.txt | head -$linea | tail -1 | awk '{print $2}'`

    procesos=`cat listado.txt | head -$linea | tail -1 | awk '{print $3}'`

    if [ $so = "Linux" ]; then

	users_linux=$((users_linux + 1))

	procesos_linux=$((procesos_linux + procesos))

    else

	users_windows=$((users_windows + 1))

	procesos_windows=$((procesos_windows + procesos))
	
    fi
    

    linea=$((linea+1))

done

echo "Linux -> $users_linux $procesos_linux "

echo "Windows -> $users_windows $procesos_windows "
