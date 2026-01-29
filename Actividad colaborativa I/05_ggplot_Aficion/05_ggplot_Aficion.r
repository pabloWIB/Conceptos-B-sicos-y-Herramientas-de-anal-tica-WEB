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