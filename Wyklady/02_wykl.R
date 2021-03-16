book_b = 13
height = 8
pole_trojkata = (book_b * height)/2
pole_trojkata

2.3 + 7.7

# literaly 

TRUE
FALSE 
a=NA #brak danych 
b
x <- NULL 

# help
help("median")
example("median")

# arytmetyka 

25%%4 # reszta z dzielenie
25%/%4 # calosc z dzielenia

(128/6)+45+(2^3)

# funkcje matematyczna 
x <- c(1, 2, 3)
sum(x)
prod(2, 4) #mnozenie
mean(12, 13, 11, 15) # srednia
range(1, 10, 2, 20, 3, 30, 4, 40) # granice przedzialu
round(7.3458574, digits=3) # zaokraglenie
floor(4.8) # zaokraglenie w dol
ceiling(4.2) # zaokraglanie w gore
trunc(5.234234234284758457) # kasuje czesc dziesietna

abs(-78)
sqrt(9)

# funkcje trygonometryczne 
sin(20)
cos(20)
tan(10)

#logarytmy
log(x = 16, base = 2)

# wektory 

vector_1 <- c(1, 2, 3, 4)

wektor_logiczny <- c(FALSE, TRUE, TRUE, FALSE)
wektor_logiczny

wektor_liczb_calk <- c(1, 2, 4, 5)
wektor_liczb_zmiennoprzeczienkowycz <- c(1.2, 3.4, 2.3)
typeof(wektor_liczb_calk)

wektor_znakowy <- c('nazwa_miasta', 'populacja')
typeof(wektor_znakowy)

wektor_szalony <- c(FALSE, 3.14, "wakacje")

# len
length(wektor_szalony)
# sort
sort(wektor_liczb_zmiennoprzeczienkowycz)
# order 
order (wektor_liczb_calk) # wskazuje liczby w szeregu min-max

# min i max
min(wektor_liczb_calk)
max(wektor_liczb_calk)

mean(wektor_liczb_zmiennoprzeczienkowycz)

# odchylenie standardowe
sd(wektor_liczb_zmiennoprzeczienkowycz)
median(wektor_liczb_zmiennoprzeczienkowycz)


wektor_2 <- c(12.67, 34.78,45.23)
wektor_2 + 3
wektor_2 - 3
wektor_2 * 2
wektor_2 / 3

wektor_3 <- c(-5:5)
wektor_3

wektor_4 <- c(24:13)
wektor_4

# range jak w pythonie (start, end, szag)
seq(from = 0, to = 100, by = 5)
seq(0, 100, 20)

# powtorzenie liczby 
rep(2, times=7)
#lub
rep(2, 7)

# wygenerowanie ciag dowolnych liczb
runif(10, min=0, max=50)
rnorm(10, mean = 20, sd = 5)

zwierzeta <- c(56, 45, 32)
names(zwierzeta) <- c('koty', 'psy', 'rybki')
zwierzeta

# wypisywanie liter i misiecy
LETTERS
LETTERS[(2:5)] # od 2 litery do 5 litery
letters

month.name
month.abb
month.abb[(1:6)]
month.abb[-(4:8)]
month.abb[(12:1)]

islands
islands[(1:10)]
islands[islands>5000]
islands[islands]
names(islands)

#operacje logiczne
a <- 12
b <- 30
for_sum <- c(1, 2, 3)
sum(for_sum)


a>b
c <- TRUE
d <- FALSE

!c
c | d # lub
c & d # and (i)
