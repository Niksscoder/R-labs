# zadanie 1
5 + 5
5 + 5,5
5 + 5.5

# zadanie 2
1+1
10-3
2*4
10/2
2^3
4*2+3
4+2^3
log(10)
sqrt(125) 
log(100) 
sin(30*pi/180) 
1/(2*sqrt(45*89))
25^(0.5)

# zadanie 3
sqrt(9)

# zadanie 4
10 / 2
10 %% 2
10 %/% 2

# zadanie 5
20 %% 3

# zadanie 6,7,8,9,10
cos(pi)
round(4.27649245, digits=3)
floor( 6.33425234)
ceiling(7.132905728452)
abs(-34)

# zadanie 11
przykład_11 <- c(4, 7, 0, 3, 2, 4, 7, 8, 9, 2, 1, 5, 7)

# zadanie 12
summa = sum(przykład_11)
summa
srednia = mean(przykład_11)
srednia
iloczyn = prod(przykład_11)
iloczyn
iloczyn2 = przykład_11 * przykład_11
iloczyn2
len = length(przykład_11)
len
range(przykład_11)
maksymalna_liczba = max(przykład_11) 
minimalna_liczba = min(przykład_11)
roznica = maksymalna_liczba - minimalna_liczba
roznica
sortowanie = sort(przykład_11)
sortowanie
przykład_11[przykład_11 > 3]
sum(przykład_11[przykład_11 > 3])

# zadanie 13
wektor_1 <- c(14, 18, 20, 8, 1)
names(wektor_1) <- c("wartosc_1", "wartosc_2", "wartosc_3",
                     "wartosc_4", "wartosc_5")
wektor_2 <- c(10, 2, 3, 4, 8)
names(wektor_2) <- c("wartosc_1", "wartosc_2", "wartosc_3",
                     "wartosc_4", "wartosc_5")
wektor_2
iloczyn_wektorow = wektor_1 * wektor_2
iloczyn_wektorow

# zadanie 14
lata_pracy <- c(7, 34, 12, 2, 8, 23, 18, 11, 6, 5)
names(lata_pracy) <- c("Egor", "Michał", "Radosław", "Kuba", "Dominik", 
                       "Aneta", "Andzej", "Artem", "Agnieszka", "Sebastian")
lata_pracy

# zadanie 15
(0:30)

# zadanie 16
seq(from = 0, to = 50, by = 5)

# zadanie 17
(-10:10)

# zadanie 18
seq(12,from = 0, to = 40)

# zadanie 19
runif(5)

# zadanie 20
rnorm(10)

#zadanie 21
month.abb[-(3:5)]

# zadanie 22
month.abb[(11:4)]

# zadanie 23
a <- 7
b <- 15
pole_prostokata <- (a*b)/2
pole_prostokata

# zadanie 24
podstawa_a <- 5
podstawa_b <- 6
wysokosc <- 3
pole_trapezu <- ((podstawa_a + podstawa_b) * wysokosc) / 2
pole_trapezu

# zadanie 25
przyklad_25 <- trunc(runif(8, 0, 23))
przyklad_25

# zadanie 26
przykład_26 <- floor(runif(7, 0, 45))
names(przykład_26) <- c(month.abb[(5)], month.abb[(6)], month.abb[(7)], 
                        month.abb[(8)], month.abb[(9)], month.abb[(10)],
                        month.abb[(11)])
przykład_26

# zadanie 27
diff(przyklad_26)

# zadanie 28
w_eurach <- 6000
kurs <- 4.45
wynik_w_zlotych <- w_eurach * kurs
wynik_w_zlotych

# zadanie 30 
bok_a <- 7
h <- 5
pole_trojkata <- (bok_a * h)/2
pole_trojkata
