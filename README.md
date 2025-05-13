# Análise de cafés especiais utilizando SQL

Introdução

Este projeto utiliza SQL para armazenar, consultar e analisar dados de cafés especiais com base no protocolo da Specialty Coffee Association (SCA). O foco está na prática de comandos SQL fundamentais e na extração de insights sobre produtores, espécies e notas de avaliação.

Objetivo

O objetivo desse projeto foi treinar a modelagem de banco de dados relacionais e praticar comandos básicos de SQL realizando consultas a partir de um cenário fictício envolvendo cafés especiais.

Estrutura dos Dados

Solicitei à um assistente de inteligência virtual que criasse uma lista de cafés especiais avaliados de acordo com o protocolo da SCA, das safras de 2023 e 2024 e utilizando dados reais. Apesar de citar as fontes, não foi possível verificar a veracidade das informações, portanto trataremos os dados dos cafés obtidos como fictícios.
As fontes citadas foram concursos como Cup of Excellence (2023 e 2024), Coffee of the Year (2023), avaliações da SCA, Coffee Review, relatórios da Embrapa e artigos de revistas como Forbes e NeoFeed e Globo Rural.

Ferramentas utilizadas

MySQL
MySQL Workbench
SQL

Principais consultas e análises

Visando abordar a maioria dos comandos fundamentais do SQL, elaborei as seguintes consultas:
1. Listagem das notas gerais dos cafés, do maior para o menor indicando o produtor,
país de origem, espécie, variedade e nota geral. (Utilizando JOIN para relacionar cafés e produtores)
2. Quantas espécies de cada (arábica ou canéfora) foram analisadas? (Utilizando COUNT e GROUP BY)
3. Quais são os produtores com nota geral maior que 91? 
4. Quais são os produtores do Brasil com nota maior que 90? (Utilizando AND)
5. Qual a média de nota dos cafés por país (do maior para o menor)? (Utilizando AVG)
6. Quais produtores possuem nota geral maior que a média? (Utilizando subquery)
7. Quais produtores possuem nota geral maior que a média? (Utilizando outra forma com "WITH")

Estrutura do banco de dados

![Estrutura](imagens/estruturabanco.png)

Aprendizados

- Pratiquei um pouco a modelagem de dados relacionais, criando um banco de dados e tabelas, determinando cada tipo, chave primária, etc.
- Reforcei o uso de comandos básicos de SQL (SELECT, WHERE, FROM, GROUP BY, JOIN, etc).
- Iniciei o entendimento em como estruturar consultas usando subquery e CTE.
- Desenvolvi boas práticas de escrita SQL para facilitar a manutenção e colaboração futura.
- Comecei a explorar consultas mais avançadas com subqueries e CTEs, tornando minhas análises mais dinâmicas e reutilizáveis.

Próximos passos

- Aprender a integrar o banco de dados com ferramentas de visualização como Power Bi.
- Aprender a analisar mais criteriosamente os dados, visando respostas para perguntas de negócios.
- Trabalhar com uma quantidade maior de dados, e definitivamente fixar e estar totalmente familiarizado com a linguagem SQL para análises mais complexas.

Contato

[LinkedIn](https://www.linkedin.com/in/fernandomiyazato)
[Email](mailto:mztofernando@gmail.com)