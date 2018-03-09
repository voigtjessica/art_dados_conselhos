
#Como o artigo foi produzido a partir de cruzamentos na época feitos no no Excel, não temos ainda 
# um script de replicação, que será feito assim que possível.
#Esse script gera uma planilha csv, a partir da planilha original, que possui a correção dos
#seus cabeçalhos e missings para facilitar a sua visualização em programas estatísticos.

#Arquivo original: resolucoes_2005_2011_v2014.xlsx
#Arquivo adaptado: resolucoes_2005_2011_v2014_corrected.csv 

library(readxl)
setwd("C:\\Users\\jvoig\\OneDrive\\Documentos\\art_dados_conselhos")


resolucoes_2005_2011_v2014 <- read_excel("C:/Users/jvoig/OneDrive/Documentos/art_dados_conselhos/resolucoes_2005_2011_v2014.xlsx")

#adaptação dos cabeçalhos:

names(resolucoes_2005_2011_v2014) <- c( "ID",
                                 "DATA",
                                 "ANO",
                                 "NUM_CONSELHOS_POR_ANO",
                                 "TEMA",
                                 "TIPO_DE_DISPOSITIVO_LEGAL",
                                 "REFERENTE_OU_EMITIDA_PELO_CONSELHO",
                                 "AUTOR",
                                 "SIGLA_CONSELHO",
                                 "ANO_DE_CRIAÇÃO_DO_AUTOR",
                                 "TEMPO_DE_EXISTENCIA_AUTOR",
                                 "REFERENTE_A_AO",
                                 "ANO_CRIACAO_REFERENTE",
                                 "TEMPO_DE_EXISTENCIA_REFERENTE",
                                 "CONSELHO_OU_NAO_CONSELHO",
                                 "TEMA_RESUMIDO",
                                 "CONFERENCIA",
                                 "TERRITORIO_AO_QUAL_SE_REFERE",
                                 "CLASSIFICACAO",
                                 "OBSERVACOES",
                                 "SUBTIPOLOGIA",
                                 "X1")

#Substituindo NA escritos por actual missings
                  
resolucoes_2005_2011_v2014[] <- lapply(resolucoes_2005_2011_v2014, gsub, pattern='NA', replacement=NA)

setwd("C:\\Users\\jvoig\\OneDrive\\Documentos\\art_dados_conselhos") 

write.table(resolucoes_2005_2011_v2014 , file="resolucoes_2005_2011_v2014_corrected.csv", 
            sep=";", row.names=F, na="", quote = T, fileEncoding = "UTF-8")
