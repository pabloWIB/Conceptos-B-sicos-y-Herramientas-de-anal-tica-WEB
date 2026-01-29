tabla_freq_edad <- table(datos$Edad)
print(tabla_freq_edad)

png("03_Histograma_Edad.png", width = 1000, height = 600)
hist(datos$Edad,
     main = "Distribución de Edad de Estudiantes",
     xlab = "Edad (años)",
     ylab = "Frecuencia",
     col = "#3498DB",
     border = "white",
     breaks = 8)
dev.off()