# ◧ Os dados e objetos no R possuem index (como se fossem endereços) que permitem facilmente resgatar ou modificar partes de dados ou de informações, sem precisar mexer no conjunto de um objeto
# 
# ◧ A indexação é diferente, de acordo com o tipo de objeto, mas de maneira geral você pode acessar os index usando referências numéricas ou nominais.
# 
# ◧ Também é possível usar operadores lógicos, como maior, menor, igual e diferente para identificar dados e informações, ou para localizar o index correspondente.
# 
# 📘 Os materiais desta atividade são um vídeo, uma imagem com os operadores lógicos do R e o código de aula, disponível no github: https://github.com/hugoavmedeiros/cd_com_r/blob/master/scripts/programacao/index_operadores_logicos.R
# 
# 💎 Compartilhe com a gente um código criado por você em que você recupera ou identifica um dado ou informação usando indexação. Lembre-se de compartilhar um link do github!
#   
#   ☆ Se o seu código der erro de objeto, lembre de executar os códigos das aulas anteriores - e de salvar o seu projeto conforme progride 🙂



df <- data.frame(
 "estado" = state.name,
 "area" = state.area,
 "teste" = ifelse(state.area > mean(state.area),1,0)
)

str(df)

# Primeiro estado
df[1,1]

# cria uma lista com a coluna de "area"
areas = df[,2]
sample(areas,10)

# Retorna a linha do Estado do Alabama 
df[which(df$estado =="Alabama"),]
# Retorna os estados que o valor teste é igual a 1
df[which(df$teste == 1),]
# Retorna os estados onde a área é maior que a média nacional
df[which(state.area > mean(state.area)),]
# Retorna o estado com maior area
df[which(df$area == max(df$area)),]


