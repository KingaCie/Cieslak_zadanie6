#1
install.packages("stringr")
tekst1 = "TERYT 18; podkarpackie; Rzeszow; 0.2 He; A"
tekst2 = "TERYT 22; pomorskie;   Gdansk; 12 C ; B"
str_sub(tekst1, start = 34, end = 42)
str_sub(tekst2, start = 31, end = 39)
#2
horoskop = function(imie, miesiac){
  if(miesiac %in% c(1, 3, 5, 7, 9, 11)){
    cat(paste("Osoba o imieniu", imie, "b?dzie mia?a jutro nieszcz??cie"))
    
  }
  else if(miesiac %in% c(2, 4, 6, 8, 10 ,12)){
    cat(paste("Osoba o imieniu", imie, "b?dzie mia?a jutro szcz??cie"))
    
  }
}
horoskop ("Maciej", 8) #szcz??cie
horoskop ("Maciej", 1) #nieszcz??cie
#3
horoskop = function(imie, miesiac){
  if((str_sub(imie, start = 1, end = 1)) %in% c("K", "M", "Z")){
    cat(paste("Osoba o imieniu", imie, "b?dzie mia?a jutro szcz??cie"))
  }
  else if(miesiac %in% c(2, 4, 6, 8, 10, 12)){
    cat(paste("Osoba o imieniu", imie, "b?dzie mia?a jutro szcz??cie"))
  }
  else if(miesiac %in% c(1, 3, 5, 7, 9, 11)){
    cat(paste("Osoba o imieniu", imie, "b?dzie mia?a jutro nieszcz??cie"))
  }
}
horoskop ("Maciej", 1) #szcz??cie
horoskop ("Bartek", 3) #nieszcz??cie
horoskop ("Krzysztof", 7) #szcz??cie
#4
dane = "2019-03-11: 23.5, 19/03/12: 12.7, 2019.03.13: 11.1, 2019-marzec-14: 14.3"
dane = str_replace_all (dane, pattern = "marzec", replacement = "03")
dane = str_replace_all (dane, pattern = "-", replacement = "/")
dane = str_replace (dane, pattern = "2019.03.13", replacement = "2019/03/13")
str_extract_all (dane, pattern = "[0-9]+[/]+[0-9]+[/]+[0-9]")
#5
dane = str_replace(dane, pattern = "2019.03.13", replacement = "2019/03/13")
wartosci = str_extract_all(dane, pattern = "[0-9]+[\\.][0-9]")




