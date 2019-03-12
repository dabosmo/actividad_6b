maxlineas=`cat precipitaciones.txt | wc -l`
linea=1

while [ $linea -le $maxlineas ]; do

    i=`cat precipitaciones.txt | head -$linea | tail -1 | awk '{print $2}'`

    linea=$((linea+1))

done
