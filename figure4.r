library(ggplot2)

donnees <- read.csv("Food_Delivery_Times.csv", sep = ",", header = TRUE)

donnees$vitesse <- donnees$Distance_km / (donnees$Delivery_Time_min / 60)

ggplot(donnees, aes(x = Distance_km, y = vitesse)) +
  geom_line(color = "red", size = 1) +  # Ligne reliant les points
  geom_smooth(method = "lm", color = "blue", linetype = "dashed", se = FALSE) +  
  labs(title = "Relation entre Distance et Vitesse (Graphique en ligne)",
       x = "Distance (km)",
       y = "Vitesse (km/h)") +
  theme_minimal()

# Dans ce code :

# La vitesse est calculée à partir de la distance et du temps de livraison, en transformant le temps en heures.
# Un graphique en ligne est généré pour montrer la relation entre la distance parcourue (en km) et la vitesse (en km/h).
# Une ligne rouge relie les points de données, et une ligne de régression linéaire bleue en pointillé montre la tendance générale.
# Ce graphique permet d'analyser l'évolution de la vitesse en fonction de la distance et d'observer la tendance générale à l'aide de la régression.
