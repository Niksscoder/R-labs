make_df <- data.frame(
  name=c('Toyota','Ford','Fiat','Nissan'), 
  country=c('Japan','USA','Italy','Japan'),
  president=c('Akio Toyoda','William Clay Ford Junior','John Elkann',NA), 
  is_Europe=c(F,F,T,F)
)
make_df
brand_df <- data.frame(
  name=c('Corolla','Auris','Mondeo','Sedicci','Cinquecento','Tipo','Astra'), 
  make=c('Toyota','Toyota','Ford','Fiat','Fiat','Fiat', 'Opel'), 
  available=c(F,T,F,F,F,T,T),
  mileage=c(56,13,400,30,84,120,10),
  is_Europe = c(T,T,F,T,T,T,T)
)
#zadanie_1

merge(x=make_df,y=brand_df,by.x='name',by.y='make',all=TRUE)
merge(x=make_df,y=brand_df,by.x='name',by.y='make',all.x=TRUE)
merge(x=make_df,y=brand_df,by.x='name',by.y='make',all.y=TRUE)
merge(x=make_df,y=brand_df,by='is_Europe',suffixes=c('_make','_brand'))
merge(x=make_df,y=brand_df,by.x='name',by.y='make',suffixes=c('_make','_brand'),all=TRUE)
#zadanie_2
result <- merge(x=make_df,y=brand_df,by.x='name',by.y='make',suffixes=c('_make','_brand'),all=TRUE)
result
result[c('is_Europe_make','is_Europe_brand','mileage')]
#zadanie_3
make1 <-data.frame(
  name=c('Toyota','Ford','Fiat','Nissan'),
  country=c('Japan','USA','Italy','Japan'),
  president=c('Akio Toyoda','William Clay Ford Junior','John Elkann',NA),
  is_Europe=c(F,F,T,F)
)
wektor <-data.frame(location=c('Toyota','Dearborn','Torino','Jokohama'))
cbind(make1,wektor)
#zadanie_4
make2 <-data.frame(
  name=c('Mercedes','Renault','Nissan'),
  country=c('Germany','France','Japan'),
  president=c(NA,NA,NA),
  is_Europe=c(T,T,F)
)

#zadanie_5
intersect(make1$name,make2$name)
union(make1$name,make2$name)
setdiff(make1$name,make2$name)
setequal(make1$name,make2$name)

#zadanie_6
owoce <- read.csv2(file ="/Users/nikitaz/Documents/University/R-labs/Laborotarium_05/fruits.csv",header=TRUE,sep=",")
#zadanie_7
uporzadkowanie <- aggregate(owoce$protein..g.,by=list(owoce$water..g.),FUN=mean)
uporzadkowanie
#zadanie_8
subset(owoce$name,owoce$water..g.>90)
#zadanie_9
split(owoce,owoce$vitamin.C..mg.)
#zadanie_10
table(owoce$carbohydrates..g.)
      