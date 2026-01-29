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