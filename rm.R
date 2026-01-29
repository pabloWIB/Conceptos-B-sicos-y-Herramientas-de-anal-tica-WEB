# Limpiar
rm(list = ls())

# Instalar librerías (si no las tienes)
install.packages(c("descr", "fdth", "ggplot2", "dplyr", "rmarkdown", "knitr"))

# Cargar librerías
library(descr)
library(fdth)
library(ggplot2)
library(dplyr)
library(rmarkdown)
library(knitr)

# Cargar datos
datos <- read.csv("C:/Users/pablo/Desktop/U/Conceptos Básicos y Herramientas de analítica WEB/Actividad colaborativa I 2.csv", sep = ";", encoding = "UTF-8")

# Ver datos
head(datos)
str(datos)

# Limpiar filas vacías
datos <- datos %>% filter(!is.na(id))

# Convertir variables
datos$Género <- as.factor(datos$Género)
datos$Afición <- as.factor(datos$Afición)
datos$Rendimiento.académico <- as.factor(datos$Rendimiento.académico)
datos$Estrato.socioeconómico <- as.factor(datos$Estrato.socioeconómico)

# Convertir estatura
datos$Estatura <- as.numeric(gsub(",", ".", datos$Estatura))
datos$Peso <- as.numeric(gsub(",", ".", datos$Peso))

# Crear edad simulada
set.seed(42)
datos$Edad <- sample(18:25, nrow(datos), replace = TRUE)

# Ver resumen
summary(datos)

cat("\n✓ Datos cargados exitosamente\n")
