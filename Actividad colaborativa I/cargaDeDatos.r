> # Limpiar
> rm(list = ls())
> 
> # Cargar librerías
> library(descr)
> library(fdth)
> library(ggplot2)
> library(dplyr)
> 
> # Cargar datos
> datos <- read.csv("C:/Users/pablo/Desktop/U/Conceptos Básicos y Herramientas de analítica WEB/Actividad colaborativa I 2.csv", sep = ";", encoding = "UTF-8")
> 
> # Limpiar filas vacías
> datos <- datos %>% filter(!is.na(id))
> 
> # Convertir variables
> datos$Género <- as.factor(datos$Género)
> datos$Afición <- as.factor(datos$Afición)
> datos$Rendimiento.académico <- as.factor(datos$Rendimiento.académico)
> datos$Estrato.socioeconómico <- as.factor(datos$Estrato.socioeconómico)
> 
> # Convertir estatura
> datos$Estatura <- as.numeric(gsub(",", ".", datos$Estatura))
> datos$Peso <- as.numeric(gsub(",", ".", datos$Peso))
> 
> # Crear edad simulada
> set.seed(42)
> datos$Edad <- sample(18:25, nrow(datos), replace = TRUE)
> 
> cat("\n✓ Datos cargados exitosamente\n")

✓ Datos cargados exitosamente
> cat("Variables:", names(datos), "\n")
Variables: id Rendimiento.académico Estrato.socioeconómico Género Afición Estatura Peso Personas.con.las.que.vive Edad 
> cat("Registros:", nrow(datos), "\n")
Registros: 60 
> 