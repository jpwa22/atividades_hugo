library(datasets)
library(dplyr)
library(tidyr)

# Vamos carregar o dataset swiss como "df"
df <- swiss
# Podemos acessar a ajuda para entender melhor os dados
?swiss

# Vamos dar uma olhada na estrutura e nas primeiras linhas
str(df)
head(df)

# Temos 7 indicadores sociais dispostos em colunas,
# vamos transformar o para um dataset "longo" com a
# função pivot_longer

##  As províncias são o index da nossa base, vamos utilizar a função
##  rownames_to_column para colocar numa nova coluna.
df <- tibble::rownames_to_column(df,"Província") 

# Agora sim vamos "pivotar" nossa base, que vai ter agora a coluna "Indicador"
df_long <- pivot_longer(df,2:7,names_to = "Indicador")
# Vamos dar uma olhada no dataset transformado
head(df_long)
