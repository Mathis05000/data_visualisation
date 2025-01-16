library(ggplot2)

donnees <- read.csv("Food_Delivery_Times.csv", sep = ",", header = TRUE)

# Exclure les lignes où Trafic est vide
donnees <- donnees[!is.na(donnees$Traffic_Level) & donnees$Traffic_Level != "", ]

ggplot(donnees, aes(x = Traffic_Level, y = Delivery_Time_min, fill = Traffic_Level)) +
  geom_boxplot() +
  labs(title = "Temps de Livraison en fonction du Niveau de Trafic", x = "Niveau de Trafic", y = "Temps de Livraison (min)") +
  theme_minimal() +
  scale_y_continuous(limits = c(0, 90))

#Dans ce code :
  
#Le graphique est un boxplot qui montre la distribution du temps de livraison en fonction du niveau de trafic.
#Le titre et les étiquettes des axes sont spécifiés sans caractères spéciaux.
