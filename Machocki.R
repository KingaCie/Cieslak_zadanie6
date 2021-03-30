# Zadanie 1.
install.packages("stringr")
library("stringr")
tekst1 = "TERYT 18; podkarpackie; Rzeszów; 0.2 He; A"
tekst2 = "TERYT 22; pomorskie;   Gdańsk; 12 C ; B"

str_sub(tekst1, start = 34, end = 42)
str_sub(tekst2, start = 31, end = 39)



# Zadanie 2.



  



horoskop = function(imie, miesiac){
 if (miesiac %in% c(1, 3, 5, 7, 9, 11)){
   cat(paste("Osoba o imieniu", imie, "Będzie miała jutro nieszczęście"))
 }
  else if (miesiac %in% c(2, 4, 6, 8, 10, 10, 12)){
    cat(paste("Osoba o imieniu", imie, "Będzie miała jutro szczęście"))
    }
}



horoskop("Marcel", 11)

# Zadanie 3.

horoskop = function(imie, miesiac){
  if ((str_sub(imie, start = 1, end = 1)) %in% c("K", "M", "Z")){
    cat(paste("Osoba o imieniu", imie, "Będzie miała jutro szczęście"))
}
  else if (miesiac %in% c(2, 4, 6, 8, 10, 10, 12)){
    cat(paste("Osoba o imieniu", imie, "Będzie miała jutro szczęście"))
  }
  else if  (miesiac %in% c(1, 3, 5, 7, 9, 11)){
    cat(paste("Osoba o imieniu", imie, "Będzie miała jutro nieszczęście"))
  }
}

horoskop("Kamil", 13)

# Zadanie 4.

data_pomiary = "2019-03-11: 23.5, 19/03/12: 12.7, 2019.03.13: 11.1, 2019-marzec-14: 14.3"
data_pomiary = str_replace_all(data_pomiary, pattern = "-", replacement = "/")

data_pomiary = str_replace_all(data_pomiary, pattern = "marzec", replacement = "03")

data_pomiary = str_replace(data_pomiary, pattern = "2019.03.13", replacement = "2019/03/13")
str_extract_all(data_pomiary, pattern = "[0-9]+[/]+[0-9]+[/]+[0-9]")

# Zadanie 5.
wartości = str_extract_all (data_pomiary, pattern = "[0-9]+[.]+[0-9]")
