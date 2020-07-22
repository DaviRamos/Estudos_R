#tab2_1<-read.table("tabela2_1.csv", dec=",", sep=";",h=T)

names(tab2_1)

summary(tab2_1$salario)

ni<-table(tab2_1$grau_instrucao) # Calcula a tabela de frequências absolutas e armazena o resultado em 'mytab'
fi<-prop.table(ni) # Tabela de frequências relativas (f_i)
p_fi<-100*prop.table(ni) # Porcentagem (100 f_i)

# Adiciona linhas de total
ni<-c(ni,sum(ni)) 
fi<-c(fi,sum(fi))
p_fi<-c(p_fi,sum(p_fi))
names(ni)[4]<-"Total"
tab2_2<-cbind(ni,fi=round(fi,digits=2),p_fi=round(p_fi,digits=2))
tab2_2

tab2_3<-as.data.frame(
  t(rbind(
    ni=c(650,1020,330,2000),
    p_fi=c(32.5,51,16.5,1)
  ))
  ,row.names =c("Fundamental","Médio","Superior","Total")
)
tab2_3

ni<-table(cut(tab2_1$salario, breaks = seq(4,24,by=4),right=FALSE)) # Frequencias por categorias
tab2_4 <- rbind(ni, p_fi = 100*prop.table(ni)) # Frequencias relativas em %
#quebras de linha apenas ilustrativas para facilitar a leitura
tab2_4 <- as.data.frame(
  t(cbind(
    tab2_4,
    c(sum(tab2_4[1,]),sum(tab2_4[2,])
    ))),row.names =c(colnames(tab2_4),"Total")) #Construcao da tabela
tab2_4<-transform(tab2_4,p_fi=round(p_fi,digits=2))
tab2_4
