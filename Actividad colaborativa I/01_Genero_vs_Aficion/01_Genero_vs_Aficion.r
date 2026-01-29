tabla_gen_af <- table(datos$Género, datos$Afición)
print(tabla_gen_af)

png("01_Genero_vs_Aficion.png", width = 1000, height = 600)
barplot(tabla_gen_af, 
        beside = FALSE,
        main = "Distribución de Aficiones por Género",
        xlab = "Género",
        ylab = "Frecuencia",
        legend = TRUE,
        col = c("#FF6B6B", "#4ECDC4", "#95E1D3"))
dev.off()