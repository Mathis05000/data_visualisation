donnees <- read_csv("Documents/cours/5A/R/Food_Delivery_Times.csv")

ggplot(donnees, aes(x = Distance_km, y = Delivery_Time_min)) +
    geom_point(aes(color = Traffic_Level), alpha = 0.7) +
    labs(title = "Relation entre Distance et Temps de Livraison", x = "Distance (km)", y = "Temps de Livraison (min)") +
    theme_minimal()

Ce code crée un graphique de type nuage de points (scatter plot) qui montre la relation entre la distance de livraison et le temps de livraison.
Les points sont colorés en fonction du niveau de trafic (faible, moyen, élevé) et la transparence des points est réduite pour mieux visualiser les zones où les points se chevauchent.