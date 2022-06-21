
# ex 1 - Os gerentes da Musimundos estão pensando em uma expansão nos negócios e precisam saber quais são os clientes cadastrados na empresa. 

# select * from clientes

# ex 2 - Where y Order By #2 - Clientes dos Estados Unidos
#Agora que temos os nomes dos clientes, precisamos que você obtenha apenas os que são dos EUA.
#Informe o nome do terceiro cliente que apareceu na sua consulta (MICHELLE)


## SELECT 	pais, nome FROM clientes WHERE pais = 'USA'

## Where y Order By #3 – Canções semi-largas
##Vamos melhorar um pouco a seleção. O departamento de música pede um relatório de músicas 
##cuja duração seja entre 200.000 e 300.000 milissegundos. Você se anima?
##Por favor, informe o nome da quinta música que você obteve (ICE CREAM MAN)

#SELECT nome,id,duracao_milisegundos FROM cancoes 
#WHERE duracao_milisegundos BETWEEN '200000' AND '300000'
#ORDER BY duracao_milisegundos ASC

#Where y Order By #4 - Clientes que falam espanhol
#URGENTE! Uma banda argentina acaba de lançar um álbum e nos pediu uma lista de clientes que falam espanhol 
#para que pudessem divulgar seu produto. Solicitamos que obtenha uma lista de clientes cujo país de origem é a Espanha ou a Argentina. Sorte neste desafio!
#Informe o nome do primeiro cliente listado ( Diego Gutiérrez).

#SELECT nome,sobrenome,pais,telefone FROM clientes
#WHERE pais IN ('Argentina','Mexico')


