library(ggplot2)

donnees <- read.csv("Food_Delivery_Times.csv", sep = ",", header = TRUE)

moyenne_delai_experience <- aggregate(Delivery_Time_min ~ Courier_Experience_yrs, data = donnees, FUN = mean)

ggplot(moyenne_delai_experience, aes(x = Courier_Experience_yrs, y = Delivery_Time_min)) +
  geom_line(color = "blue", size = 1) +
  labs(title = "Moyenne du Temps de Livraison en fonction de l'Expérience du Coursier", x = "Expérience du Coursier (ans)", y = "Moyenne du Temps de Livraison (min)") +
  theme_minimal()

#Ce code crée un graphique linéaire qui montre la moyenne du temps de livraison en fonction de l'expérience des coursiers (en années).
#La ligne bleue relie les moyennes du temps de livraison pour chaque niveau d'expérience.
