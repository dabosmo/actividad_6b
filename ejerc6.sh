directorio=$1


linea=1

cd $directorio

touch borrarficheros.txt

find . -name "*.txt" -type f > borrarficheros.txt

maxlineas=`cat borrarficheros.txt | wc -l`

while [ $linea -le $maxlineas ]; do

    i=`cat borrarficheros.txt | head -$linea | tail -1 `
        
    linea=$((linea+1))
    
done

echo "Se han borrado $linea ficheros. "

find . -name "*.txt" -type f -delete

rm borrarficheros.txt
