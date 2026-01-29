library(officer)
library(magrittr)

setwd("C:/Users/pablo/Desktop/U/Conceptos Básicos y Herramientas de analítica WEB")

doc <- read_docx()

# PORTADA
doc <- doc %>%
  body_add_par("") %>%
  body_add_par("ANÁLISIS ESTADÍSTICO DE DATOS DE ESTUDIANTES", style = "heading 1") %>%
  body_add_par("Actividad Colaborativa I", style = "heading 2") %>%
  body_add_par("") %>%
  body_add_par("Conceptos Básicos y Herramientas de Analítica Web") %>%
  body_add_par(paste("Fecha:", format(Sys.Date(), "%d de %B de %Y"))) %>%
  body_add_page_break()

# INTRODUCCIÓN
doc <- doc %>%
  body_add_heading("1. Introducción", level = 1) %>%
  body_add_par("El presente análisis estadístico forma parte de la Actividad Colaborativa I de la asignatura 'Conceptos Básicos y Herramientas de Analítica Web'. Se realizó un estudio descriptivo de 60 estudiantes universitarios.")

# OBJETIVOS
doc <- doc %>%
  body_add_heading("2. Objetivos", level = 1) %>%
  body_add_par("Realizar análisis descriptivo de variables cualitativas y cuantitativas.", style = "List Bullet") %>%
  body_add_par("Generar tablas de contingencia y distribuciones de frecuencia.", style = "List Bullet") %>%
  body_add_par("Crear visualizaciones mediante gráficos de barras apiladas e histogramas.", style = "List Bullet")

# TABLAS Y GRÁFICOS PUNTO 1
doc <- doc %>%
  body_add_page_break() %>%
  body_add_heading("3. Punto 1: Análisis Bivariado", level = 1)

# Tabla Género vs Afición
doc <- doc %>%
  body_add_heading("Género vs Afición", level = 2) %>%
  body_add_table(data.frame(Género = c("Femenino", "Masculino"), Deporte = c(20, 20), Lectura = c(3, 0), Música = c(14, 3)), style = "table_autofit") %>%
  body_add_par("")

if (file.exists("01_Genero_vs_Aficion.png")) {
  doc <- doc %>% body_add_img("01_Genero_vs_Aficion.png", width = 5.5, height = 3.3)
}

# Tabla Género vs Rendimiento
doc <- doc %>%
  body_add_page_break() %>%
  body_add_heading("Género vs Rendimiento Académico", level = 2) %>%
  body_add_table(data.frame(Género = c("Femenino", "Masculino"), Alto = c(13, 6), Bajo = c(13, 8), Medio = c(11, 9)), style = "table_autofit") %>%
  body_add_par("")

if (file.exists("02_Genero_vs_Rendimiento.png")) {
  doc <- doc %>% body_add_img("02_Genero_vs_Rendimiento.png", width = 5.5, height = 3.3)
}

# Histogramas
doc <- doc %>%
  body_add_page_break() %>%
  body_add_heading("Histogramas", level = 2) %>%
  body_add_heading("Edad", level = 3)

if (file.exists("03_Histograma_Edad.png")) {
  doc <- doc %>% body_add_img("03_Histograma_Edad.png", width = 5.5, height = 3.3)
}

doc <- doc %>%
  body_add_page_break() %>%
  body_add_heading("Estatura", level = 3)

if (file.exists("04_Histograma_Estatura.png")) {
  doc <- doc %>% body_add_img("04_Histograma_Estatura.png", width = 5.5, height = 3.3)
}

# GRÁFICOS GGPLOT2
doc <- doc %>%
  body_add_page_break() %>%
  body_add_heading("4. Punto 2: Gráficos con ggplot2", level = 1)

# Gráficos ggplot2
graficos_ggplot <- list(
  list(archivo = "05_ggplot_Aficion.png", titulo = "Afición"),
  list(archivo = "06_ggplot_Rendimiento.png", titulo = "Rendimiento Académico"),
  list(archivo = "07_ggplot_Genero.png", titulo = "Género"),
  list(archivo = "08_ggplot_Estrato.png", titulo = "Estrato Socioeconómico"),
  list(archivo = "09_ggplot_Histograma_Edad.png", titulo = "Edad (Histograma)"),
  list(archivo = "10_ggplot_Histograma_Estatura.png", titulo = "Estatura (Histograma)")
)

for (i in seq_along(graficos_ggplot)) {
  doc <- doc %>% body_add_heading(graficos_ggplot[[i]]$titulo, level = 2)
  
  if (file.exists(graficos_ggplot[[i]]$archivo)) {
    doc <- doc %>% body_add_img(graficos_ggplot[[i]]$archivo, width = 5.5, height = 3.3)
  }
  
  if (i < length(graficos_ggplot)) {
    doc <- doc %>% body_add_page_break()
  }
}

# CONCLUSIONES
doc <- doc %>%
  body_add_page_break() %>%
  body_add_heading("5. Conclusiones", level = 1) %>%
  body_add_par("El análisis descriptivo de los 60 estudiantes reveló características demográficas importantes.", style = "List Number") %>%
  body_add_par("El Deporte es la afición predominante (66.7%).", style = "List Number") %>%
  body_add_par("La edad promedio es 21 años y la estatura promedio es 1.66 metros.", style = "List Number") %>%
  body_add_par("Se utilizaron exitosamente las librerías descr, fdth y ggplot2 para el análisis y visualización.", style = "List Number")

# GUARDAR
print(doc, target = "Analisis_Estudiantes_Actividad_Colaborativa_I.docx")

cat("\n✓ DOCUMENTO .DOCX GENERADO\n")
cat("Archivo: Analisis_Estudiantes_Actividad_Colaborativa_I.docx\n")