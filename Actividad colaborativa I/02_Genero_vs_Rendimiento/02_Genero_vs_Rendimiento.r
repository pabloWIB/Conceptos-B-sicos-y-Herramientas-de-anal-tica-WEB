tabla_gen_rend <- table(datos$Género, datos$Rendimiento.académico)
print(tabla_gen_rend)

png("02_Genero_vs_Rendimiento.png", width = 1000, height = 600)
barplot(tabla_gen_rend, 
        beside = FALSE,
        main = "Distribución de Rendimiento Académico por Género",
        xlab = "Género",
        ylab = "Frecuencia",
        legend = TRUE,
        col = c("#E74C3C", "#F39C12", "#27AE60"))
dev.off()