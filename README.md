# Arbol Genealogico en prolog

## Funcionamiento

Consta de varias reglas que permiten la consulta:

```prolog
parent(X,Y).
```

Donde X es el padre y Y es el hijo.

```prolog
female(X).
male(X).
```

Donde X es el nombre de la persona.

```prolog
mother(X,Y).
```

Donde X es la madre de Y.

```prolog
father(X,Y).
```

Donde X es el padre de Y.

```prolog
haschild(X, _).
```

Donde X es el padre o madre de alguien.

```prolog
sister(X,Y).
```

Donde X es la hermana de Y.

```prolog
brother(X,Y).
```

Donde X es el hermano de Y.

```prolog
son(X,Y).
```

Donde X es el hijo de Y.

```prolog
daughter(X,Y).
```

Donde X es la hija de Y.

## Ejecutar

Para ejecutar el programa se debe tener instalado GNU-Prolog, luego se debe ejecutar el comando:

```bash
gprolog --consult-file main.pl
```
