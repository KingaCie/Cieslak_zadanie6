# ZADANIE 1
library(stringr)
t1 = "TERYT 18; podkarpackie; Rzeszów; 0.2 He; A"
t2 = "TERYT 22; pomorskie;   Gdańsk; 12 C ; B"

str_sub(t2, start = -5, end = -4)

# ZADANIE 2

horoskop = function(imie, miesiac){
  if (miesiac%%2==0){
    cat(paste("Osoba o imieniu: ", imie, "będzie miała jutro szczęście"))
  }
  else {
    cat(paste("Osoba o imieniu: ", imie, "będzie miała jutro nieszczęście"))
  }
}

# ZADANIE 3
horoskop2 = function(imie, miesiac){
  if ((str_sub(imie, start = 1, end = 1))=="K" | (str_sub(imie, start = 1, end = 1))=="M" | (str_sub(imie, start = 1, end = 1))=="Z"){
    cat(paste("Osoba o imieniu: ", imie, "będzie miała jutro szczęście"))
  }
  else if (miesiac%%2==0){
    cat(paste("Osoba o imieniu: ", imie, "będzie miała jutro szczęście"))
  }
  else {
    cat(paste("Osoba o imieniu: ", imie, "będzie miała jutro nieszczęście"))
  }
}

# ZADANIE 4
t3 = "2019-03-11: 23.5, 19/03/12: 12.7, 2019.03.13: 11.1, 2019-marzec-14: 14.3"

str_extract_all(t3, pattern = "[0-9](\\-|\\.)[a-zA-Z0-9]+(\\-|\\.)[0-9]+")

# ZADANIE 5
wartosci2 = str_extract_all(t3, pattern = "\\:\\s[0-9]+\\.[0-9]")
wartosci = str_extract_all(wartosci2, pattern = "[0-9]+\\.[0-9]")
wartosci