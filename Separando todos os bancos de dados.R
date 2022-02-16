#Separando todos os banco de dados para Rio de Janeiro
#ESTOU SEPARANDO AS ESCOLAS DO RIO DE JANEIRO, USANDO COMO CRIT?RIO AS VARI?VEIS DAS ESCOLAS, VISTO QUE 
#ELAS EST?O NO RIO DE JANEIRO. Caso um estudante estiver morando no RJ, mas matriculado em outro estado 
#isso pode dar problema.
#####Titulo######
#Colocando toda a memoria do pc para esse programa infernal
memory.limit(24576)
install.packages('data.table')

#Ano 2009
enem2009 <- data.table::fread(input='MICRODADOS_ENEM_2009.csv',
                              integer64='character',
                              skip=0,  #Ler do inicio
                              nrow=-1, #Ler todos os registros
                              na.strings = "", 
                              showProgress = TRUE)
#separo para o rj
rj <- subset(enem2009,enem2009$CO_UF_ESC == 33)
#crio tabela apenas do RJ
write.table(rj, file = "RJENEM2009.csv", row.names = FALSE,
            sep = ";", dec = ",")

#antes de come?ar um Banco de dados novo, lembre-se de apagar anteriores.
#Ano 2010

enem2010 <- data.table::fread(input='MICRODADOS_ENEM_2010.csv',
                              integer64='character',
                              skip=0,  #Ler do inicio
                              nrow=-1, #Ler todos os registros
                              na.strings = "", 
                              showProgress = TRUE)

rj <- subset(enem2010,enem2010$CO_UF_ESC == 33)
write.table(rj, file = "RJENEM2010.csv", row.names = FALSE,
            sep = ";", dec = ",")

#Ano 2011 Preciso voltar aqui pois estava como TXT e n?o CSV. 


enem2011<- read.table("DADOS_ENEM_2011.txt", head=T, sep = "") 
enem2011 <- data.table::fread(input='Enem2011.csv',
                              integer64='character',
                              skip=0,  #Ler do inicio
                              nrow=-1, #Ler todos os registros
                              na.strings = "", 
                              showProgress = TRUE)
bd <- enem2011
rj <- subset(enem2011, enem2011$UF_ESC == "RJ")
write.table(rj, file = "RJENEM2011.csv", row.names = FALSE,
            sep = ";", dec = ",")
#Ano 2012
enem2012 <- data.table::fread(input='DADOS_ENEM_2012.csv',
                              integer64='character',
                              skip=0,  #Ler do inicio
                              nrow=-1, #Ler todos os registros
                              na.strings = "", 
                              showProgress = TRUE)
bd <- enem2012
rj <- subset(bd,bd$UF_ESC == "RJ")
write.table(rj, file = "RJENEM2012.csv", row.names = FALSE,
            sep = ";", dec = ",")

#Ano 2013
enem2013 <- data.table::fread(input='MICRODADOS_ENEM_2013.csv',
                              integer64='character',
                              skip=0,  #Ler do inicio
                              nrow=-1, #Ler todos os registros
                              na.strings = "", 
                              showProgress = TRUE)
bd <- enem2013
rj <- subset(bd,bd$UF_ESC == "RJ")
write.table(rj, file = "RJENEM2013.csv", row.names = FALSE,
            sep = ";", dec = ",")

#Ano 2014
enem2014 <- data.table::fread(input='MICRODADOS_ENEM_2014.csv',
                              integer64='character',
                              skip=0,  #Ler do inicio
                              nrow=-1, #Ler todos os registros
                              na.strings = "", 
                              showProgress = TRUE)
bd <- enem2014
rj <- subset(bd,bd$UF_ESC == "RJ")
write.table(rj, file = "RJENEM2014.csv", row.names = FALSE,
            sep = ";", dec = ",")

#Ano 2015
enem2015 <- data.table::fread(input='MICRODADOS_ENEM_2015.csv',
                              integer64='character',
                              skip=0,  #Ler do inicio
                              nrow=-1, #Ler todos os registros
                              na.strings = "", 
                              showProgress = TRUE)
bd <- enem2015
rj <- subset(bd,bd$CO_UF_ESC == 33)
write.table(rj, file = "RJENEM2015.csv", row.names = FALSE,
            sep = ";", dec = ",")

#Ano 2016
enem2016 <- data.table::fread(input='microdados_enem_2016.csv',
                              integer64='character',
                              skip=0,  #Ler do inicio
                              nrow=-1, #Ler todos os registros
                              na.strings = "", 
                              showProgress = TRUE)
bd <- enem2016
rj <- subset(bd,bd$CO_UF_ESC == 33)
write.table(rj, file = "RJENEM2016.csv", row.names = FALSE,
            sep = ";", dec = ",")

#Ano 2017
enem2017 <- data.table::fread(input='MICRODADOS_ENEM_2017.csv',
                              integer64='character',
                              skip=0,  #Ler do inicio
                              nrow=-1, #Ler todos os registros
                              na.strings = "", 
                              showProgress = TRUE)
bd <- enem2017
rj <- subset(bd,bd$CO_UF_ESC == 33)
write.table(rj, file = "RJENEM2017.csv", row.names = FALSE,
            sep = ";", dec = ",")

#Ano 2018
enem2018 <- data.table::fread(input='MICRODADOS_ENEM_2018.csv',
                              integer64='character',
                              skip=0,  #Ler do inicio
                              nrow=-1, #Ler todos os registros
                              na.strings = "", 
                              showProgress = TRUE)
bd <- enem2018
rj <- subset(bd,bd$CO_UF_ESC == 33)
write.table(rj, file = "RJENEM2018.csv", row.names = FALSE,
            sep = ";", dec = ",")

#Ano 2019
enem2019 <- data.table::fread(input='MICRODADOS_ENEM_2019.csv',
                              integer64='character',
                              skip=0,  #Ler do inicio
                              nrow=-1, #Ler todos os registros
                              na.strings = "", 
                              showProgress = TRUE)
bd <- enem2019
rj <- subset(bd,bd$CO_UF_ESC == 33)
write.table(rj, file = "RJENEM2019.csv", row.names = FALSE,
            sep = ";", dec = ",")



