donnees <- read_csv("Documents/cours/5A/R/Food_Delivery_Times.csv")

moyenne_preparation <- aggregate(Preparation_Time_min ~ Time_of_Day, data = donnees, FUN = mean)

ggplot(moyenne_preparation, aes(x = Time_of_Day, y = Preparation_Time_min)) +
    geom_bar(stat = "identity", fill = "lightgreen") +
    labs(title = "Moyenne du Temps de Préparation par Moment de la Journée", x = "Moment de la Journée", y = "Moyenne du Temps de Préparation (min)") +
    theme_minimal()

Le code commence par calculer la moyenne du temps de préparation pour chaque moment de la journée.
Ensuite, il crée un graphique en barres pour afficher ces moyennes, avec des barres vert clair et des étiquettes sur les axes.