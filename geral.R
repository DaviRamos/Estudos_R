#Anexa Arquivo
attach(aulas)

#Variavel do dataset
section_id

#Tamanhdo da quantidade de registros
options(max.print = 40000)

#Cabeçalho
head(section_id)

#Ordenação
sort(section_id)

#atribução de valores
aulas[33137,3] <- 3255

#ordenação do arquivo pela variavel
sort(aulas$section_id)

#Valores unicos
unique(aulas$section_id)

#Tamanho dos valores unicos
length(unique(aulas$section_id))

#Montar tabela
table(aulas$section_id)

#Mantar tabela ordenada para ver os videos mais assistidos
sort(table(aulas$section_id))

#Mantar tabela ordenada para ver os cursos mais assistidos
sort(table(aulas$course_id))

# instalar biblioteca
install.packages("plyr")

# Carregar library
library(plyr)

# Criar objeto auxiliar
auxiliar <- count(aulas, vars = "course_id")

write.csv(auxiliar,"F:\\Estudos\\Cursos\\Alura\\Novos\\Curso Análise de dados introdução com R\\Arquivos\\popularidade.csv")


rm(list=ls())

library(plyr)

duracao <- rename(duracao, replace = c("user_id"="aluno","course_id"="curso","timeToFinish"="dias"))

plot(duracao$dias)

hist(duracao$dias)

hist(duracao$dias, breaks = 20, main = "Histograma do Tempo", ylab = "Quantidade", xlab = "Tempo", ylim = c(0,2000), col = "blue" )

jpeg("F:\\Estudos\\Cursos\\Alura\\Novos\\Curso Análise de dados introdução com R\\Arquivos\\histograma.jpg")

hist(duracao$dias, breaks = 20, main = "Histograma do Tempo", ylab = "Quantidade", xlab = "Tempo", ylim = c(0,2000), col = "blue" )

dev.off()

#Media com erro NA
mean(duracao$dias)

#Media retirando o NA
mean(duracao$dias, na.rm = TRUE)

#Mediana com erro NA
median(duracao$dias)

#Mediana  retirando o NA
median(duracao$dias, na.rm = TRUE)

#Sumario estatistico
summary(duracao$dias)

summary(duracao)

#tamanho da dimensão 1 -linhas
dim(duracao)[1]

3828/6366

length(unique(duracao$curso))

length(unique(duracao$aluno))


sumario_estatistico <- aggregate(duracao$dias, list(duracao$curso), mean, na.rm = TRUE)


sumario_estatistico <-  rename(sumario_estatistico, c('Group.1' = 'curso', 'x' = 'dias'))


popularidade <- rename(popularidade, c('course_id' = 'curso', 'freq' = 'popularidade'))

popularidade_e_duracao <- merge(sumario_estatistico, popularidade, by = 'curso')

plot(popularidade_e_duracao$dias, popularidade_e_duracao$popularidade)

modelo.linear <- lm(popularidade_e_duracao$popularidade~popularidade_e_duracao$dias)

abline(lm(popularidade_e_duracao$popularidade~popularidade_e_duracao$dias))

scatter.smooth(popularidade_e_duracao$dias, popularidade_e_duracao$popularidade)

help('pch')

scatter.smooth(popularidade_e_duracao$dias, popularidade_e_duracao$popularidade, pch=16)

scatter.smooth(popularidade_e_duracao$dias, popularidade_e_duracao$popularidade, pch=21,   col='blue')

install.packages('ggplot2')

library(ggplot2)

grafico <- ggplot(popularidade_e_duracao, aes(dias, popularidade))

grafico <- grafico + geom_point()

grafico <- grafico + geom_smooth()

?hist

#Tendencia Central (Média, Mediana, Moda)


#Funcão apa a mediana
Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

dados <- c(2, 3, 7, 8, 1, 3, 4, 8, 22, 67, 19)

lista <- c(1, 2, 2, 2, 2, 3, 3, 4, 5, 5, 6, 7)

#Média
mean(dados, na.rm = TRUE)

#Mediana
median(dados, na.rm = TRUE)

#Moda
Mode(lista)

#Teste de Hipótese
shapiro.test(dados)

numeros <- c (1, 3, 5, 6, 10, 19, 23, 5, 7, 89, 15, 14, 22, 23, 32, 23, 37)

summary (numeros)

boxplot (numeros)

numeros2 <- c(1, 2, 3, 5, 6, 7, 8, 11, 2, 3, 44, 55, 67, 12, 34, 56)

#variância 
var(numeros2)

variancia <- var(numeros2)

#raiz quadrada da variância = desvio padrão 
sqrt(variancia)

#desvio padrão 
sd(numeros2)

lizard = c(6.2,6.6,7.1,7.4,7.6,7.9,8,8.3,8.4,8.5,8.6,8.8,8.8,9.1,9.2,9.4,9.4,9.7,9.9,10.2,10.4,10.8,11.3,11.9)

t.test(lizard)
t.test (lizard, conf.level=0.9)


media <- mean (lizard)
hist (lizard)
abline(v=media, col="blue", lwd=2)
abline(v=8.39, col="red", lwd=4)
abline(v=9.39, col="red", lwd=4)

t.test(lizard, conf.level=0,7)

x1 <- runif(30, 37.9, 38.8)
x1

x2 <- runif(30, 36.0, 38.2)
x2

a <- c(2, 3, 4)
b <- c(8, 6, 4)

#Correlação
cor (a, b,method="pearson")
cor(a, b, method="spearman")


x1 <- c(37, 420, 117)
x2 <- c(29, 8, 3)
cor(x1,x2)


x1 <- c(1, 2, 3)
x2 <- c(2, 4, 6)

lm(formula = x2 ~ x1)

x3 <- c(3, 5, 7)
lm(formula = x3 ~ x1)

#probabilida Binominal
dbinom(3,5,0.5)