# ◧ A gente já sabe que o R nada de braçada em cálculos, análises e gráficos, certo? Então, vamos começar a aprender como fazer nossos cálculos no R.
# 
# ◧ Primeira coisa a dizer é que o R faz todos os cálculos mais "simples": somar, subtrair, multiplicar... E também os cálculos mais
# "estatísticos": média, mediana, variância... Mas também faz muito mais coisa!!!
#   
#   ◧ Como este é um curso de R básico, vamos focar nas funções mais simples, ok? Porém já introduzindo alguns usos práticos que podemos fazer com elas.
# 
# 📘 Os materiais desta atividade são um vídeo e o código de aula, disponível no github: https://github.com/hugoavmedeiros/cd_com_r/blob/master/scripts/programacao/calculando.R.
# 
# 💎 Compartilhe com a gente um código criado por você com a centralização de alguma base de dados (nativa, externa ou criada por você 🙂) Lembre-se de compartilhar um link do github!



# uma aplicação prática?? vamos centralizar um caso clássico de distribuição de 
# poisson, o número de cavaleiros prussianos mortos por cavalos 

### Lendo o csv com os dados
horse_kick <- read.csv("hk.csv")

### Vamos dar uma olhada na estrutura
str(horse_kick)

### Como podemos observar temos poucos registros pois a série histórica é de ape
### nas 20 anos. Vamos observar a variável C1, uma das companias de cavalaria.
length(horse_kick$C1) # quantidade de registgros

#### Centralizando nossa distribuição subtraindo a média.
c1 <- horse_kick$C1 - mean(horse_kick$C1)

### Podemos perceber uma concentração um pouco discreta dos dados após o processo.
hist(horse_kick$C1)
hist(c1)

