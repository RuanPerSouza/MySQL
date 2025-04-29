create table usuario ( 
usuario_ID INT primary key AUTO_INCREMENT NOT NULL,
usuario_nome VARCHAR (150) NOT NULL,
usuario_email VARCHAR (150) NOT NULL ,
usuario_senha VARCHAR (150) NOT NULL,
usuario_avatar BLOB);

create table filmes(
ID INT PRIMARY KEY,
filme_ID INT AUTO_INCREMENT NOT NULL,
FOREIGN KEY (genero_ID) REFERENCES genero(ID),
filme_nome VARCHAR (150),
filme_diretor VARCHAR (150),
filme_duracao INT,
filme_poster BLOB,
filme_dtlacamento DATE
);

create table livros(
livro_ID INT AUTO_INCREMENT NOT NULL primary key,
FOREIGN KEY (genero_ID) references genero(ID),
livro_nome VARCHAR (150),
livro_escritor VARCHAR (150),
livro_paginas INT,
livro_capa BLOB,
livro_dtlacamento DATE
);

create table genero(
genero_ID INT AUTO_INCREMENT NOT NULL primary key,
foreign key (filme_genero_ID) REFERENCES filme_genero(ID)  ,
foreign key (livrogenero_ID) references livro_genero(ID),
genero_nome varchar (150)
);
 
create table filme_genero (
filmegenero_ID INT AUTO_INCREMENT NOT NULL primary key,
foreign key (filme_ID) references filme(ID)
);

 create table Livro_genero(
livrogenero_ID  INT AUTO_INCREMENT NOT NULL primary key,
foreign key (livro_ID) references livro(ID) 
);

create table Lista_Personalizadas(
lpz_ID INT AUTO_INCREMENT NOT NULL primary key,
foreign key (usuario_ID) references usuario(ID),
lpz_nome VARCHAR (150) NOT NULL,
lpz_descricao VARCHAR (150),
lpz_dtcriacao DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
ipz_avatar BLOB
);

create table Itens_da_lista(
idl_ID INT AUTO_INCREMENT NOT NULL primary key,
foreign key (usuario_ID) references usuario(ID) ,
foreign key (lpz_ID) references lpz(ID) ,
foreign key (midia_ID) references midia(ID),
idl_nome VARCHAR (150) AUTO_INCREMENT,
idl_avatar BLOB,
idl_descricao VARCHAR (150)
);

create table avaliacao(
aval_ID INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
foreign key (usuario_ID) REFERENCES usuario(ID),
foreign key (midia_ID) references midia(ID),
aval_nota INT NOT NULL,
aval_texto VARCHAR (150),
aval_data TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
aval_imagem BLOB
);

create table comentario(
come_ID INT AUTO_INCREMENT NOT NULL primary key,
foreign key (usuario_ID) references usuario(ID),
foreign key (aval_ID) references aval(ID),
come_texto VARCHAR (150),
come_data TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

create table midia(
midia_ID INT AUTO_INCREMENT NOT NULL primary key,
foreign key (filme_ID) references filme(ID),
foreign key (livro_ID) references livro(ID) 
);
