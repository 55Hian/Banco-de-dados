# Banco de dados

## O que é banco de dados

* Bancos de dados armazenam informações que trafegam no mundo digital
* Os dados são armazenados em grandes bancos de dados
* Dados valem dinheiro
* *Banco de dados é uma coleção de dados organizada*


<br>
<br>

<center>

*Proposta do banco de dados* |
:-----: 
padronizar o acesso a informações |
Segurança de acessos |
Integridade dos dados |
Duplicidade dos dados |
Erros de preenchimento |

</center>

<br>
<br>


<center>

*Links importantes* | *Descrição*
:-----: | :----:
 https://apex.oracle.com/pls/apex/r/apex/workspace/home?session=116163422700046 | Apex Oracle (Learn) *Workspace==institucional
https://academy.oracle.com/en/oa-web-overview.html | Oracle academy (course)
https://portal.azure.com/ | Portal Azure (Cloud)
https://www.devmedia.com.br/guia/modelagem-de-dados/34654 | Modelagem de banco de dados

</center>

<br>
<br>

## Por onde começar?
### Modelar o banco de dados
<!-- ##### Esquema - Define a estrutura do banco de dados
##### Instância - banco de dados em um esquema
##### Estado do banco de dados
##### Catálogo (dicionário de dados)– armazena informação sobre o esquema

### Arquitetura de 3 camadas
####  Esquema Interno
#### Esquema Conceitual
#### Esquema Externo -- Visões do usuario

<br>
<br> -->

<center>

### Exemplo de modelagem conceitual

<img width="600" src="./image-1.png">



 #### chave estrangeira sempre ficara do lado do n

 ### Após realizar o modelo conceitual, partiremos para o modelo lógico
 #### para exportar o modelo lógico selecione: Diagrama > Comandos > Converter para lógico

<br>
<br>

<img width="600" src="./image-2.png">

<br>
<br>

</center>

* Atributos volateis == Valores que mudam, exemplo: Idade, Estado civil, Altura, Peso
* Atributos não-volateis == Valores que não mudam, exemplo: Nome
* Atributos Simples == Possuem apenas um valor, exemplo: Cor, Idade, Peso, Sálario
* Atributos Composto == Possuem varios valores, exemplo: Endereço, Data, Filiação
<br>
<br>
<center>

### Notação Barker

<img width="600" src="./image-3.png">


</center>

<br>
<br>

## Comando banco de dados

<center>

Comando SQL | Descrição
:-------: | :--------:
SELECT | extrai dados de um banco de dados
UPDATE | atualiza dados em um banco de dados
DELETE | exclui dados de um banco de dados
INSERT INTO | insere novos dados em um banco de dados
CREATE DATABASE | cria um novo banco de dados
ALTER DATABASE | modifica um banco de dados
CREATE TABLE | cria uma nova tabela
ALTER TABLE | modifica uma tabela
DROP TABLE | exclui uma tabela
CREATE INDEX | cria um índice (chave de pesquisa)
DROP INDEX | exclui um índice

 </center>