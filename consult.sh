#!/bin/bash

# Ruta al intérprete de gprolog
GPROLOG_PATH="gprolog"

# Archivo para almacenar la salida
OUTPUT_FILE="output.txt"

# Consulta Prolog a ejecutar
PROLOG_QUERY="
    consult('main.pl'), 
    findall(X, father(Padre, kenia), Results),
    open('$OUTPUT_FILE', write, Stream),
    write(Stream, Results), nl(Stream),
    close(Stream),
    halt
"

# Ejecuta la consulta en gprolog
$GPROLOG_PATH --query-goal "$PROLOG_QUERY"

# Lee y muestra los resultados desde el archivo
cat "$OUTPUT_FILE"

