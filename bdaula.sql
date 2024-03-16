-- Active: 1709940256146@@servidorhian.mysql.database.azure.com@3306@bdaula
create table cliente (

    cod_cli int PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    endereco VARCHAR(50) null,
    cidade VARCHAR(30),
    cep CHAR(9),
    uf CHAR(2) 
    
    );

    INSERT INTO cliente (cod_cli, nome, endereco, cidade, cep, uf) VALUES (1, 'Hian', 'avenida endereco rua numero', 'são paulo', '10239-485', 'SP' );

    SELECT * FROM cliente;

create table produto (cod_prod int PRIMARY KEY, unid_prod CHAR(3), desc_prod VARCHAR(30), val_unit DECIMAL(9,2) );

INSERT INTO produto(cod_prod, unid_prod, desc_prod, val_unit ) values (1, 'cx', 'lapis', 2.34);

SELECT * FROM produto;

CREATE TABLE vendedor (
    cod_vend int PRIMARY KEY,
    nome VARCHAR(50) not NULL,
    sal_fixo DECIMAL(9,2),
    faixa_comissao char(1)
);

INSERT INTO vendedor (cod_vend, nome, sal_fixo, faixa_comissao) VALUES(1, 'araujo', 20000, 1)

select * from vendedor

CREATE TABLE pedido(
    num_ped int PRIMARY KEY,
    prazo_ent int,
    fk_cod_clie int,
    Foreign Key (fk_cod_clie) REFERENCES cliente(cod_cli),
    fk_cod_vend int,
    Foreign Key (fk_cod_vend) REFERENCES vendedor(cod_vend)
)


INSERT INTO pedido (num_ped, prazo_ent, fk_cod_clie, fk_cod_vend) VALUES (1, 12, 1, 1);

SELECT * from pedido;

CREATE Table item_pedido (
    qtd_ped int,
    fk_cod_prod int,
    Foreign Key (fk_cod_prod) REFERENCES produto(cod_prod),
    fk_num_pedido INT,
    Foreign Key (fk_num_pedido) REFERENCES pedido(num_ped)
);

INSERT INTO item_pedido (qtd_ped, fk_cod_prod, fk_num_pedido) VALUES (5,1,1)

SELECT * FROM item_pedido;