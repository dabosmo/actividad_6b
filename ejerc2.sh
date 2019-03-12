maxlineas=`cat precipitaciones.txt | wc -l`
linea=1
valor_total=0
contador=0

while [ $linea -le $maxlineas ]; do

    i=`cat precipitaciones.txt | head -$linea | tail -1 | awk '{print $2}'`
    
    valor_total=$((i+valor_total))

    contador=$((contador+1))
    
    linea=$((linea+1))
    
done

media=$((valor_total/contador))

echo "La media de precipitaciones es $media litros"
