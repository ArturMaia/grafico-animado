library(ggplot2)
library(esquisse)
library(gganimate)


ggplot(spa) +
 aes(x = genero, fill = genero, weight = quantidade) +
 geom_bar(position = "dodge") +
 scale_fill_hue(direction = -1) +
 labs(x = "Casos analisados", y = "Quantidade total acumulada", title = "Suicídios no Estado do Pará", 
 subtitle = "(Período de 2000 á 2019)", fill = "Gênero:") +
 coord_flip() +
 theme_minimal() +
 theme(plot.title = element_text(size = 20L, face = "bold", hjust = 0.5), plot.subtitle = element_text(size = 15L, 
 face = "bold", hjust = 0.5), axis.title.y = element_text(size = 14L, face = "bold.italic"), axis.title.x = element_text(size = 14L, 
 face = "bold.italic"))+
transition_reveal(along = quantidade)

anim_save('taxa.gif')

