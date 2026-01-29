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




png("05_ggplot_Aficion.png", width = 1000, height = 600)
datos %>%
  group_by(Afición) %>%
  summarise(Frecuencia = n()) %>%
  ggplot(aes(x = reorder(Afición, -Frecuencia), y = Frecuencia, fill = Afición)) +
  geom_bar(stat = 'identity', color = 'black') +
  geom_text(aes(label = Frecuencia), vjust = -0.5, size = 5, fontface = 'bold') +
  labs(title = 'Distribución de Aficiones',
       x = 'Afición',
       y = 'Frecuencia',
       subtitle = 'Preferencias de estudiantes') +
  theme_minimal() +
  theme(axis.text.x = element_text(size = 12, face = 'bold'),
        plot.title = element_text(face = 'bold', size = 14),
        legend.position = 'right') +
  scale_fill_brewer(palette = 'Set2')
dev.off()


png("06_ggplot_Rendimiento.png", width = 1000, height = 600)
datos$Rendimiento.académico <- factor(datos$Rendimiento.académico, 
                                       levels = c('bajo', 'medio', 'alto'))
datos %>%
  group_by(Rendimiento.académico) %>%
  summarise(Frecuencia = n()) %>%
  ggplot(aes(x = Rendimiento.académico, y = Frecuencia, fill = Rendimiento.académico)) +
  geom_bar(stat = 'identity', color = 'black') +
  geom_text(aes(label = Frecuencia), vjust = -0.5, size = 5, fontface = 'bold') +
  labs(title = 'Distribución de Rendimiento Académico',
       x = 'Rendimiento',
       y = 'Frecuencia',
       subtitle = 'Clasificación de estudiantes') +
  theme_minimal() +
  theme(axis.text.x = element_text(size = 12, face = 'bold'),
        plot.title = element_text(face = 'bold', size = 14),
        legend.position = 'right') +
  scale_fill_manual(values = c('bajo' = '#E74C3C', 'medio' = '#F39C12', 'alto' = '#27AE60'))
dev.off()





png("07_ggplot_Genero.png", width = 1000, height = 600)
datos %>%
  group_by(Género) %>%
  summarise(Frecuencia = n()) %>%
  ggplot(aes(x = Género, y = Frecuencia, fill = Género)) +
  geom_bar(stat = 'identity', color = 'black') +
  geom_text(aes(label = Frecuencia), vjust = -0.5, size = 5, fontface = 'bold') +
  labs(title = 'Distribución de Género',
       x = 'Género',
       y = 'Frecuencia',
       subtitle = 'Proporción de estudiantes') +
  theme_minimal() +
  theme(axis.text.x = element_text(size = 12, face = 'bold'),
        plot.title = element_text(face = 'bold', size = 14),
        legend.position = 'right') +
  scale_fill_manual(values = c('Masculino' = '#3498DB', 'Femenino' = '#E74C3C'))
dev.off()



png("08_ggplot_Estrato.png", width = 1000, height = 600)
datos %>%
  group_by(Estrato.socioeconómico) %>%
  summarise(Frecuencia = n()) %>%
  ggplot(aes(x = Estrato.socioeconómico, y = Frecuencia, fill = Estrato.socioeconómico)) +
  geom_bar(stat = 'identity', color = 'black') +
  geom_text(aes(label = Frecuencia), vjust = -0.5, size = 5, fontface = 'bold') +
  labs(title = 'Distribución de Estrato Socioeconómico',
       x = 'Estrato',
       y = 'Frecuencia',
       subtitle = 'Clasificación económica de estudiantes') +
  theme_minimal() +
  theme(axis.text.x = element_text(size = 12, face = 'bold'),
        plot.title = element_text(face = 'bold', size = 14),
        legend.position = 'right') +
  scale_fill_viridis_d()
dev.off()





png("09_ggplot_Histograma_Edad.png", width = 1000, height = 600)
ggplot(datos, aes(x = Edad, fill = '#3498DB')) +
  geom_histogram(bins = 8, color = 'black', alpha = 0.7) +
  labs(title = 'Distribución de Edad (ggplot2)',
       x = 'Edad (años)',
       y = 'Frecuencia',
       subtitle = 'Histograma de edad de estudiantes') +
  theme_minimal() +
  theme(plot.title = element_text(face = 'bold', size = 14),
        legend.position = 'none')
dev.off()




png("10_ggplot_Histograma_Estatura.png", width = 1000, height = 600)
ggplot(datos, aes(x = Estatura, fill = '#2ECC71')) +
  geom_histogram(bins = 8, color = 'black', alpha = 0.7) +
  labs(title = 'Distribución de Estatura (ggplot2)',
       x = 'Estatura (metros)',
       y = 'Frecuencia',
       subtitle = 'Histograma de estatura de estudiantes') +
  theme_minimal() +
  theme(plot.title = element_text(face = 'bold', size = 14),
        legend.position = 'none')
dev.off()