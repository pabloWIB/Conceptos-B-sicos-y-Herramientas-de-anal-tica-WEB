# ============================================================================
# PUNTO 1: TABLAS DE CONTINGENCIA, GRÁFICOS APILADOS E HISTOGRAMAS
# ============================================================================

# Asegúrate que los datos ya están cargados (del script anterior)
# Si no, descomenta la siguiente línea:
# source("C:/Users/pablo/Desktop/U/Conceptos Básicos y Herramientas de analítica WEB/script_carga_datos.R")

library(descr)
library(fdth)
library(ggplot2)
library(dplyr)

# ============================================================================
# TABLA 1: GÉNERO vs AFICIÓN
# ============================================================================

cat("\n=== TABLA 1: GÉNERO vs AFICIÓN ===\n")
tabla_gen_af <- table(datos$Género, datos$Afición)
print(tabla_gen_af)

# Gráfico de barras apiladas - Género vs Afición
png("01_Genero_vs_Aficion.png", width = 1000, height = 600)
barplot(tabla_gen_af, 
        beside = FALSE,
        main = "Distribución de Aficiones por Género",
        xlab = "Género",
        ylab = "Frecuencia",
        legend = TRUE,
        col = c("#FF6B6B", "#4ECDC4", "#95E1D3"))
grid(axis = "y", lty = 2)
dev.off()
cat("✓ Gráfico guardado: 01_Genero_vs_Aficion.png\n")

# ============================================================================
# TABLA 2: GÉNERO vs RENDIMIENTO ACADÉMICO
# ============================================================================

cat("\n=== TABLA 2: GÉNERO vs RENDIMIENTO ACADÉMICO ===\n")
tabla_gen_rend <- table(datos$Género, datos$Rendimiento.académico)
print(tabla_gen_rend)

# Gráfico de barras apiladas - Género vs Rendimiento
png("02_Genero_vs_Rendimiento.png", width = 1000, height = 600)
barplot(tabla_gen_rend, 
        beside = FALSE,
        main = "Distribución de Rendimiento Académico por Género",
        xlab = "Género",
        ylab = "Frecuencia",
        legend = TRUE,
        col = c("#E74C3C", "#F39C12", "#27AE60"))
grid(axis = "y", lty = 2)
dev.off()
cat("✓ Gráfico guardado: 02_Genero_vs_Rendimiento.png\n")

# ============================================================================
# TABLA 3: DISTRIBUCIÓN DE FRECUENCIAS - EDAD
# ============================================================================

cat("\n=== TABLA 3: DISTRIBUCIÓN DE FRECUENCIAS - EDAD ===\n")
tabla_freq_edad <- table(datos$Edad)
print(tabla_freq_edad)

# Histograma - Edad
png("03_Histograma_Edad.png", width = 1000, height = 600)
hist(datos$Edad,
     main = "Distribución de Edad de Estudiantes",
     xlab = "Edad (años)",
     ylab = "Frecuencia",
     col = "#3498DB",
     border = "white",
     breaks = 8)
grid(axis = "y", lty = 2)
dev.off()
cat("✓ Gráfico guardado: 03_Histograma_Edad.png\n")

# ============================================================================
# TABLA 4: DISTRIBUCIÓN DE FRECUENCIAS - ESTATURA
# ============================================================================

cat("\n=== TABLA 4: DISTRIBUCIÓN DE FRECUENCIAS - ESTATURA ===\n")
# Usar fdth para crear tabla de frecuencias con intervalos
freq_estatura <- fdt(datos$Estatura, breaks = "Sturges")
print(freq_estatura)

# Histograma - Estatura
png("04_Histograma_Estatura.png", width = 1000, height = 600)
hist(datos$Estatura,
     main = "Distribución de Estatura de Estudiantes",
     xlab = "Estatura (metros)",
     ylab = "Frecuencia",
     col = "#2ECC71",
     border = "white",
     breaks = 8)
grid(axis = "y", lty = 2)
dev.off()
cat("✓ Gráfico guardado: 04_Histograma_Estatura.png\n")

# ============================================================================
# RESUMEN FINAL
# ============================================================================

cat("\n")
cat("========================================\n")
cat("✓ PUNTO 1 COMPLETADO\n")
cat("========================================\n")
cat("\nGráficos generados:\n")
cat("1. 01_Genero_vs_Aficion.png\n")
cat("2. 02_Genero_vs_Rendimiento.png\n")
cat("3. 03_Histograma_Edad.png\n")
cat("4. 04_Histograma_Estatura.png\n")
cat("\nUbicación: C:/Users/pablo/Desktop/U/Conceptos Básicos y Herramientas de analítica WEB/\n")
cat("========================================\n")