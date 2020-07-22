#Chama a Biblioteca pdftools
library(pdftools) 

#identifica em qual pasta está nossos pdfs

pasta<-c("C:\\temp\\temp2\\")

#lista os arquivos nessa pasta por nome
lista<-list.files(pasta)

#calcula a quantidade de arquivos listados para utilizar no loop
quantidade<-length(lista)

for(a in 1:quantidade)
{
 #captura os dados do PDF para a variavel dados
 dados<-pdf_text(paste(pasta, lista[a], sep=""))
 #insere quebra de linhas
 dados<-strsplit(dados, "\n")
 #atribui o nome da variavel nova para o pdf de cada etapa.
 # a cada etapa do loop ele adiciona um novo dataframe chamado arquivo1, arquivo2 e etc
 arquivo<-paste("arquivo", a, sep= "")
 #insere od dados capturados na primeira etapa em um dataframe para que possa ser identificado pelo PBI
 assign(arquivo, data.frame(dados = unlist(dados)))
  
}