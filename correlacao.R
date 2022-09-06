## CORRELAÇÃO COM R ##
# PRIMEIRO, VAMOS CARREGAR OS PACOTES
pacman::p_load(datasets,corrplot, dplyr, ggplot2)

# Vamos carregar o dataset airquality com dados sobre a qualidade
# do ar em Nova York
df <- datasets::airquality
str(df)

# BASE DE DADOS QUALIDADE DO AR SEM AS VARIÁVEIS Ozone e Solar.R (NAN) #
df <- df  %>% select(-c(Ozone, Solar.R))

# TABELA DE CORRELAÇÃO COM TODAS AS VARIÁVEIS #
cor(df)

# GRÁFICOS DE DISPERSÃO PAREADOS DAS VARIÁVEIS #
pairs(df)

# CORRPLOT DAS VARIÁVEIS #
dfCor <- cor(df)
corrplot(dfCor, method = "number", order = 'alphabet')
corrplot(dfCor, order = 'alphabet') 
