rm(list = ls())

library(descr)
library(fdth)
library(ggplot2)
library(dplyr)

datos <- read.csv("C:/Users/pablo/Desktop/U/Conceptos Básicos y Herramientas de analítica WEB/Actividad colaborativa I 2.csv", sep = ";", encoding = "UTF-8")

datos <- datos %>% filter(!is.na(id))

datos$Género <- as.factor(datos$Género)
datos$Afición <- as.factor(datos$Afición)
datos$Rendimiento.académico <- as.factor(datos$Rendimiento.académico)
datos$Estrato.socioeconómico <- as.factor(datos$Estrato.socioeconómico)

datos$Estatura <- as.numeric(gsub(",", ".", datos$Estatura))
datos$Peso <- as.numeric(gsub(",", ".", datos$Peso))

set.seed(42)
datos$Edad <- sample(18:25, nrow(datos), replace = TRUE)

setwd("C:/Users/pablo/Desktop/U/Conceptos Básicos y Herramientas de analítica WEB")

cat("\n✓ Datos cargados exitosamente\n")