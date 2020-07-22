edit(Cars93)

hist(Cars93$Price, probability = TRUE, xlab = "price", xlim = c(0,70), main = "Price of 93 Models of 1993 cars")

lines(density(Cars93$Price))

table(Cars93$Type)

barplot(table(Cars93$Type))

barplot(table(Cars93$Type),xlim = c(0,25),xlab = "Type",ylab = "Frequencia",axis.lty =  2 ,space = .05)

pie(table(Cars93$Type))

type.frame <- data.frame(table(Cars93$Type))
dotchart(type.frame$Freq, type.frame$Var1)

boxplot(Cars93$Horsepower~Cars93$Cylinders,xlab = "Cylinders",ylab = "Horsepower")
