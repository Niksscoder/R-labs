# zadanie 5
help(mean)
help(hist)
# inna metoda helpa
?sqrt
?read.csv

# zadanie 6
?paste # sep, collapse, recycle0

# zadanie 7
?Titanic
Titanic
# Example from Titanic data set
require(graphics)
mosaicplot(Titanic, main = "Survival on the Titanic")
apply(Titanic, c(3, 4), sum)

?co2
co2
# Examlpe from co2 data set
require(graphics)
plot(co2, ylab = expression("Atmospheric concentration of CO"[2]),
     las = 1)
title(main = "co2 data set")

?islands
islands
# Example from islands data set
dotchart(log(islands, 10),
         main = "islands data: log10(area) (log10(sq. miles))")
dotchart(log(islands[order(islands)], 10),
         main = "islands data: log10(area) (log10(sq. miles))")

?state.name
state.name

# zadanie 8
library(help='datasets')

# zadanie 9
a <- 3
b <- -9
c <- 2
d <- 45

# zadanie 10
a + c
d - a
b / a

# zadanie 11
23 + c
a - 1

# zadanie 12
pogoda <- read.table(file="/Users/nikitaz/Documents/University/R/laboratorium_1/Pogoda.txt", header=TRUE, sep=";")
pogoda

