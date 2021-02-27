# HT2
## Examen corto 2 - Compiladores 2

### Descripción
En el presente programa se realizó un esquema de traducción dirigido por la sintaxis postfijo para un analizador que recibe como entrada una expresión aritmética (\*, +, -, /, paréntesis, letras y números). Para posteriormente generar el código de tres direcciones equivalente.

### Herramientas utilizadas
- Editor Visual Studio Code.
- Herramienta generadora de analizadores léxicos y sintácticos Jison.
- Sistema operativo Windows 10
- NodeJS como entorno de ejecución de Javascript.

### Entradas de prueba para el proyecto

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
