#1) Queremos ter uma lista de todas as categorias.
#RESOLUCAO SELECT CategoriaNome FROM categorias

#2) Como as categorias não possuem imagens, você está interessado em obter apenas um Nome e descrição da lista de categorias.
#RESOLUCAO SELECT CategoriaNome, Descricao FROM categorias

#3) Obtenha uma lista dos produtos.

#RESOLUCAO SELECT ProdutoNome FROM produtos

#4) Existem produtos descontinuados? (Descontinuado = 1). Não.
#Solucao 4 SELECT ProdutoNome, Descontinuado FROM produtos
#WHERE Descontinuado = 1  

#5) Na sexta-feira, você deve se reunir com o fornecedor nr. 8. Quais são os produtos que eles fornecem? 4 produtos, chocolate e biscoitos.
# Resolucao 5SELECT ProvedorID, ProdutoNome FROM produtos
# WHERE ProvedorID = 8 

#6) Queremos saber todos os produtos cujo preço unitário se encontra
#entre 10 e 22.
#Solucao 6SELECT ProdutoNome, PrecoUnitario FROM produtos
#WHERE PrecoUnitario BETWEEN 10 AND 22
#ORDER BY PrecoUnitario ASC 

#7) Fica definido que um produto deve ser solicitado ao fornecedor se suas unidades em estoque forem inferiores ao nível de reabastecimento. Existem produtos a solicitar? Sim.

/*SELECT ProdutoNome, QuantidadePorUnidade, UnidadesEstoque, NivelReabastecimento 
FROM produtos
WHERE UnidadesEstoque >  NivelReabastecimento = 'Existem Produtos a Solicitar' */

#8) Você quer saber todos os produtos da lista anterior, mas que as unidades pedidas sejam iguais a zero.*/

/*SELECT ProdutoNome, QuantidadePorUnidade, UnidadesEstoque, UnidadesPedidas 
FROM produtos
WHERE UnidadesPedidas = 0*/

/*

1) Obtenha uma lista de todos os clientes com contato, empresa, cargo, País. Classifique a lista por país.
SELECT Contato, Empresa, Titulo AS Cargo, Pais FROM clientes
ORDER BY Pais ASC
2) Queremos atender todos os clientes que possuem o título de  “Proprietário". Esse título estará em inglês (Owner).
SELECT Contato, Empresa, Titulo AS Cargo, Pais FROM clientes
WHERE Titulo = 'Owner'

3) A operadora de telefonia atendeu um cliente e não lembra o nome dele. Sabe apenas que começa com "C". Podemos ajudá-lo a obter uma lista com
todos os contatos que começam com a letra C? 
SELECT Contato, Empresa, Titulo AS Cargo, Pais FROM clientes
WHERE Empresa LIKE 'C%'

Faturas

1) Obtenha uma lista de todas as faturas, ordenadas por data da fatura em ordem ascendente.

SELECT FaturaId, DataFatura FROM faturas
ORDER BY DataFatura ASC

2) Agora é necessário uma lista de faturas com o país de envio "EUA" e
que a FormaeEnvio seja diferente de 3.

SELECT FaturaId, DataFatura, PaisEnvio, FormaEnvio FROM faturas
WHERE PaisEnvio = 'USA' AND FormaEnvio <> 3 

3) O cliente 'GOURL' fez um pedido? Sim.
SELECT FaturaID, ClienteID FROM faturas
WHERE ClienteID = 'GOURL'

4) Você deseja visualizar todas as faturas dos funcionários 2, 3, 5, 8 e 9. 

SELECT FaturaID, ClienteID, EmpregadoID FROM faturas
WHERE EmpregadoID BETWEEN 2 AND 9

Queries I - Parte II

Nesta segunda parte, vamos intensificar a prática de consultas SELECT,
adicionando ALIAS, LIMIT e OFFSET.

Produtos

1) Obtenha a lista de todos os produtos em ordem decrescente por preço unitário.
SELECT ProdutoID, ProdutoNome, PrecoUnitario FROM produtos
ORDER BY PrecoUnitario DESC

2) Obtenha a lista dos 5 melhores produtos cujo preço unitário é o mais "Caro".


SELECT ProdutoID, ProdutoNome, PrecoUnitario FROM produtos
ORDER BY PrecoUnitario DESC
LIMIT 5 ;
3) Obtenha um top 10 dos produtos com mais unidades em estoque.
SELECT ProdutoID, ProdutoNome, PrecoUnitario, UnidadesEstoque FROM produtos
ORDER BY UnidadesEstoque DESC
LIMIT 10 ;

DetalheFatura

1) Obtenha uma lista de FaturaId, Produto, Quantidade.
SELECT FaturaId, ProdutoID, Quantidade FROM detalhefatura

2) Classifique a lista acima por Quantidade decrescente. 
SELECT FaturaId, ProdutoID, Quantidade FROM detalhefatura
ORDER BY Quantidade DESC

3) Filtre a mesma lista apenas para os produtos cuja quantidade esteja entre 50 e 100. 

SELECT FaturaId, ProdutoID, Quantidade FROM detalhefatura
WHERE Quantidade BETWEEN 50 AND 100
ORDER BY Quantidade DESC

4) Em outra nova consulta, obtenha uma lista com os seguintes nomes de coluna: Número da fatura (FaturaId), Produto (ProdutoId), Total (Preço Unitário * Quantidade)
 SELECT FaturaId, ProdutoID, PrecoUnitario * Quantidade AS Valor_Total FROM detalhefatura
 
 
 Extras

Sobrou tempo? Você quer continuar praticando?
Deixamos alguns exe   rcícios extras da mesma base:
1) Obtenha uma lista de todos os clientes que moram no “Brasil” ou “México” ou que tenham um título que começa com "Vendas" (o termo estará em inglês: ‘Sales’);
2) Obtenha uma lista de todos os clientes que pertencem a uma empresa
que comece com a letra “A”.
3) Obtenha uma lista com os seguinte dados: Cidade, Contato( renomeie para Nome e Sobrenome), Título (renomeie para Cargo), de todos os clientes que são da cidade "Madrid".
4) Obtenha uma lista de todas as faturas com ID entre 10.000 e 10.500
5) Obtenha uma lista de todas as faturas com ID entre 10.000 e 10.500 ou de
clientes com IDs começando com "B".
6) Existem notas fiscais que informam a cidade expedidora “Vancouver” ou que utilizam FormaEnvio =  3?
7) Qual é a identificação do funcionário de “Buchanan”? 5.
8) Existem Notas Fiscais com o EmpregadoId do funcionário acima? SIm muitas. */



SELECT FaturaId, ProdutoID, PrecoUnitario * Quantidade AS Valor_Total FROM detalhefatura





















