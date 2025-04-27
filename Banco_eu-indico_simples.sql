CREATE DATABASE eu_indico; -- Criando o banco de dados

USE eu_indico; -- Selecionando o banco de dados

-- Tabela de usuários
CREATE TABLE usuario (
    usuario_ID INT AUTO_INCREMENT PRIMARY KEY, -- Chave primária da tabela
    usuario_nome VARCHAR(150) NOT NULL, -- Nome do usuário
    usuario_email VARCHAR(150) NOT NULL, -- Email do usuário
    usuario_senha VARCHAR(150) NOT NULL, -- Senha do usuário
    usuario_avatar BLOB -- Avatar/foto de perfil do usuário
);

-- Tabela de gêneros
CREATE TABLE genero (
    genero_ID INT AUTO_INCREMENT PRIMARY KEY, -- Chave primária
    genero_nome VARCHAR(150) NOT NULL -- Nome do gênero
);

-- Tabela de filmes
CREATE TABLE filmes (
    filme_ID INT AUTO_INCREMENT PRIMARY KEY, -- Chave primária
    genero_ID INT, -- Gênero do filme
    filme_nome VARCHAR(150) NOT NULL, -- Nome do filme
    filme_diretor VARCHAR(150), -- Diretor do filme
    filme_duracao INT, -- Duração do filme em minutos
    filme_poster BLOB, -- Poster/capa do filme
    filme_dtlancamento DATE, -- Data de lançamento
    FOREIGN KEY (genero_ID) REFERENCES genero(genero_ID) -- Chave estrangeira para gênero
);

-- Tabela de livros
CREATE TABLE livros (
    livro_ID INT AUTO_INCREMENT PRIMARY KEY, -- Chave primária
    genero_ID INT, -- Gênero do livro
    livro_nome VARCHAR(150) NOT NULL, -- Nome do livro
    livro_escritor VARCHAR(150), -- Autor do livro
    livro_paginas INT, -- Número de páginas
    livro_capa BLOB, -- Capa do livro
    livro_dtlancamento DATE, -- Data de lançamento
    FOREIGN KEY (genero_ID) REFERENCES genero(genero_ID) -- Chave estrangeira para gênero
);

-- Tabela de avaliações
CREATE TABLE avaliacao (
    aval_ID INT AUTO_INCREMENT PRIMARY KEY, -- Chave primária
    usuario_ID INT, -- Usuário que avaliou
    filme_ID INT, -- Filme avaliado (pode ser NULL se for livro)
    livro_ID INT, -- Livro avaliado (pode ser NULL se for filme)
    aval_nota INT NOT NULL, -- Nota da avaliação
    aval_texto VARCHAR(150), -- Texto/opinião
    aval_data TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, -- Data da avaliação
    FOREIGN KEY (usuario_ID) REFERENCES usuario(usuario_ID), -- FK para usuário
    FOREIGN KEY (filme_ID) REFERENCES filmes(filme_ID), -- FK para filme
    FOREIGN KEY (livro_ID) REFERENCES livros(livro_ID) -- FK para livro
);
