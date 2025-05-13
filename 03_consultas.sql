/* 1. Listagem das notas gerais dos cafés, do maior para o menor indicando o produtor,
país de origem, espécie, variedade e nota geral.*/

SELECT
	p.fazenda_produtor,
    p.origem, 
    c.especie, 
    c.variedade, 
    c.nota_geral_SCA
FROM cafes_especiais as c
LEFT JOIN produtores as p
ON c.id_produtores = p.id_produtores
ORDER BY nota_geral_SCA DESC;

-- 2. Quantas espécies de cada (arábica ou canéfora) foram analisadas?

SELECT especie, COUNT(*)
FROM cafes_especiais
GROUP BY especie;

-- 3. -- Quais são os produtores com nota geral maior que 91?

SELECT 
	p.fazenda_produtor AS produtor,
	p.origem, 
    c.variedade,
	c.nota_geral_SCA
FROM produtores AS p
LEFT JOIN cafes_especiais AS c
ON p.id_produtores = c.id_produtores
WHERE nota_geral_SCA > 91
ORDER BY nota_geral_SCA DESC;

-- 4. Quais são os produtores do Brasil com nota maior que 90?

SELECT 
	p.fazenda_produtor AS produtor,
	p.origem, 
    c.variedade,
	c.nota_geral_SCA
FROM produtores AS p
LEFT JOIN cafes_especiais AS c
ON p.id_produtores = c.id_produtores
WHERE origem = "Brasil" AND nota_geral_SCA > 90;

-- 5. Qual a média de nota dos cafés por país (do maior para o menor)?

SELECT
    p.origem AS país,
    AVG(c.nota_geral_SCA) as media_nota
FROM cafes_especiais AS c
LEFT JOIN produtores AS P
ON c.id_produtores = p.id_produtores
GROUP BY p.origem
ORDER BY media_nota DESC;

-- 6. Quais produtores possuem nota geral maior que a média? (Utilizando subquery)

SELECT id_cafe, id_produtores, nota_geral_SCA
FROM cafes_especiais
WHERE nota_geral_SCA > (SELECT
	AVG(nota_geral_SCA)
FROM cafes_especiais);

-- 7. Quais produtores possuem nota geral maior que a média? (outra forma [WITH])

WITH MediaNotas AS (
    SELECT AVG(nota_geral_SCA) AS media_geral
    FROM cafes_especiais
)
SELECT
    id_cafe, id_produtores, nota_geral_SCA
FROM cafes_especiais, MediaNotas
WHERE nota_geral_SCA > MediaNotas.media_geral
ORDER BY nota_geral_SCA DESC