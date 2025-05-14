-- Visualizar bancos
show databases;
-- Criando banco biblioteca
create database Biblioteca;
-- Acessar banco criado
use Biblioteca;
-- Criando a tabela Autor
create table tb_autor(
aut_id int auto_increment primary key,
aut_nome varchar(225),
aut_nacionalidade varchar (150)
);
-- Visializar as tabelas criadas
show tables;
-- Criando a tebela Categoria 
create table tb_categoria(
cat_id int auto_increment primary key,
cat_nome varchar (255),
cat_descricao text
);
-- Criar a tabaela Membros
create table tb_membros(
mem_id int auto_increment primary key,
mem_nome varchar (255),
mem_celular varchar(50),
mem_residencial varchar(50),
mem_email varchar (255),
mem_email_secundario varchar (255),
mem_rua varchar (255),
mem_numero varchar (50),
mem_cep varchar (30),
mem_complemento varchar(150),
mem_cidade varchar (255),
mem_estado varchar (150),
mem_uf char(2)
);
-- Visualizar a tabela criada
show tables;
-- Criando a tabela Livros
create table tb_Livros(
liv_id int auto_increment primary key,
liv_titulo varchar (255),
liv_ano_publicacao int,
liv_preco decimal (10,2),
liv_autor int,
liv_catid int,
foreign key (liv_autor) references tb_autor(aut_id), 		-- foreign key esta referenciando a coluna da tb_livros 
foreign key (liv_catid) references tb_categoria (cat_id)	-- reference esta referenciado a tabela origial com o id dela (tb_autor [a tabela]) (cat_id [a coluna da tabela])
);
-- Visializar a tabela criada
show tables;
-- criando a tabela Emprestimo
create table tb_emprestimo (
emp_id int auto_increment primary key,
emp_retirada datetime,
emp_devolucao datetime,
emp_memid int,
emp_livid int,
foreign key (emp_memid) references tb_membros(mem_id),		-- foreign key esta referenciando a coluna da tb_membros 
foreign key (emp_livid) references tb_Livros(liv_id)		-- reference esta referenciado a tabela origial com o id dela (tb_Livros [a tabela]) (liv_id [a coluna da tabela])
);
-- Visializar a tabela criada
show tables;
-- Inserindo dados na tb_autor
insert into tb_autor (aut_nome, aut_nacionalidade) values
('Monteiro lobato', 'Brasileiro');
-- Visualizar os dados inseridos 
select * from tb_autor;
-- Inserindo dados na tb_categoria
insert into tb_categoria (cat_nome, cat_descricao) values
('Gibi', 'Historia em quadrinhos');
-- Visualizar os dados inseridos 
select * from tb_categoria;
-- Inserindo dados na tb_membros
insert into tb_membros values
('Carlos Adão', '112233445566','1234567890' ,'carlos@gmail.com' ,'adao20@gmail.com' ,'Avenida vida nova' ,'166' ,'11223344' ,'Unifecaf' ,'Taboão da serra' ,'São paulo' ,'SP');
