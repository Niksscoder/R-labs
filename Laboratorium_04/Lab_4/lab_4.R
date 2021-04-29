# zadanie 1
studenci <- read.table(file = "/Users/nikitaz/Documents/University/R-labs/Laboratorium_04/Lab_4/Studenci.txt", header=TRUE, sep=";", dec=",")
studenci

# zadanie 2
studenci$Nazwa_studenta[studenci$ocena_koncowa == "ZAL"]

#zadanie 3
kawy <- data.frame(
  nazwa=c("Caffe Americano", "Cafe Latte", "Cappuccino", "Espresso", 
             "Flat white", "Macchiato"),
  skladniki=c(NA, "steamed milk","steamed milk + foamy milk + chocolate",NA,
                 "cream milk", "steamed milk"),
  kraj=c("USA", "Francja", "Włochy", "Włochy", "Nowa Zelandia", "Włcohy"),
  temperatura=c("gorąca", "gorąca", "średnia", "gorąca", "gorąca", "gorąca"),
  cena=c(7,10,10,8,12,10)
)
# zadanie 4.1
kawy
# zadanie 4.2
kawy[1, ]
# zadanie 4.3
kawy$skladniki[3]
#zadanie 4.4
lista_kawy <- c(kawy$nazwa, kawy$kraj, kawy$cena)
lista_kawy

# zadanie 5
whisky <- read.table(file="/Users/nikitaz/Documents/University/R-labs/Laboratorium_04/Lab_4/scotch_score.csv", header = TRUE, sep=",")
whisky

#zadanie 6
colnames(whisky) <- gsub('[.]','_', colnames(whisky))
colnames(whisky)

#zadanie 7
origin <- paste(whisky$REGION, whisky$DISTRICT, sep = ":")
whisky <- cbind(whisky, origin)

#zadanie 8
whisky$origin

#zadanie 9
spanie <- read.table(file="/Users/nikitaz/Documents/University/R-labs/Laboratorium_04/Lab_4/SleepStudyData.csv", header = TRUE, sep=",")
spanie

#zadanie 10.1 
wektor <- ifelse(spanie$Tired >= 3, T, F)
wektor

#zadanie 10.2
inf_breakfast <- spanie$Breakfast[spanie$Tired >= 3]
inf_breakfast

#zadanie 10.3
srednia_tired <- mean(spanie$Tired)
srednia_tired

