#ramka danych

lekarze <- data.frame(
  inicjal=c("MK", "AN", "EC", "ZS", "ZK"),
  imie=c("Marek", "Anna", "Ewa", "Zygmunt", "Zbigniew"),
  nazwisko=c("Kowalski", "Nowak", "Cebula", "Staron", "Kwiecien"),
  miejscowosc=c("Krakow", "Gdynia", "Poznan", "Krakow", "Wroclaw"),
  szczepiony=c(T,T,F,F,T),
  fundusz=c(T,T,T,F,F)
)
lekarze

uslugi <- data.frame(
  inicjal=c("ZK", "MK", "RS", "DS", "AN"),
  usluga=c("chirurgia", "okulistyka", "diabetologia", "kardiologia", "dermatologia"),
  fundusz=c(T,T,F,F,T),
  skierowanie=c(T,T,T,T,T)
)
uslugi

merge(x=uslugi, y=lekarze, by='inicjal')
merge(x=uslugi, y=lekarze, by='inicjal', all=TRUE)
merge(x=uslugi, y=lekarze, by='inicjal', all.x=TRUE)
merge(x=uslugi, y=lekarze, by='inicjal', all.y=TRUE)

merge(x=uslugi, y=lekarze, by='inicjal', suffixes = c('_usluga', '_lekarze'))

merge(x=uslugi, y=lekarze, by='inicjal')[c('usluga', 'skierowanie')]

specjalnosci_1 <- uslugi[1:3,]
specjalnosci_2 <- uslugi[3:4,]
specjalnosci_1
specjalnosci_2

merge(specjalnosci_1, specjalnosci_2, all=TRUE)
rbind(specjalnosci_1, specjalnosci_2)

informacje <- data.frame(
  lata_pracy=c(9,5,12),
  weekend=c(T,F,F)
)
informacje
specjalnosci_1

cbind(specjalnosci_1, informacje)
obiekt_x <- cbind(specjalnosci_1, informacje)
obiekt_x

specjalnosci_1
specjalnosci_2

union(specjalnosci_1$usluga, specjalnosci_2$usluga)
intersect(specjalnosci_1$usluga, specjalnosci_2$usluga)
setdiff(specjalnosci_1$usluga, specjalnosci_2$usluga)
setequal(specjalnosci_1$usluga, specjalnosci_2$usluga)
is.element('okulistyka', specjalnosci_1$usluga)
'diabetologia' %in% specjalnosci_2$usluga

#filtrowanie danych

bmi <- read.table(file="C:/Users/hp/Downloads/Dane/BMI.csv", header=TRUE, sep=",")
bmi

table(bmi$Gender)
table(bmi$Height)

plot(table(bmi$Height))

min(floor(bmi$Height)/10)*10
max(bmi$Height)+9

seq(from=min(floor(bmi$Height)/10)*10,
    to=max(bmi$Height)+9,
    by=10)

przedzialy = seq(from=min(floor(bmi$Height)/10)*10,
                 to=max(bmi$Height)+9,
                 by=10)

cut(bmi$Height, przedzialy)

table(cut(bmi$Height, przedzialy))

plot(cut(bmi$Height, przedzialy))

uporzadkowanie <- aggregate(bmi$Height, by=list(bmi$Index), FUN=mean)
uporzadkowanie

alkohole <- read.csv(file="C:/Users/hp/Downloads/Dane/drinks.csv", header=TRUE, sep=",")
alkohole
colnames(alkohole)

subset(alkohole, alkohole$wine_servings>=50)
subset(alkohole, alkohole$wine_servings>=50 & alkohole$beer_servings>200)
subset(alkohole, select=('wine_servings'))

alkohole$wodka <- alkohole$spirit_servings/100
alkohole$wodka

split(alkohole, alkohole$total_litres_of_pure_alcohol)

piwo_wodka <- aggregate(alkohole$beer_servings, by=list(alkohole$spirit_servings), FUN=mean)
piwo_wodka

colnames(piwo_wodka) <- c('wodka', 'piwo')
piwo_wodka

spanie <- read.csv (file="C:/Users/hp/Downloads/Dane/SleepStudyData.csv", header=TRUE, sep=",")
spanie

table(spanie$Tired)
table(spanie$Tired, spanie$Hours)
table(spanie$Tired, spanie$Hours, spanie$Breakfast=="Yes")

spanie$Tired[spanie$Hours>=5]

#konwersje obiektow

a<- c(23,56,32,12,6,32)
as.list(a)
as.matrix(a)
as.data.frame(a)

b<-list(34,67,43,21)
b
unlist(b)
as.vector(b)
as.matrix(b)
as.data.frame(b)

c<-matrix(c(23,56,21,45,32,98), nrow=2, ncol=3)
c
as.vector(c)
as.list(c)
as.data.frame(c)

d<-data.frame(
  aaa=c(34,56,43),
  bbb=c(34,23,45)
)
d
as.list(d)
as.matrix(d)
as.vector(d)
d[[1]]
d[1,]
d[,1]
