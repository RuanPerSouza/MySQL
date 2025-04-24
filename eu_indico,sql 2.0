create database eu_indico; #Criando o banco de dados 

use eu_indico; #  Dizendo qual banco usar 

#Criando a primeira tabela, usando o modelo conceitual como exemplo:
# A tabela usuario será usada para conter os dados do usuario do aplicativo, a tabela ira conter
create table usuario(
	usuario_ID INT AUTO_INCREMENT PRIMARY KEY, # Chave primaria da tabela usuario, não pode ser nula e será prenchida altomaticamente
    usuario_nome VARCHAR(150) NOT NULL,  # Nome do usuario que não podera ser nulo
    usuario_email VARCHAR(150) NOT NULL,  # Email do usuario
    usuario_senha VARCHAR(150) NOT NULL, # A senha da conta do usuario
    usuario_avatar BLOB # O avatar/foto de poerfil do usuario
);

#Proxima tabela a ser criada GENERO
# Essa tabela ira ser usada para dizer o genero de cada midia
# EX: Um filme pode ser de terror, ação ou suspense 
CREATE TABLE genero (
    genero_ID INT AUTO_INCREMENT PRIMARY KEY, # Chave primaria da tabela
    genero_nome VARCHAR(150) # O nome do genero como terror, ação ou suspense 
    );
    
# Proximos passos criar todas as tabelas
# Tabela de filmes ira ter os dados dos filmes como:
CREATE TABLE filmes (
    filme_ID INT AUTO_INCREMENT PRIMARY KEY, # Chave primaria da tabela
    genero_ID INT,
    filme_nome VARCHAR(150), # Nome do filme
    filme_diretor VARCHAR(150), # Diretor do filme
    filme_duracao INT, # O tempo que o filme dura
    filme_poster BLOB, # O poster/capa do filme
    filme_dtlacamento DATE, # A data de lançamento do filme 
    FOREIGN KEY (genero_ID) REFERENCES genero(genero_ID) # A chave estrangeira de genero vincula o filme a um tipo de genero como terror, ação ou suspense.
);

# A tabela livro ira servior como a tabela filme:
CREATE TABLE livros (
    livro_ID INT AUTO_INCREMENT PRIMARY KEY, # Chave primaria da tabela
    genero_ID INT,
    livro_nome VARCHAR(150), # Nome do livro
    livro_escritor VARCHAR(150), # Altor do livro
    livro_paginas INT, # A quanridade de paginas do livro
    livro_capa BLOB, # A capa do filme 
    livro_dtlacamento DATE, # A data de lançamento do livro 
    FOREIGN KEY (genero_ID) REFERENCES genero(genero_ID) # A chave estrangeira de genero vincula o livro a um tipo de genero como terror, suspense ou romance
);

# A  Tabela filme_genero ira vincular o filme ao seu genero
CREATE TABLE filme_genero (
    filmegenero_ID INT AUTO_INCREMENT PRIMARY KEY, # Chave primaria 
    filme_ID INT,
    FOREIGN KEY (filme_ID) REFERENCES filmes(filme_ID) # Chave estrangeira vinculada a tabela filmes
);

# A tabela livro_genero tem a mesma função da tabela filme_genero
CREATE TABLE livro_genero (
    livrogenero_ID INT AUTO_INCREMENT PRIMARY KEY, # Chave primaria 
    livro_ID INT,
    FOREIGN KEY (livro_ID) REFERENCES livros(livro_ID) # Chave estrangeira vinculada a tabela filmes
);

# A tabela midia ira armazenar os dados que dizem a qual tipo de midia aquela obra se inclui
CREATE TABLE midia (
    midia_ID INT AUTO_INCREMENT PRIMARY KEY, # Chave primaria
    filme_ID INT,
    livro_ID INT,
    FOREIGN KEY (filme_ID) REFERENCES filmes(filme_ID), # Chave estrangeira vinculada a tabela filmes
    FOREIGN KEY (livro_ID) REFERENCES livros(livro_ID) # Chave estrangeira vinculada a tabela livros
);

# A lista persoalizada será uma feramenta que vai ser usada pelo usuario, onde ele poder criar uma lista dos seus filmes ou livros favoritos
CREATE TABLE lista_personalizadas (
    lpz_ID INT AUTO_INCREMENT PRIMARY KEY, # Chave primaria 
    usuario_ID INT,
    lpz_nome VARCHAR(150) NOT NULL, # Nome da lista
    lpz_descricao VARCHAR(150), # Descricao da lista usada pelo usuario
    lpz_dtcriacao DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, # A data de criaçao da tabela 
    lpz_avatar BLOB,
    FOREIGN KEY (usuario_ID) REFERENCES usuario(usuario_ID) # A chave estrangeira vinculada a tabela usuario
);

# A tabela itens da lista e mais uma ferramenta usada pelo usuario onde ele pode incluir seus proprios filmes ou livros que estiverem armazenados no banco de dados filme ou livros
CREATE TABLE itens_da_lista (
    idl_ID INT AUTO_INCREMENT PRIMARY KEY, # Chave primaria 
    usuario_ID INT,
    lpz_ID INT,
    midia_ID INT,
    idl_nome VARCHAR(150), # Nome de iten como um nome de um filme ou livro
    idl_avatar BLOB, # A da capa ou poster do filme ou livro 
    idl_descricao VARCHAR(150), # A descrição do iten
    FOREIGN KEY (usuario_ID) REFERENCES usuario(usuario_ID), # A cahve estrangeira vinculada a tabela usuario
    FOREIGN KEY (lpz_ID) REFERENCES lista_personalizadas(lpz_ID), # A cahve estrangeira vinculada a tabela lista personalizada
    FOREIGN KEY (midia_ID) REFERENCES midia(midia_ID) # A cahve estrangeira vinculada a tabela midia
);

# Essa tabela contem as avaliacoes dos usuarios sobre um respectivo filme ou livro
CREATE TABLE avaliacao (
    aval_ID INT AUTO_INCREMENT PRIMARY KEY, # chave primaria 
    usuario_ID INT,
    midia_ID INT,
    aval_nota INT NOT NULL, # A nota que o usuario da para aquela midia 
    aval_texto VARCHAR(150), # Um texto explicando seus argumantos e opinoes sobre a midia 
    aval_data TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, # A data que foi feita a avaliacao
    aval_imagem BLOB, # A imagem do poster ou capa da midia 
    FOREIGN KEY (usuario_ID) REFERENCES usuario(usuario_ID),  # A cahve estrangeira vinculada a tabela usuario
    FOREIGN KEY (midia_ID) REFERENCES midia(midia_ID)  # A cahve estrangeira vinculada a tabela midia
);

# A tabela comentarios e usada junto da tabela avaliacao, para outros usuarios poderem comentar nas avaliacoes e debaterem suas opinioes 
CREATE TABLE comentario (
    come_ID INT AUTO_INCREMENT PRIMARY KEY, # chave primaria 
    usuario_ID INT,
    aval_ID INT,
    come_texto VARCHAR(150), # O texto dao comentario
    come_data TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, # A data do comentario
    FOREIGN KEY (usuario_ID) REFERENCES usuario(usuario_ID), # A cahve estrangeira vinculada a tabela usuario
    FOREIGN KEY (aval_ID) REFERENCES avaliacao(aval_ID) # A cahve estrangeira vinculada a tabela avaliacao
);

# Todas as tabelas estão em ordem de acordo com a necessidade da tabela
# Para uma tabela com a chave estrangeira poder puxar aquela chave de alguma outra tabela
