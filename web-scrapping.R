#Placar do jogo
library(rvest)
library(xml2)
library(stringr)

url<- 'https://noticias.bol.uol.com.br/esporte/campeonato/brasileirao/2016/jogos/'

webpage<- read_html(url)

res_html <- html_nodes(webpage,'.confronto')

res_data <- html_text(res_html)

res_data<- str_replace_all(res_data, "[\r\n]", "")

head(res_data)

read_ht
