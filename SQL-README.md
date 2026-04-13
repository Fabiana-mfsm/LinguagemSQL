# 1. Linguagem SQL
## 1.1 O que é SQL?
- SQL significa Linguagem de Consulta Estruturada.
- É frequentimente pronunciado como SeQuel.
- É usada para interagir com dados armazenados em bancos de dados, permitindo que os usuários façam cálculos complexos como encontrar "Gasto Total?" em grandes conjuntos de dados.

## 1.2 Por que aprender SQL?
- **Falar com Dados:** Permite comunicar diretamente com sistemas de dados.
- **Alta Demanda:** Há uma demanda por habilidades em SQL em várias funções técnicas.
- **Caminhos de Carreira:** Essencial para Desenvolvedores de Software, Analistas de Dado, Cientistas de Dados e Engenheiros de Dados.
- **Padrão da Indústria:** É uma linguagem padrão usada com ferramentas como Power BI, Tableau, Kafka, Spark e Synapse.

## 1.3 Sistema de Gerenciamento de Banco de Dados(DBMS)
- **Um DBMS (Sistema de Gerenciamento de Banco de Dados)** atua como interface entre o usuário e o banco de dados.
  - **Hospedagem do Servidor:** Os bancos de dados normalmente são hospedados em um servidor ou na nuvem.
  - **Disponibilidade 24/7:** Esses sistemas geralmente funcionam o tempo todo para garantir que os dados estejam sempre acessíveis.
  - **Interação:** Aplicativos (APP </>),ferramentas de BI (Power BI) e usuários enviam consultas SQL ao DBMS para gerenciar e recuperar dados.

## 1.4 Tipos de Bancos de Dados
| Categoria     | Exemplos |
|--------------|----------|
| Relacional   | Microsoft SQL Server, MySQL, PostgreSQL, Amazon Redshift |
| Documento    | MongoDB |
| Grafo        | Neo4j |
| Chave-Valor  | Redis, Amazon DynamoDB |
| Base de Coluna | Apache Cassandra |

## 1.5 Estrutura de Banco de Dados
- Bancos de dados relacionais seguem uma organização hierárquica:
  - **Servidor:** O host principal contendo um ou mais bancos de dados.
  - **Banco de Dados:** Contêiner de alto nível para dados, como “Vendas” ou “RH”.
  - **Esquema:** Agrupamentos lógicos dentro de um banco de dados, como “Pedidos” ou “Clientes”.
  - **Tabela:** Onde os dados são fisicamente armazenados em linhas e colunas.

## 1.6 Componentes de uma Tabela
- **Colunas:** Categorias verticais definindo tipos de dados.
- **Linhas:** Registros horizontais individuais.
- **Célula:** Uma unidade única de dado na interseção de linha e coluna.
- **Chave Primária:** Identificador único para cada registro em uma tabela.
- **Armazenamento:** Tabelas são armazenadas como arquivos de banco de dados em disco físico.

## 1.7 Tipos de Dados
- SQL usa tipos de dados específicos para definir que tipo de informação pode ser armazenada:
- #### Numéricos
  - **``INT``**  – Números inteiros.
  - **``DECIMAL``** – Valores numéricos com frações.
- #### Texto/String
    - **``CHAR``** – Strings de comprimento fixo.
    - **``VARCHAR``** – Strings de comprimento variável.
- #### Data & Hora
    - **``DATE``** – Formato ‘YYYY-MM-DD’.
    - **``TIME``** – Formato ‘HH:MM:SS’.

# 2. Tipos de Comando SQL
## 2.1 DDL (Linguagem de Definição de Dados)
- Usada para definir ou modificar a estrutura do banco de dados.
  - **``CREATE``** – Criar novos bancos de dados ou tabelas.
  - **``ALTER``** – Modificar a estrutura existente.
  - **``DROP``** – Deletar um banco ou tabela.

## 2.2 DQL (Linguagem de Consulta de Dados)
- Usada para recuperar dados do banco de dados.
  - **``SELECT``** – O comando principal para buscar dados.

## 2.3 DML (Linguagem de Manipulação de Dados)
- Usada para gerenciar dados dentro das tabelas.
  - **``INSERT``** – Adicionar novos registros.
  - **``UPDATE``** – Modificar registros existentes.
  - **``DELETE``** – Remover registros.

## 2.4 DCL (Linguagem de Controle de Dados)
- Usada para gerenciar permissões e controle de acesso.
  - **``GRANT``** – Concede privilégios de acesso.
  - **``REVOKE``** – Revoga privilégios.

## 2.5 TCL (Linguagem de Controle de Transações)
- Usada para gerenciar transações no banco de dados.
  - **``COMMIT``** – Salva mudanças permanentemente.
  - **``ROLLBACK``** – Desfaz mudanças se ocorrer um erro.
  - **``SAVEPOINT``** – Define um ponto para rollback parcial.

# 3. DDL - Linguagem de Definição de Dados
## 3.1 DDL (Linguagem de Definição de Dados)
- **DDL** significa Data Definition Language (Linguagem de Definição de Dados).
- Enquanto o **DQL** é usado para consultar dados e o **DML** é usado para manipular dados, o **DDL** é usado para definir a estrutura dos nossos objetos de dados (o "esqueleto" do banco de dados).

## 3.2 Operações Principais de DDL
- O **DDL** permite que você gerencie a **planta estrutural (blueprint)** do seu banco de dados através de três ações principais:
  - **CREATE** - Usado para construir novos objetos (Bancos de Dados ou Tabelas) do zero.
  - **ALTER** - Usado para modificar a estrutura de um objeto existente (ex: adicionar uma nova coluna a uma tabela).
  - **DROP** - Usado para excluir permanentemente um objeto e todos os seus dados.

## 3.3 Criando Objetos (CREATE)
- **``CREATE DATABASE Sales``** - Para começar um novo projeto, primeiro criamos um contêiner para nossas tabelas.
- **``CREATE TABLE``** - Ao criar uma tabela, devemos definir as Colunas e seus Tipos de Dados associados.
- **``CREATE TABLE Products (``**
  - **``ProductID INT,``**
  - **``ProductName VARCHAR(100),``**
  - **``Price DECIMAL``**
  - **``);``**

## 3.4 Modificando Objetos (ALTER)
* Se os requisitos mudarem, usamos o comando **ALTER** para atualizar a estrutura sem excluir a tabela.
- #### **Adicionar uma Coluna**
  - **``ALTER TABLE Products``**
  - **``ADD Category VARCHAR(50);``**

- #### **Remover uma Coluna**
  - **``ALTER TABLE Products``**
  - **``DROP COLUMN Price;``**

## 3.5 Excluindo Objetos (DROP)
- O comando **DROP** é destrutivo. Ele remove toda a estrutura e todos os registros armazenados nela.
- **``DROP TABLE Products;``**

## 3.6 Tabela Resumo de DDL
| Comando | Ação                | Objeto Afetado |
|--------|---------------------|----------------|
| CREATE | Construir novo      | Banco de Dados, Tabela, Schema |
| ALTER  | Modificar existente | Colunas, Tipos de Dados |
| DROP   | Excluir             | Banco de Dados, Tabela, Schema |

# 4. DML - Linguagem de Manipulação de Dados
## 4.1 DDL (Linguagem de Definição de Dados)
- Nós usamos **DML (Data Manipulation Language)** para alterar os dados reais armazenados dentro de nossas tabelas. Enquanto a DDL define o "recipiente", a DML nos permite gerenciar o conteúdo interno.

## 4.2 Operações Principais de DML
- Nós contamos com três comandos primários para manipular nossos dados:
  - **``INSERT``**: Nós usamos para adicionar novas linhas de dados em uma tabela.
  - **``UPDATE:``** Nós usamos para modificar informações existentes dentro de uma tabela.
  - **``DELETE:``** Nós usamos para remover registros específicos de uma tabela.

## 4.3 Adicionando Dados (INSERT)
- Quando queremos popular nossas tabelas, temos dois métodos principais para inserir dados:
  - Método 1: Entrada Manual (VALUES)
    - Nós especificamos manualmente os valores que queremos adicionar a colunas específicas.
    - **``INSERT INTO Products (ProductID, ProductName, Price)``**
    - **``VALUES (1, 'Laptop', 1200.00);``**
    <br>
  - Método 2: INSERT usando SELECT
    - Nós também podemos inserir dados em uma tabela de destino consultando-os de uma tabela de origem.
    - **``INSERT INTO TargetTable``**
    - **``SELECT * FROM SourceTable``**
    - **``WHERE condition;``**

## 4.4 Modificando Dados (UPDATE)
- Quando precisamos editar registros existentes, usamos a instrução UPDATE. Devemos ser muito cuidadosos ao incluir uma cláusula WHERE; caso contrário, atualizaremos todas as linhas da tabela.
- **``UPDATE table_name``**
- **``SET column1 = value1, column2 = value2``**
- **``WHERE (condition)``**
- Regra: Sempre use **WHERE** para evitar atualizações em massa não intencionais.

## 4.5 Removendo Dados (DELETE)
- Quando os dados não são mais necessários, usamos o comando **DELETE**. De forma semelhante ao update, usamos uma cláusula **WHERE** para filtrar linhas específicas.
- **``DELETE FROM table_name``**
- **``WHERE (condition);``**

## 4.6 Tabela Resumo de DDL
| Comando | Ação que tomamos | Efeito nos Dados |
|--------|------------------|------------------|
| INSERT | Adicionar        | Novas linhas são criadas |
| UPDATE | Editar           | Valores existentes são alterados |
| DELETE | Remover          | Linhas selecionadas são apagadas |

# 5. Anatomia de uma Declaração SQL
- Uma instrução SQL é composta de elementos específicos que dizem ao banco como processar o pedido:
  - **Comentários** (--) – Documentam o código.
  - **Palavras-chave** – Reservadas e com significado especial.
  - **Cláusulas** – Blocos que constroem a instrução.
  - **Funções** – Ferramentas internas que transformam dados.
  - **Identificadores** – Nomes de objetos de banco como tabelas ou colunas.
  - **Operadores** – Usados para comparações.
  - **Literais** – Valores constantes ou strings. 

## 5.1 Estrutura Básica de Consulta
**``SELECT``**
<br>
&nbsp; **``column_name``**
<br>
**``FROM``**
<br>
&nbsp; **``table_name;``**

## 5.2 Filtragem e Ordenação
- **``WHERE``** – Filtra registros com condições específicas.
- **``ORDER BY``** – Ordena resultados em ordem ascendente ou descendente.

## 5.3 Ferramentas Avançadas de Seleção
- **``DISTINCT``** – Remove duplicatas.
- **``TOP / LIMIT``** – Especifica número de registros retornados.

## 5.4 Aliases (AS)
- Usados para dar nome temporário a tabelas ou colunas para tornar os resultados mais legíveis.

## 5.5 Ordem Lógica de Avaliação
- SQL não processa cláusulas na ordem escrita.
- A execução padrão lógica é:
  1. **``FROM``**
  2. **``WHERE``**
  3. **``SELECT``**
  4. **``ORDER BY``**

# 6. Chave Estrangeira
 
## 6.1 O que é Chave Estrangeira (Foreign Key)?
- A chave estrangeira é um campo de uma tabela que aponta para a chave primária de outra tabela.
- Ela serve para criar relacionamento entre tabelas.
- Em outras palavras:
  - A chave estrangeira é o que “liga” uma tabela à outra em um banco de dados relacional.

## 6.2 Por que precisamos dela?
- #### **Sem chave estrangeira:**
  - As tabelas ficam isoladas.
  - Não há garantia de que os dados combinam.
  - Podem existir registros “órfãos” (sem relação real).

- #### **Com chave estrangeira:**
  - O banco garante integridade dos dados.
  - Evita erros e inconsistências.
  - Representa relações do mundo real (cliente → pedido, aluno → matrícula, etc.)

## 6.3 Exemplo Prático - Tabela de Clientes
| Id (PK) | Nome |
| :--- | :--- |
| 1 | Ana Silva |
| 2 | João Souza |

## 6.4 Exemplo Prático - Tabela de Pedidos
| Id (PK) | clienteId (FK) | Total |
| :--- | :--- | :--- |
| 1001 | 1 | 3500 |
| 1002 | 2 | 200 |
| 1003 | 1 | 1200 |

# 7. Normalização

* Normalizar um banco de dados é organizar as informações para que cada dado exista apenas uma vez, evitando repetição, erros e bagunça nas tabelas.

## 7.1 Forma Não Normalizada (UNF)

| OrderID | CustomerName | CustomerPhone | Products | Total |
| :--- | :--- | :--- | :--- | :--- |
| 1001 | Ana Silva | 9999-1111 | Notebook, Mouse | 3500 |
| 1002 | João Souza | 9888-2222 | Teclado | 200 |
| 1003 | Ana Silva | 9999-1111 | Monitor, Cabo HDMI, Mouse | 1200 |

## 7.2 Forma Não Normalizada (UNF)
* Todos os dados estão misturados em uma única tabela, com grupos repetidos.
* Dados do cliente repetidos.
* Difícil de consultar e manter.

## 7.3 Primeira Forma Normal (1FN)
* Os campos devem ser atômicos (um único valor por célula).
* 
| OrderID | CustomerName | CustomerPhone | Product | Total |
| :--- | :--- | :--- | :--- | :--- |
| 1001 | Ana Silva | 9999-1111 | Notebook | 3500 |
| 1001 | Ana Silva | 9999-1111 | Mouse | 3500 |
| 1002 | João Souza | 9888-2222 | Teclado | 200 |
| 1003 | Ana Silva | 9999-1111 | Monitor | 1200 |
| 1003 | Ana Silva | 9999-1111 | Cabo HDMI | 1200 |
| 1003 | Ana Silva | 9999-1111 | Mouse | 1200 |

## 7.4 Primeira Forma Normal (1FN)
* Problema: Dados do cliente continuam duplicados.
* Total pertece APENAS ao pedido.
* Ainda existem dependências (responsabilidades) na mesma tabela.

## 7.5 Segunda Forma Normal (2FN)
* Regras:
* Deve estar na 1FN.
* Removemos dependências parciais.
* Cada entidade passa a ter sua própria tabela e ter sua própria chave primária.

## 7.6 Segunda Forma Normal (2FN)

| CustomerID | Nome | Telefone |
| :--- | :--- | :--- |
| 1 | Ana Silva | 9999-1111 |
| 2 | João Souza | 9888-2222 |

| OrderID | CustomerID | Total |
| :--- | :--- | :--- |
| 1001 | 1 | 3500 |
| 1002 | 2 | 200 |
| 1003 | 1 | 1200 |

## 7.7 Segunda Forma Normal (2FN)

| OrderID | Produto |
| :--- | :--- |
| 1001 | Notebook |
| 1001 | Mouse |
| 1002 | Teclado |
| 1003 | Monitor |
| 1003 | Cabo HDMI |
| 1003 | Mouse |

## 7.8 Segunda Forma Normal (2FN)
* Problema:
* Produto é um texto livre... está "solto".

## 7.9 Terceira Forma Normal (3FN)
* Regras:
* Deve estar na 2FN.
* Remover dependências transitivas.
* Campos não-chave DEVEM depender apenas da chave.

## 7.10 Terceira Forma Normal (3FN)

| CustomerID | Nome | Telefone |
| :--- | :--- | :--- |
| 1 | Ana Silva | 9999-1111 |
| 2 | João Souza | 9888-2222 |

| ProductID | NomeProduto |
| :--- | :--- |
| 10 | Notebook |
| 11 | Mouse |
| 12 | Teclado |
| 13 | Monitor |
| 14 | Cabo HDMI |

## 7.11 Terceira Forma Normal (3FN)

| OrderID | CustomerID | Total |
| :--- | :--- | :--- |
| 1001 | 1 | 3500 |
| 1002 | 2 | 200 |
| 1003 | 1 | 1200 |

| OrderID | ProductID |
| :--- | :--- |
| 1001 | 10 |
| 1001 | 11 |
| 1002 | 12 |
| 1003 | 13 |
| 1003 | 14 |
| 1003 | 11 |

## 7.12 Resultado
* O banco de dados agora possui
* Ausência de redundância.
* Relacionamentos claros (Chaves Estrangeiras).
* Estrutura relacional correta.
* Melhor desempenho.
* Manutenção facilitada.
* Isso torna os bancos de dados
* Mais eficientes.
* Mais confiáveis.
* Mais fáceis de escalar.
* Mais fáceis de entender.

# 8. Métodos de Combinação

## 8.1 JOINS (Adição de Colunas - Horizontal)
* Conectamos tabelas lateralmente através de uma coluna comum (Chave).
    * Inner Join: Apenas o que existe em ambas as tabelas.
    * Left Join: Mantemos tudo da tabela à esquerda e trazemos o que houver da direita.
    * Right Join: Mantemos tudo da direita e trazemos o que houver da esquerda.
    * Full Join: Trazemos tudo de ambos os lados, independentemente de haver correspondência.

## 8.2 Como Usamos Joins
* Ao escrevermos um JOIN, devemos especificar a relação:
SELECT
TabelaA.Nome,
TabelaB.Pais
FROM
TabelaA INNER JOIN TabelaB ON TabelaA.id = TabelaB.id;

## 8.3 Operadores SET (Adição de Linhas - Vertical)
* Empilhamos resultados de consultas diferentes, desde que tenham a mesma estrutura de colunas.
    * UNION: Combina os resultados e remove duplicados.
    * UNION ALL: Combina tudo, incluindo duplicados (é mais rápido).
    * EXCEPT / MINUS: Mostra o que existe no primeiro conjunto mas não no segundo.
    * INTERSECT: Mostra apenas o que é comum a ambos os conjuntos.
 
## 8.4 Como Usamos Operadores SET
SELECT <br>
&nbsp; Nome <br>
FROM <br>
&nbsp; Clientes <br>
UNION <br>
SELECT <br>
&nbsp; Nome <br>
FROM <br>
&nbsp; Funcionarios; <br>

# 9. Funções de Linha Única no SQL

## 9.1 O que são Funções SQL?
- **Definição:** Conjuntos de instruções que recebem um ou mais valores de entrada e retornam
um valor de saída.
- **Utilidade:**
  - **Limpeza:** Remover espaços extras ou caracteres indesejados.
  - **Transformação:** Alterar formatos de data ou converter textos.
  - **Análise:** Realizar cálculos rápidos por linha
- **Processo:** ``Entrada (Valor)`` ``->`` ``FUNÇÃO`` ``->`` ``Saída (Novo Valor)``

## 9.2 Funções de Texto (String Functions)
- **Manipulação:**
  - **CONCAT:** Une duas ou mais strings (ex: Nome + Sobrenome).
  - **UPPER / LOWER:** Converte o texto para MAIÚSCULO ou minúsculo.
  - **TRIM:** Remove espaços em branco no início e no fim.
  -  **REPLACE:** Substitui um caractere ou trecho de texto por outro.






# 9. Funções de Agregação

## 9.1 O que são Funções de Agregação?
- As funções de agregação processam um conjunto de valores para retornar um único valor resumido. Elas são essenciais para transformar dados brutos em informações estratégicas.

| Função | Finalidade                                      | Tipos de Dados Compatíveis     |
|--------|------------------------------------------------|--------------------------------|
| COUNT  | Conta o número de registros (linhas).           | Qualquer tipo                  |
| SUM    | Soma os valores de uma coluna.                  | Apenas Numéricos               |
| AVG    | Calcula a média aritmética dos valores.         | Apenas Numéricos               |
| MAX    | Identifica o valor máximo (maior).              | Numéricos, Datas e Texto       |
| MIN    | Identifica o valor mínimo (menor).              | Numéricos, Datas e Texto       |

## 9.2 Cláusula GROUP BY (Agrupamento)
- A cláusula **GROUP BY** é utilizada para organizar linhas que possuem valores idênticos em
grupos. Ela é quase sempre utilizada em conjunto com as funções de agregação mencionadas
acima.
- **Condensação de Registros:** A principal função do **GROUP BY** é reduzir (achatar) múltiplos
registros em uma única linha de resumo por grupo.
- **Cálculos em Nível de Grupo:** Ao contrário de uma conta simples no banco de dados inteiro, o
agrupamento permite realizar **Cálculos de Nível de Grupo** (ex: calcular o faturamento total por
categoria de produto em vez do faturamento total da loja).

## 9.3 Exemplo Prático
- Se você tem uma tabela de vendas e usa GROUP BY região, o SQL pegará todas as vendas de
"Sul", "Norte" e "Leste" e entregará apenas uma linha para cada região com os totais
somados.
