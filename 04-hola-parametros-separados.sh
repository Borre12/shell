#! /bin/bash
# si número de parámetros menor o igual que 0
if [ $# -le 0 ]; then
  echo "Hay que introducir al menos un parámetro."
  exit 1
fi

MENSAJE="Hola"
PRIMERO=1

# iteramos sobre los parámetros
for i in "$@"; do
    if [ $PRIMERO -eq 1 ]; then
        MENSAJE="$MENSAJE $i"
        PRIMERO=0
    else
        MENSAJE="$MENSAJE, $i"
    fi
done

# mostramos la salida por pantalla
echo "$MENSAJE!"
