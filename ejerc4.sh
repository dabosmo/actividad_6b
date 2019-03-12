maxlineas=`cat numeros.txt | wc -l`
linea=1
total_par=0
total_impar=0

while [ $linea -le $maxlineas ]; do

    i=`cat numeros.txt | head -$linea | tail -1 `

    resto=$((i % 2))
    
    if [ $resto -ne 0 ]; then

	echo "$i" >> impares.txt

	total_impar=$((total_impar + i))
	
    else echo "$i" >> pares.txt

	 total_par=$((total_par + i))
	 
    fi
    

    linea=$((linea+1))

done

echo "Los numeros pares son: "

cat pares.txt

echo "Y su total es: $total_par"

echo "Los numeros impares son: "

cat impares.txt

echo "Y su total es: $total_impar"

echo "" > pares.txt
echo "" > impares.txt
