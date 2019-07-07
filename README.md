
# UniversalTranslatorRb

Permite convertir un valor en una unidad de medida a otra unidad de medida dentro del sistema métrico internacional, utilizando un modelo de input específico.
## Análisis 
Recibiremos un archivo como input, el cual tendrá valor, unidad de origen, y unidad a convertir. Luego el programa leerá el archivo y luego creara un archivo output el cual tendrá otro campo llamado resultado, que es lo que esperábamos.

## Utilización
El input será introducido de la siguiente forma.(un archivo tipo txt)

    Value From To
    3 km m
    8 m km
El programa pedirá la ruta del input por medio de la terminal, y luego generará un mensaje dependiendo del resultado. 
El caso esperado es que diga 

    Succesfully Made Output
Causando que se cree un archivo llamado output.txt en la misma carpeta que el ejecutable o donde se encuentra el programa que usa la gema.

También hay que tomar que las posibles conversiones son las siguientes:

    km,hm,dam,m,dm,cm,mm

## Por qué creé esta gema?
Por un proyecto final de una asignatura en mi universidad.
Me pareció interesante crear un paquete o gema en este caso, el cual pueda ser interactuado sin la necesidad de instalar el lenguaje, o ninguna dependencia.

## Créditos
El release fué creado gracias a la gema ocra. Este permite crear un pequeño entorno de ruby el cual tiene todas las dependencias necesarias para funcionar en Windows.

    https://github.com/larsch/ocra

