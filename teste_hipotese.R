pacman::p_load(data.table, dplyr, tidyverse, validate)


# Vamos carregar uma planilha Excel contendo o número de casos de dengue 
# utilizando uma função do pacote readxl, que permite trabalhar com arquivos xls

dengue <- readxl::read_excel("bases_originais/dengue.xlsx")
str(dengue)

idh <- readxl::read_excel("bases_originais/idh.xlsx")
str(idh)
idh <- idh %>% select(1,3)

dengue <- left_join(dengue,idh)
head(dengue)

teste_cor <- cor.test(dengue$A2020,dengue$IDHM)
summary(teste_cor)
print( str_c( "O p-value do teste de correlação foi igual a ", 
              round(teste_cor$p.value,2)
            )
      )
# H0: variáveis são independentes / não têm associação. p-valor (p-value) > 0.05
# H1: variáveis são dependentes / há associação. p-valor (p-value) <= 0.05
 