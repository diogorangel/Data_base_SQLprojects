
create table tarefa
(
CodigoTarefa int primary key not null,
NomeTarefa varchar (30) not null
);

create table projeto
(
CodigoProjeto int primary key not null,
NomeProjeto varchar (30) not null,
DataInicio date,
DataPrevisoaFim date,
CodigoDepartamento smallint
);

create table alocação
(
CodigoTarefa int,
CPFEmpregado  bigint,
CodigoProjeto int,
DataAlocação date,
DataFimAlocação date,
primary key (CodigoTarefa, CPFEmpregado, CodigoProjeto)
);

ALTER TABLE empregado ADD CONSTRAINT fkdepempr FOREIGN KEY (CodigoDepartamento) REFERENCES departamento (CodigoDepartamento);

ALTER TABLE projeto ADD CONSTRAINT fkdepproj FOREIGN KEY (CodigoDepartamento) REFERENCES departamento (CodigoDepartamento);

ALTER TABLE alocação ADD CONSTRAINT fktaraloc FOREIGN KEY (CodigoTarefa) REFERENCES tarefa (CodigoTarefa);

ALTER TABLE alocação ADD CONSTRAINT fkprojaloc FOREIGN KEY (CodigoProjeto) REFERENCES projeto (CodigoProjeto);

ALTER TABLE alocação ADD CONSTRAINT fkempraloc FOREIGN KEY (CPFEmpregado) REFERENCES empregado (CPFEmpregado);
