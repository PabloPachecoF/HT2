# HT2
## Examen corto 2 - Compiladores 2

En el presente programa se realizó un esquema de traducción dirigido por la sintaxis postfijo para un analizador que recibe como entrada una expresión aritmética (\*, +, -, /, paréntesis, letras y números). Para posteriormente generar el código de tres direcciones equivalente.

### Herramientas utilizadas
- Editor Visual Studio Code.
- Herramienta generadora de analizadores léxicos y sintácticos Jison.
- Sistema operativo Windows 10
- NodeJS como entorno de ejecución de Javascript.

### Descripción del proyecto
Primeramente se creó el proyecto utilizando los comandos que brinda NodeJS, en el archivo **package.JSON** generado se colocaron los scripts que se utilizarán más adelante para trabajar la compilación de la gramática y la ejecución del programa final.
![CapturaF4](https://user-images.githubusercontent.com/39973655/109370216-01133c80-7865-11eb-9ab5-e184f52054d4.PNG)

En el archivo **Gramatica.jison** se tiene el analizador utilizado. Primero se definió la parte del análisis léxico con las expresiones regulares necesarias y los caracteres válidos del lenguaje.
![CapturaF1](https://user-images.githubusercontent.com/39973655/109369555-5c8ffb00-7862-11eb-97a3-46f135fa5d99.PNG)

Luego en el área de declaraciones se colocaron las variables que llevan el conteo de temporales, el temporal en sí y la cadena temporal final. También se colocó la función que generará los temporales para cada producción. Más abajo se colocó la asociación de operadores y precedencias del lenguaje.
![CapturaF2](https://user-images.githubusercontent.com/39973655/109369767-577f7b80-7863-11eb-8118-fe567bebbf35.PNG)

Finalmente se definió la parte del análisis sintáctico junto con el esquema de traducción para la generación del código de tres direcciones.
![CapturaF3](https://user-images.githubusercontent.com/39973655/109369792-7120c300-7863-11eb-8361-cc7eb087f4bd.PNG)

El archivo **compilar.sh** contiene los scripts que se ejecutarán en la terminal de Visual Studio Code y que permiten a la herramienta Jison generar el analizador que se definió previamente en el archivo **Gramatica.jison**
![CapturaF5](https://user-images.githubusercontent.com/39973655/109370641-c27e8180-7866-11eb-8a6a-2c2c63e7e57c.PNG)


### Entradas de prueba para el proyecto y sus respectivas salidas

##### (a + b) * (a + c)
![Captura](https://user-images.githubusercontent.com/39973655/109368757-c8249900-785f-11eb-8898-cdcf7ba63354.PNG)

##### x * x
![Captura2](https://user-images.githubusercontent.com/39973655/109368892-441ee100-7860-11eb-8b24-b7a884774d4e.PNG)

##### y * y
![Captura3](https://user-images.githubusercontent.com/39973655/109368978-716b8f00-7860-11eb-8dbd-bb2b47edc95d.PNG)

##### x2 + y2
![Captura4](https://user-images.githubusercontent.com/39973655/109369010-8a744000-7860-11eb-96e3-84cf42a010cf.PNG)

##### b + c + d
![Captura5](https://user-images.githubusercontent.com/39973655/109369039-a4ae1e00-7860-11eb-9733-b69aecc24dc8.PNG)

##### a * a + b * b
![Captura6](https://user-images.githubusercontent.com/39973655/109369071-babbde80-7860-11eb-826e-39db9b1ed5d5.PNG)

##### 5 + 2 * b
![Captura7](https://user-images.githubusercontent.com/39973655/109369124-e6d75f80-7860-11eb-89ea-4a6bb16462ca.PNG)

##### 6 + 7 * 10+5 / 1
![Captura8](https://user-images.githubusercontent.com/39973655/109369178-11291d00-7861-11eb-8657-6e98ebd881b0.PNG)

##### ((7 + 9)/(((3 + 1) * (6 + 7) + 8) * 7) / 9) + 100
![Captura9](https://user-images.githubusercontent.com/39973655/109369214-39188080-7861-11eb-9d67-e16ab9f32986.PNG)

##### 7 * 9 - 89 + 63
![Captura10](https://user-images.githubusercontent.com/39973655/109369245-577e7c00-7861-11eb-9971-3874d659360f.PNG)
