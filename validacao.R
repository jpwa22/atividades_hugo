pacman::p_load(data.table, dplyr, tidyverse, validate)


# Vamos carregar uma planilha Excel contendo o número de casos de dengue 
# utilizando uma função do pacote readxl, que permite trabalhar com arquivos xls

dengue <- readxl::read_excel("bases_originais/dengue.xlsx")
str(df)

regras_dengue <- validator(A2020 >= 0, A2021 >= 0)

validacao_dengue <- confront(dengue, regras_dengue)

summary(validacao_dengue)

plot(validacao_dengue)
