library(stringr)

#zadanie1

tekst1 = list("TERYT 18; podkarpackie; Rzeszów; 0.2 He; A",
"TERYT 22; pomorskie;   Gdańsk; 12 C ; B")

str_sub(tekst1[1], start = -5, end = -4)
str_sub(tekst1[2], start = -5, end = -5)

#zadanie2

horoskop = function ( imie, miesiac ) {
  
  if ( miesiac %in% c(2,4,6,8,10,12)) {
    
    cat(paste( "Osoba o imieniu", imie , "będzie miała jutro szczęście." ))
    
  } else if ( miesiac %in% c(1,3,5,7,9,11)) {
    
    cat(paste( "Osoba o imieniu", imie , "będzie miała jutro nieszczęście."))
    
  }
}
horoskop('Maria', 7)
horoskop('Adam', 10)

#zadanie3

horoskop = function ( imie, miesiac ) {
  
  if (miesiac %in% c(2,4,6,8,10,12) | 
     (str_detect(imie, pattern = 'K') |
      str_detect(imie, pattern = 'M') |
      str_detect(imie, pattern = 'Z'))) {
    
    cat(paste( "Osoba o imieniu", imie , "będzie miała jutro szczęście." ))
    
  } else if ( miesiac %in% c(1,3,5,7,9,11)) {
    
    cat(paste( "Osoba o imieniu", imie , "będzie miała jutro nieszczęście."))
    
  }
}

horoskop('Maria', 4)
horoskop('Adam', 3)


#zadanie4

pomiary = "2019-03-11: 23.5, 19/03/12: 12.7, 2019.03.13: 11.1, 2019-marzec-14: 14.3" 

pomiary = str_replace_all(pomiary, pattern = '\\/', replacement = '\\-')

str_extract_all(pomiary, pattern = '[0-9]+(\\.|\\-)[a-zA-Z0-9]+(\\.|\\-)[0-9]+')

#zadanie5

pomiary = str_replace(pomiary, pattern = '2019.03.13', replacement = '2019/03/13')

wartosci = str_extract_all(pomiary, pattern = '[0-9]+[\\.][0-9]') 

wartosci
