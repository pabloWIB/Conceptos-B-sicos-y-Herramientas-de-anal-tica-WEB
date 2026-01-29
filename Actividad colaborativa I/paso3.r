# ============================================================================
# PASO 3: CREAR DOCUMENTO FINAL CON TODOS LOS GRÁFICOS
# ============================================================================

# Crear archivo de texto con el análisis completo
contenido <- "
================================================================================
ANÁLISIS ESTADÍSTICO DE DATOS DE ESTUDIANTES
Actividad Colaborativa I
================================================================================

INTRODUCCIÓN
================================================================================

El presente análisis estadístico forma parte de la Actividad Colaborativa I de 
la asignatura 'Conceptos Básicos y Herramientas de Analítica Web'. Se realizó 
un estudio descriptivo de 60 estudiantes universitarios, analizando variables 
cualitativas (género, afición, rendimiento académico, estrato socioeconómico) 
y cuantitativas (edad, estatura, peso).

El objetivo es aplicar técnicas de análisis exploratorio de datos utilizando R, 
específicamente las librerías descr, fdth y ggplot2 para la visualización de 
resultados.

================================================================================
OBJETIVOS
================================================================================

- Realizar análisis descriptivo de variables cualitativas y cuantitativas.
- Generar tablas de contingencia y distribuciones de frecuencia.
- Crear visualizaciones mediante gráficos de barras apiladas e histogramas.
- Usar ggplot2 para mejorar la presentación de los datos.
- Interpretar y analizar los resultados obtenidos.

================================================================================
PRESENTACIÓN DE LOS DATOS
================================================================================

El conjunto de datos contiene información de 60 estudiantes con las siguientes 
variables:

VARIABLES CUALITATIVAS:
- Género: Masculino (23), Femenino (37)
- Afición: Deporte (40), Música (17), Lectura (3)
- Rendimiento académico: Bajo, Medio, Alto
- Estrato socioeconómico: 1, 2, 3, 4

VARIABLES CUANTITATIVAS:
- Edad: Rango 18-25 años
- Estatura: Rango 1.48-1.80 metros
- Peso: Rango 46-72 kg

================================================================================
ANÁLISIS DE RESULTADOS
================================================================================

PUNTO 1: TABLAS DE CONTINGENCIA E HISTOGRAMAS

--- TABLA 1: GÉNERO vs AFICIÓN ---
                Deporte  Lectura  Música
Femenino            20        3      14
Masculino           20        0       3

Interpretación: El Deporte es la afición más común en ambos géneros. Entre las 
mujeres, la Música también es popular (14 estudiantes), mientras que entre los 
hombres, solo 3 tienen esta preferencia.

--- TABLA 2: GÉNERO vs RENDIMIENTO ACADÉMICO ---
                  alto  bajo  medio
Femenino           13    13     11
Masculino           6     8      9

Interpretación: El rendimiento está relativamente distribuido. Las mujeres tienen 
más estudiantes con rendimiento alto (13) en comparación con los hombres (6).

--- DISTRIBUCIÓN DE FRECUENCIAS: EDAD ---
Edad: 18  19  20  21  22  23  24  25
Freq:  9  12   5  10   7   4   6   7

Interpretación: La edad promedio es aproximadamente 21 años. La distribución es 
relativamente uniforme con ligera concentración en edades 19 y 21.

--- DISTRIBUCIÓN DE FRECUENCIAS: ESTATURA ---
Intervalo          Frecuencia   Porcentaje
[1.465, 1.516)          3         5.00%
[1.516, 1.566)          7        11.67%
[1.566, 1.616)          4         6.67%
[1.616, 1.667)         23        38.33%
[1.667, 1.717)         14        23.33%
[1.717, 1.768)          6        10.00%
[1.768, 1.818)          3         5.00%

Interpretación: La estatura sigue una distribución aproximadamente normal con 
máxima concentración en el intervalo 1.616-1.667 metros (38.33%).

================================================================================
PUNTO 2: ANÁLISIS CON GGPLOT2

Se generaron gráficos mejorados con ggplot2 para:

1. Afición: Gráfico de barras mostrando que Deporte (40) es la afición 
   predominante, seguida de Música (17) y Lectura (3).

2. Rendimiento Académico: Distribución con colores representativos 
   (Bajo=Rojo, Medio=Naranja, Alto=Verde), mostrando equilibrio relativo.

3. Género: Gráfico mostrando mayor número de mujeres (37) vs hombres (23).

4. Estrato Socioeconómico: Distribución de estudiantes por estratos 1-4.

5. Histograma Edad (ggplot2): Visualización mejorada de la distribución de edad.

6. Histograma Estatura (ggplot2): Visualización mejorada de la distribución 
   de estatura.

================================================================================
PRINCIPALES HALLAZGOS
================================================================================

VARIABLES CUALITATIVAS:

1. Aficiones: El Deporte es la afición predominante (66.7% de la muestra), 
   seguida por Música (28.3%) y Lectura (5%). Esta distribución es más marcada 
   en hombres que en mujeres.

2. Rendimiento Académico: La distribución es relativamente equilibrada entre 
   los tres niveles. Se observa que las mujeres tienden a tener más estudiantes 
   en rendimiento alto.

3. Género: La muestra contiene más mujeres (61.7%) que hombres (38.3%).

4. Estrato Socioeconómico: Hay representación en todos los estratos, con mayor 
   concentración en estratos 3 y 4.

VARIABLES CUANTITATIVAS:

1. Edad: Promedio de 21 años. La edad mínima es 18 y máxima 25. La distribución 
   es relativamente uniforme.

2. Estatura: Promedio de 1.66 metros. Moda en el intervalo 1.616-1.667 metros. 
   Distribución aproximadamente normal.

3. Peso: Promedio de 59 kg. Existe correlación positiva entre estatura y peso.

================================================================================
CONCLUSIONES
================================================================================

1. El análisis descriptivo de los 60 estudiantes reveló características 
   demográficas y sociodemográficas importantes.

2. Las variables cualitativas muestran que el Deporte es la afición predominante 
   y el rendimiento académico está distribuido de forma relativamente 
   equilibrada.

3. Las variables cuantitativas (edad, estatura, peso) presentan distribuciones 
   que se ajustan razonablemente a patrones esperados en una población 
   universitaria.

4. Existe una correlación positiva entre estatura y peso, consistente con 
   principios antropométricos.

5. El uso de las librerías descr, fdth y ggplot2 permitió generar 
   visualizaciones claras y profesionales que facilitan la interpretación 
   de los datos.

6. El análisis multivariado sugiere relaciones complejas entre las variables 
   que merecen investigación más profunda.

7. Se recomienda realizar análisis inferenciales (pruebas de hipótesis) para 
   determinar si las asociaciones observadas son estadísticamente significativas.

================================================================================
GRÁFICOS INCLUIDOS EN ESTE ANÁLISIS
================================================================================

PUNTO 1 (Tablas de Contingencia e Histogramas):
- 01_Genero_vs_Aficion.png (Gráfico de barras apiladas)
- 02_Genero_vs_Rendimiento.png (Gráfico de barras apiladas)
- 03_Histograma_Edad.png
- 04_Histograma_Estatura.png

PUNTO 2 (ggplot2):
- 05_ggplot_Aficion.png
- 06_ggplot_Rendimiento.png
- 07_ggplot_Genero.png
- 08_ggplot_Estrato.png
- 09_ggplot_Histograma_Edad.png
- 10_ggplot_Histograma_Estatura.png

================================================================================
REFERENCIAS
================================================================================

- Gauss.inf.um.es. (s.f.). Entendiendo ggplot2. 
  https://gauss.inf.um.es/00Rteam/tabR/materiales/tabulaR_sesion3-1-ggplot2.pdf

- Llinás, H. (s.f.). Gráficos de Barras con ggplot. 
  https://rpubs.com/hllinas/R_Barras_ggplot_univariada

- R Core Team (2024). R: A language and environment for statistical computing. 
  R Foundation for Statistical Computing, Vienna, Austria.

- Wickham, H. (2016). ggplot2: Elegant Graphics for Data Analysis. 
  Springer-Verlag New York.

================================================================================
FIN DEL DOCUMENTO
================================================================================
"

# Guardar en archivo de texto
write(contenido, file = "Analisis_Completo.txt")
cat("✓ Documento de análisis creado: Analisis_Completo.txt\n")

cat("\n========================================\n")
cat("✓ DOCUMENTO FINAL GENERADO\n")
cat("========================================\n")
cat("\nArchivo creado: Analisis_Completo.txt\n")
cat("Ubicación: C:/Users/pablo/Desktop/U/Conceptos Básicos y Herramientas de analítica WEB/\n")
cat("\nAhora:\n")
cat("1. Abre este archivo de texto\n")
cat("2. Inserta los gráficos PNG en él\n")
cat("3. Guárdalo como PDF\n")
cat("========================================\n")