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