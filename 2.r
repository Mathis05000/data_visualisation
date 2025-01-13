donnees <- read_csv("Documents/cours/5A/R/Food_Delivery_Times.csv")

ggplot(donnees, aes(x = Traffic_Level, y = Delivery_Time_min, fill = Traffic_Level)) +
    geom_boxplot() +
    labs(title = "Temps de Livraison en fonction du Niveau de Trafic", x = "Niveau de Trafic", y = "Temps de Livraison (min)") +
    theme_minimal()

Dans ce code :

Le graphique est un boxplot qui montre la distribution du temps de livraison en fonction du niveau de trafic.
Le titre et les étiquettes des axes sont spécifiés sans caractères spéciaux.