library(ggplot2)

donnees <- read.csv("Food_Delivery_Times.csv", sep = ",", header = TRUE)

# Exclure les lignes où Weather est vide
donnees <- donnees[!is.na(donnees$Weather) & donnees$Weather != "", ]

donnees$vitesse <- donnees$Distance_km / (donnees$Delivery_Time_min / 60)

moyenne_vitesse_weather <- aggregate(vitesse ~ Weather, data = donnees, FUN = mean)

ggplot(moyenne_vitesse_weather, aes(x = Weather, y = vitesse)) +
    geom_bar(stat = "identity", fill = "skyblue") +
        labs(
            title = "Moyenne de la vitesse en fonction du Temps",
            x = "Météo",                 
            y = "Moyenne de la Vitesse (km/h)"
        ) +
    theme_minimal()


#Dans ce code :

#La vitesse est calculée à partir de la distance et du temps de livraison, en transformant le temps en heures.
#La moyenne de la vitesse est calculée pour chaque catégorie de météo.
#Un graphique en barres est généré pour montrer cette moyenne de la vitesse en fonction des conditions météorologiques.
