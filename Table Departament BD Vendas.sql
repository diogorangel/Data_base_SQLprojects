create table departamento
(
CodigoDepartamento smallint primary key not null,
NomeDepartamento varchar (20) not null
);


create table empregado
(
CPFEmpregado  bigint primary key not null,
NomeEmpregado varchar (60) not null,
DataNascimento date not null,
RG char (9) not null,
Rua varchar (50) not null,
Numero varchar (40) NOT NULL,
cep CHAR (8),
Bairro varchar (50),
Cidade varchar (50),
UF char (2),
CodigoDepartamento smallint
);
