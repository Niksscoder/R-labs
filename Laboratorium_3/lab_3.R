#zadanie_1
lista_1 <- list(kolor=c("zielony", "czerwony", "czarny", "niebieski"),
                rozmiar=c("S", "M", "L", "XL"),
                promocja=c(TRUE,FALSE,FALSE,TRUE),
                cena=c(345,245,720))
#zadanie_2
names(lista_1) <- c('kolor','rozmiar','promocja','cena')
lista_1

#zadanie_3
lista_1$kolor

#zadanie_4
lista_film <- list(tytul="Spider-man: Far from home",
                   gatunek="fikcja",
                   czas_trwania="3:30")
#zadanie_5
lista_film[3]

#zadanie_6
lista_film$nazwisko_rezysera <- "Jon Watts"

#zadanie_7
lista_film

#zadanie_8
macierz_1 <- matrix(c(2, 3, 5, 2, 12, 32, 1, 89, 43, 2, 34, 21, 21, 15, 43, 21, 34, 45),ncol=6,nrow=3,byrow=TRUE)
macierz_1

#zadanie_9
rownames(macierz_1) <- c('wynik1', 'wynik2', 'wynik3')
colnames(macierz_1) <- c(2015, 2016, 2017,2018,2019,2020)

#zadanie_10
macierz_1[,2]
macierz_1[3,]
macierz_1[2,5]

#zadanie_11
cbind(0:4,5:9,10:14)

#zadanie_12
rbind(1:5,6:10,11:15)

#zadanie_13
as.vector(macierz_1)

#zadanie_14
?HairEyeColor
dim(HairEyeColor)

#zadanie_15
HairEyeColor[1,2,1]
HairEyeColor[3,4,2]
HairEyeColor[,,2]

#zadanie_16
macierz_A <- rbind(
  c(82,45,59,47,0),
  c(82,29,40,56,2),
  c(1,24,58,23,53))
macierz_B <- rbind(
  c(21,11,0,79,59),
  c(76,NA,29,51,79),
  c(76,67,29,15,28))
macierz_C <- rbind(
  c(55,85,2,72,91),
  c(99,57,55,50,95),
  c(33,64,69,23,79))
macierz_D <- rbind(
  c(54,11,8,57,19),
  c(14,93,NA,NA,62),
  c(60,43,44,0,91))
column_names <- c(2015:2019)
row_names <- c("Category A","Category B", "Category C")
matrix_names <- c("Client 1", "Client 2", "Client 3", "Client 4")
tablica <- array(c(macierz_A, macierz_B, macierz_C, macierz_D),
                 dim = c(3,5,4),
                 dimnames = list(row_names, column_names, matrix_names))
tablica

