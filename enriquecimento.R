library(dplyr)


# Vamos carregar nossa base contendo informações sobre mortalidade
obitos <- read.csv2("bases_originais/OBITOS.csv")
# Podemos perceber que temos a localidade indentificada pelo código do município
str(obitos)

# Vamos "colar" o nome dos municípios, primneiro vamos carregar a base com o 
# código e o nome dos municípios
munic <- read.csv2("bases_originais/MUNIC.csv")
str(munic)

# Agora vamos fazer uma "junção à esquerda" para agregar a informação do nome do
# município.
obitos <- left_join(obitos,munic, by = "COD_MUNIC")
