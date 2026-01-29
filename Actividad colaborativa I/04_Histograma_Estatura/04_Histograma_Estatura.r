freq_estatura <- fdt(datos$Estatura, breaks = "Sturges")
print(freq_estatura)

png("04_Histograma_Estatura.png", width = 1000, height = 600)
hist(datos$Estatura,
     main = "Distribución de Estatura de Estudiantes",
     xlab = "Estatura (metros)",
     ylab = "Frecuencia",
     col = "#2ECC71",
     border = "white",
     breaks = 8)
dev.off()
