getwd()

x <- c(3,4,5)

x

ls()

sum(x)

mean(x)

var(x)

#vetores
capacidade <- c(14,13,14,13,16,NA,NA,20,NA)

mean(capacidade)

mean(capacidade, na.rm = TRUE)

is.na(capacidade)

?substr

substr("abcdefgh",2,4)

substr(stop = 4, "abcdefgh", start = 2)

sumofsquares <- function(x,y,z){ #Lista de argumentos
  sumsq <- sum(c(x^2,y^2,z^2))
  return(sumsq)
}

sumofsquares(3,4,5)

stooges <- c("Moe","Larry","Curly")

stooges[2]

y <- seq(10,30)

y

w <- seq(10, 30,2)
w

#Matrizes
num_matrix <- seq(5,100,5)

dim(num_matrix) <- c(5,4)
num_matrix

num_matrix <- matrix(seq(5,100,5), nrow = 5)
num_matrix

num_matrix <- matrix(seq(5,100,5), nrow = 5, byrow = T)
num_matrix

num_matrix[5,]


eye_color <- c(2,2,4,1,5,5,5,6,1,3,6,3,1,4)

#Fatores
feye_color  <- factor(eye_color)

levels(feye_color) <- c("amber","blue","brow","gray","green","hazel")

feye_color


empathy_score <- c(15,21,45,32,61,74,53,92,83,22,67,55,42,44)

#listas
eyes_and_empathy <- list(eyes_code=eye_color,
eyes=feye_color, empathy=empathy_score)

eyes_and_empathy

eyes_and_empathy$empathy

eyes_and_empathy$empathy[4]

t.result <- t.test(eyes_and_empathy$empathy, mu = 30)

t.result

t.result$data.name
t.result$p.value
t.result$statistic

#Data Frames

e <- data.frame(eye_color,feye_color,empathy_score)
e

e[7,3]
e[7,]

edit(e)

e.blue <- (e$empathy_score[e$feye_color=="blue"])

e.green <- (e$empathy_score[e$feye_color=="green"])

e.hazel <- (e$empathy_score[e$feye_color=="hazel"])

e.averages <- c(mean(e.blue), mean(e.green), mean(e.hazel))

e.amounts <- c(length(e.blue), length(e.green), length(e.hazel))

colors <- c("blue","green","hazel")

e.averages.frame <- data.frame(color=colors,averages=e.averages, n=e.amounts)
e.averages.frame
