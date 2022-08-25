# ◧ Dplyr!!! O pacote do tidyverse voltado para transformações!!! Dplyr é uma mão na roda muito grande, pois ele traz funções para diversas operações que fazemos no dia a dia: sumários, agrupamentos, manipulação de casos, manipulação de variáveis e enriquecimento de bases!! 
#   
#   ◨ Além disso, o dplyr possui uma folha de dicas muito detalhada!!!
#   
#   📘 Os materiais desta atividade são um vídeo, um link para uma folha de dicas do dplyr, e o código de aula, disponível no github: https://github.com/hugoavmedeiros/cd_com_r/blob/master/scripts/transformacao/dplyr.R.
# 
# 💎Compartilhe com a gente um código criado por você com a aplicação de pelo menos um sumário, um agrupamento, uma
# manipulação de casos e uma manipulação de colunas.

library(dplyr)

escolas <- read.table("bases_originais/escolas.csv", sep=";", header = T)
str(escolas)


# sumários
count(escolas, tipo) 

# sumários com agrupamentos
escolas %>% group_by(bairro) %>% summarise(avg = mean(qtd_alunos))

### Transformação de Casos

# seleção de casos
escolas %>%  filter(tipo != "CMEI") %>% summarise(avg = mean(qtd_alunos))
escolas %>%  filter(tipo != "CMEI") %>% group_by(tipo,bairro) %>% summarise(avg = mean(qtd_alunos))

# ordenar casos
arrange(escolas, qtd_alunos) # ascendente
arrange(escolas, desc(qtd_alunos)) # descendente

### Transformação de Variáveis

# seleção de colunas
escolas %>% select(tipo, bairro,qtd_alunos) %>% arrange(qtd_alunos)

# novas colunas
escolas %>% mutate(metragem = as.numeric(metragem)) %>%mutate(aluno.metro = qtd_alunos/metragem)

# renomear
escolas %>% rename(area = metragem)
