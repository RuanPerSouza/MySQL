create database cadastro
default character set utf8 
default collate utf8_general_ci;

create table `pessoas` (
`id` int not null auto_increment,
`nome` varchar (30) not null,
`nascimento` date,
`sexo` enum ('M','F'),
`peso` decimal (5,2),
`altura` decimal (3,2),
`nacimento` varchar (20) default 'Brasil',
primary key (id)
) default charset = utf8;

ADICIONADO OS DADOS

insert into pessoas
(nome, nascimento, sexo, peso, altura, nacimento)
values
('caio', '2008-07-10', 'M', '90.0', '1.90', 'Brasil');

select * from pessoas;
