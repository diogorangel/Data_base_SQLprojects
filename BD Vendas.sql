create table clientes
(
CodigoCliente int primary key not null,
Nome varchar(50) not null,
Logradouro varchar(50) not null,
Numero varchar (8) not null,
Bairro varchar (50) not null,
CEP char (8) not null,
Cidade varchar (20),
UF char (2),
CNPJ char (14) not null,
IE varchar (20)
);

create table produtos
(
CodigoProduto int primary key not null,
NomeProduto varchar (50) not null,
PrecoUnitario decimal (8,2),
QuantidadeEstoque integer
); 

create table vendedores
(
CodigoVendedor int primary key not null,
NomeVendedor varchar (50) not null,
SalarioFixo decimal (7,2)
);

create table pedidos
(
CodigoPedido int primary key not null,
DataPedido date,
DataEntrega date,
CodigoVendedor int,
CodigoCliente int
);

create table itempedidos
(
CodigoProduto int,
CodigoPedido int,
Quantidade int,
primary key (CodigoProduto, CodigoPedido)
);

alter table clientes change Nome NomeCliente varchar (50);

ALTER TABLE pedidos ADD CONSTRAINT fkclieped FOREIGN KEY (CodigoCliente) REFERENCES clientes (CodigoCliente);

ALTER TABLE pedidos ADD CONSTRAINT fkvendped FOREIGN KEY (CodigoVendedor) REFERENCES vendedores (CodigoVendedor);

ALTER TABLE itempedidos ADD CONSTRAINT fkpeditem FOREIGN KEY (CodigoPedido) REFERENCES pedidos (CodigoPedido);

ALTER TABLE itempedidos ADD CONSTRAINT fkproditem FOREIGN KEY (CodigoProduto) 
REFERENCES produtos (CodigoProduto);
