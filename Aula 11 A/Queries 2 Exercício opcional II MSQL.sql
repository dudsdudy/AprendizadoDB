/* Questão 1 Mostre o título de todas as séries e use alias para que o nome do campo fique com a primeira letra maiúscula.*/ 

 /*SELECT titulo AS Titulo FROM series*/
 

#Questão 2 Busque por título de filmes com Avaliação superior a 3, com mais de 1 prêmio e com data de lançamento entre '01-01-1988' e '31-12-2009'. 
#Classifique os resultados em ordem decrescente.

 /*SELECT id, titulo, avaliacao, premios, data_lancamento FROM filmes 
 WHERE avaliacao >= 3 OR premios >= 1 OR data_lancamento BETWEEN '01-01-1988' AND '31-12-2009'
 ORDER BY premios DESC ; */
 
 #Questão3Fazer um top 3 com os filmes a partir do 10º registro da consulta anterior.  


/* SELECT id, titulo, avaliacao, premios, data_lancamento FROM filmes 
 WHERE avaliacao >= 3 OR premios >= 1 OR data_lancamento BETWEEN '01-01-1988' AND '31-12-2009'
 ORDER BY premios DESC 
LIMIT 10 ;*/ 


/*Questão4 - Quais são os 3 piores episódios considerando suas avaliações?*/

/*SELECT id, titulo, avaliacao, premios, data_lancamento FROM filmes 
 ORDER BY avaliacao ASC 
LIMIT 3 ; */


/*Liste nome, sobrenome e avaliacao da tabela Atores. Utilize Alias para mostrar o título das colunas com a 
1a letra maiúscula. Substitua o nome  da coluna id por Identificação e da coluna avaliacao por Classificação.*/

SELECT id AS Identificação, nome, sobrenome, avaliacao AS Classificação FROM atores AS Atores




 










