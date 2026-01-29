# ============================================================================
# PUNTO 2: GRÁFICOS CON ggplot2 y dplyr
# ============================================================================

# Gráfico 1: AFICIÓN
png("05_ggplot_Aficion.png", width = 1000, height = 600)
datos %>%
  group_by(Afición) %>%
  summarise(Frecuencia = n()) %>%
  ggplot(aes(x = reorder(Afición, -Frecuencia), y = Frecuencia, fill = Afición)) +
  geom_bar(stat = 'identity', color = 'black', size = 1) +
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
cat("✓ Gráfico guardado: 05_ggplot_Aficion.png\n")

# Gráfico 2: RENDIMIENTO ACADÉMICO
png("06_ggplot_Rendimiento.png", width = 1000, height = 600)
datos$Rendimiento.académico <- factor(datos$Rendimiento.académico, 
                                       levels = c('bajo', 'medio', 'alto'))
datos %>%
  group_by(Rendimiento.académico) %>%
  summarise(Frecuencia = n()) %>%
  ggplot(aes(x = Rendimiento.académico, y = Frecuencia, fill = Rendimiento.académico)) +
  geom_bar(stat = 'identity', color = 'black', size = 1) +
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
cat("✓ Gráfico guardado: 06_ggplot_Rendimiento.png\n")

# Gráfico 3: GÉNERO
png("07_ggplot_Genero.png", width = 1000, height = 600)
datos %>%
  group_by(Género) %>%
  summarise(Frecuencia = n()) %>%
  ggplot(aes(x = Género, y = Frecuencia, fill = Género)) +
  geom_bar(stat = 'identity', color = 'black', size = 1) +
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
cat("✓ Gráfico guardado: 07_ggplot_Genero.png\n")

# Gráfico 4: ESTRATO SOCIOECONÓMICO
png("08_ggplot_Estrato.png", width = 1000, height = 600)
datos %>%
  group_by(Estrato.socioeconómico) %>%
  summarise(Frecuencia = n()) %>%
  ggplot(aes(x = Estrato.socioeconómico, y = Frecuencia, fill = Estrato.socioeconómico)) +
  geom_bar(stat = 'identity', color = 'black', size = 1) +
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
cat("✓ Gráfico guardado: 08_ggplot_Estrato.png\n")

# Gráfico 5: HISTOGRAMA EDAD CON ggplot2
png("09_ggplot_Histograma_Edad.png", width = 1000, height = 600)
ggplot(datos, aes(x = Edad, fill = '#3498DB')) +
  geom_histogram(bins = 8, color = 'black', alpha = 0.7, size = 1) +
  labs(title = 'Distribución de Edad (ggplot2)',
       x = 'Edad (años)',
       y = 'Frecuencia',
       subtitle = 'Histograma de edad de estudiantes') +
  theme_minimal() +
  theme(plot.title = element_text(face = 'bold', size = 14),
        legend.position = 'none')
dev.off()
cat("✓ Gráfico guardado: 09_ggplot_Histograma_Edad.png\n")

# Gráfico 6: HISTOGRAMA ESTATURA CON ggplot2
png("10_ggplot_Histograma_Estatura.png", width = 1000, height = 600)
ggplot(datos, aes(x = Estatura, fill = '#2ECC71')) +
  geom_histogram(bins = 8, color = 'black', alpha = 0.7, size = 1) +
  labs(title = 'Distribución de Estatura (ggplot2)',
       x = 'Estatura (metros)',
       y = 'Frecuencia',
       subtitle = 'Histograma de estatura de estudiantes') +
  theme_minimal() +
  theme(plot.title = element_text(face = 'bold', size = 14),
        legend.position = 'none')
dev.off()
cat("✓ Gráfico guardado: 10_ggplot_Histograma_Estatura.png\n")

cat("\n========================================\n")
cat("✓ PUNTO 2 COMPLETADO\n")
cat("========================================\n")
cat("\nGráficos ggplot2 generados:\n")
cat("5. 05_ggplot_Aficion.png\n")
cat("6. 06_ggplot_Rendimiento.png\n")
cat("7. 07_ggplot_Genero.png\n")
cat("8. 08_ggplot_Estrato.png\n")
cat("9. 09_ggplot_Histograma_Edad.png\n")
cat("10. 10_ggplot_Histograma_Estatura.png\n")
cat("\n========================================\n")