kolor <- c("zielony", "czerwony, czarny", "niebeiski")
rozmiar <- c("S", "M", "L", "XL")
promocja <- c(T,F,F,T)
cena <- c(345,245,720)

lista_1 <- list(kolor, rozmiar, promocja, cena)
lista_1

lista_2 <- list(
  kolor <- c("zielony", "czerwony, czarny", "niebeiski"),
  rozmiar <- c("S", "M", "L", "XL"),
  promocja <- c(T,F,F,T),
  cena <- c(345,245,720)
)
lista_2

macierz_x <- matrix(c(2,45,22,3), ncol=2, nrow=2)
macierz_x

mcierz_y <- matrix(c(21,34,21,4), ncol=2, nrow=2, byrow=TRUE)
mcierz_y

wektor_a = c(3,47,2,5,12,34)
dim(wektor_a)=c(3,2)
wektor_a

tablica_wielowymiarowa <- array(data=1:30, dim=c(5,2,3))
tablica_wielowymiarowa

#wczytywanie plikow

?read.table
?read.csv
?read.csv2
?head

owoce <- read.table(file="/Users/nikitaz/Documents/University/R-labs/Wyklady/Wyklad_4/fruits.csv", header=TRUE, sep=",")
owoce

head(owoce)
head(owoce,3)
tail(owoce)

colnames(owoce)

kategorie <- c("NAME", "energy-kcal/kJ", "water/g",
               "protein/g", "total_fat/g",
               "carbohydrats/g", "fiber/g",
               "sugars/g", "calcium/mg", "iron/mg",
               "magnessium/mg", "phosphorus/mg",
               "potassium/mg", "sodium/g",
               "vitamin_A/IU", "vitamin_C/mg",
               "vitamin_B1/mg", "vitamin_B2/mg",
               "viatmin_B3/mg", "vitamin_B5/mg",
               "vitamin_B6/mg", "vitamin_E/mg")

owoce_2 <-read.table(file="/Users/nikitaz/Documents/University/R-labs/Wyklady/Wyklad_4/fruits.csv", header=TRUE, sep=",", col.names=kategorie)
owoce_2

colnames(owoce_2)

colnames(owoce)

colnames(owoce) <- gsub('[.]', '_', colnames(owoce))
colnames(owoce)

colnames(owoce) <- gsub('_', '', colnames(owoce))
colnames(owoce)

#ramek danych

turystyka <- data.frame(
  panstwo=c("Francja", "Wlk_Brytania", "Wlochy", "Czechy", "Polska"),
  stolica=c("Paryz", "Londyn", "Rzym", "Praga", "Warszawa"),
  liczba_wycieczek=c(130,68,230,40,60),
  ocena_turystow=c(5,4,6,3,4),
  rekomendacja_przewodnika=c(T,F,T,F,F),
  promocja_w=c(F,T,T,F,T)
)

turystyka

nrow(turystyka)
ncol(turystyka)
length(turystyka)
names(turystyka)
colnames(turystyka)
rownames(turystyka)
rownames(turystyka)<-c('kraj_1', 'kraj_2', 'kraj_3', 'kraj_4', 'kraj_5')
rownames(turystyka)

turystyka

colnames(turystyka)
colnames(turystyka)[5]<-'rekomendacja_eksperta'

turystyka

is.data.frame(turystyka)
is.list(turystyka)
is.matrix(turystyka)
class(turystyka)

turystyka[3]
turystyka[1:3]
turystyka[2,3]
turystyka['kraj_1','Rzym']
turystyka['kraj_3','stolica']

turystyka[[5]]
turystyka[5]

przeboje <- read.table(file="/Users/nikitaz/Documents/University/R-labs/Wyklady/Wyklad_4/top50.csv",header=TRUE,sep=",")
przeboje
head(przeboje,1)

colnames(przeboje) <- gsub('[.]','', colnames(przeboje))
colnames(przeboje)

przeboje$nazwa <- paste(przeboje$ArtistName, przeboje$TrackName, sep="-")
przeboje$nazwa

colnames(przeboje)
przeboje$Liveness <- NULL

przeboje$TrackName
przeboje$TrackName <- gsub('you', 'I', przeboje$TrackName, ignore.case = TRUE)
przeboje$TrackName

przeboje$Length
srednia <- mean(przeboje$Length)
srednia

przeboje$dlugosc <- ifelse(przeboje$Length>=srednia, "LONG", "SHORT")
przeboje$dlugosc

przeboje$dlugosc <- ifelse(przeboje$dlugosc == "LONG", 1, 0)
przeboje$dlugosc 

przeboje$Genre=='pop'
przeboje$Genre[przeboje$Genre=='pop']
filter_1 <- przeboje$Genre=='pop'
przeboje[filter_1, "TrackName"]
przeboje$TrackName[przeboje$Genre=='pop']

autorzy<-data.frame(
  inicjal=c("HS", "BP", "RM", "AM"),
  imie=c("Henryk", "Boleslaw", "Remigiusz", "Adam"),
  nazwisko=c("Sienkiewicz", "Prus", "Mroz", "Mickiewicz"),
  wspolczesny=c(F,F,T,F),
  filmowany=c(T,T,T,T)
)
autorzy

ksiazki <- data.frame(
  tytul=c("Potop", "Bieguni", "Zaginiecie", "Wesele", "Pan_Tadeusz"),
  inicjal=c("HS", "OT", "RM", "SW", "AM"),
  filmowany=c(T,F,T,T,T),
  gatunek=c("pwoiesc", "powiesc", "krymianl", "dramat", "epopeja")
)
ksiazki

merge(x=ksiazki, y=autorzy, by="inicjal")
merge(x=ksiazki, y=autorzy, by='inicjal', all=TRUE)

names(ksiazki)[4]="gatunek_literacki"
ksiazki
