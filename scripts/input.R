library(readxl)
library(data.table)
library(tidyr)

dados <- read_excel("dataset/EPIINFODADOS.xlsx")
dados <- data.table(dados)


# deletar -----------------------------------------------------------------

dados[, Idade := NULL] # remover Idade
dados[, names(dados)[grep("Goniometria", names(dados))] := NULL] # remover Goniometria
dados[, names(dados)[grep("Graus", names(dados))] := NULL] # remover Graus
dados[, Obs := NULL] # remover Observação

# dados <- dados[Inclusao == "S"] # participantes excluidos


# renomear colunas --------------------------------------------------------

setnames(dados, "CorrecaoInd", "CorrecaoInD")
setnames(dados, "CorrecaoAndi", "CorrecaoAnD")
setnames(dados, "AnDi", "AnD")
setnames(dados, "TempoAcompanhamentoAnDi", "TempoAcompanhamentoAnD")