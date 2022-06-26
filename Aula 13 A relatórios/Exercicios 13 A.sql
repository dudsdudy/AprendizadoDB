/*USE filmes_DB

Solução 1

SELECT titulo, SUM(id)FROM filmes 
GROUP BY titulo


solução 2 

SELECT id, titulo, SUM(premios) FROM filmes 
WHERE premios BETWEEN 3 AND 7
GROUP BY premios

Solução 3 

SELECT id, titulo, SUM(premios) FROM filmes 
WHERE premios >= 7
GROUP BY premios

SOLUCAO 4

SELECT id, COUNT(titulo), genero_id FROM filmes 
GROUP BY genero_id

SOLUCAO 5

SELECT id, COUNT(titulo), genero_id, premios FROM filmes 
WHERE premios >= 5
GROUP BY premios

*/

SELECT MAX(duracao) FROM `filmes`