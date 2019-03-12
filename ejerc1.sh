valor=$1

maxlineas=`cat nombres.txt | wc -l`
linea=1

while [ $linea -le $maxlineas ]; do

    i=`cat nombres.txt | head -$linea | tail -1`

    mkdir $i

    while [ $valor -gt 0 ]; do

	mkdir $i/pesonal$valor
	valor=$((valor-1))
    done

    linea=$((linea+1))
    
done
