-- 1. Criando a tabela dos cafés

CREATE TABLE cafes_especiais (
		id_cafe INTEGER PRIMARY KEY,
        id_produtores INTEGER,
        espécie VARCHAR(100),
        variedade VARCHAR(100),
        acidez FLOAT,
        aroma FLOAT,
        sabor FLOAT,
        nota_geral_SCA FLOAT
);

-- 2. Criando a tabela dos produtores

CREATE TABLE	produtores (
		id_produtores INTEGER PRIMARY KEY,
        nome VARCHAR(100),
        origem VARCHAR(100)
        
);
