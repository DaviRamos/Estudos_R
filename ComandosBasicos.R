x <- c(3,4,5)
x
ls()
sum(x)
mean(x)
var(x)

s <- c(13,14,13,14,16,NA,NA, 18)
mean(s)
mean(s, na.rm = TRUE)
is.na(s)
substr("abcdefg",2,4)
y <- seq(10,30)
y
z <- 10:30
z
x <-seq(10,40,2)
x
rep(z,20)

num_matrix <- seq(5,100,5)
num_matrix

#Criar a Matriz
dim(num_matrix) <-c(5,4)
num_matrix

#Trocar Psocção da Linha e coluna (Transpor)
t(num_matrix)

#Outra Formad e crair matrizes
num_matrix <- matrix(seq(5,100,5),nrow = 5)
num_matrix

#Preencher a Matriz por Linhas
num_matrix <- matrix(seq(5,100,5),nrow = 5, byrow = T)
num_matrix

num_matrix[5,4]

#Fatores
eye_color <- c(2,2,4,1,5,5,5,6,1,3,6,3,1,4)

feye_color <- factor(eye_color)

levels(feye_color) <- c("amber","blue","brow","gray","green","hazel")

feye_color

empathy_score <- c(15,21,45,32,61,74,53,92,83,22,67,55,42,44)

#Listas
eyes_and_empathy <- list(eyes_code=eye_color, eyes=feye_color, empathy=empathy_score)
eyes_and_empathy

eyes_and_empathy$empathy

eyes_and_empathy$empathy[4]

t.result <- t.test(eyes_and_empathy$empathy, mu = 30)
t.resuldata.name

#DataFrame

e<- data.frame(eye_color,feye_color,empathy_score)
e
e[7,3]
e[7,2]
e[7,1]
e[7,]

edit(e)


e.blue <- e$empathy_score[e$eye_color == "blue"]
e.green <- e$empathy_score[e$eye_color == "green"]
e.hazel <- e$empathy_score[e$eye_color == "hazel"]

e.averages <- c(mean(e.blue),mean(e.green), mean(e.hazel))

e.amounts <- c(length(e.blue), length(e.green), length(e.hazel))

colors <- c("blue","green","hazel")

e.averages.frame <- data.frame(color=colors, average=e.averages, n=e.amounts)

e.averages.frame

library(MASS)
edit(anorexia)

anorexia$Postwt-anorexia$Prewt

t.test(anorexia$Postwt-anorexia$Prewt, mu=0)
