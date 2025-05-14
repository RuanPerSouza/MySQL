-- Inserindo dados na tabela Hóspedes
insert into tb_hospedes values
(null, 'Ruan Pereira', '12345678901', '11995299799', 'ruanpereira020@gmail.com', 'Av. Guilherme Gonçalves do Rosário', '142', '00010001', 'Taboão da Serra', 'São Paulo', 'SP'),
(null, 'Ana Oliveira', '32165498700', '11987654321', 'ana.oliveira@gmail.com', 'Rua das Flores', '123', '04567000', 'São Paulo', 'São Paulo', 'SP'),
(null, 'Carlos Mendes', '45678912309', '21999998888', 'carlos.mendes@hotmail.com', 'Av. Brasil', '500', '21000000', 'Rio de Janeiro', 'Rio de Janeiro', 'RJ'),
(null, 'Juliana Souza', '78945612377', '31988887777', 'juliana.souza@yahoo.com', 'Rua Minas Gerais', '45', '30130000', 'Belo Horizonte', 'Minas Gerais', 'MG'),
(null, 'Paulo Henrique', '98765432111', '11999990000', 'paulo.henrique@gmail.com', 'Rua das Palmeiras', '230', '04000000', 'São Paulo', 'São Paulo', 'SP'),
(null, 'Beatriz Lima', '15935748620', '21987654321', 'beatriz.lima@outlook.com', 'Rua Alfenas', '78', '22220000', 'Rio de Janeiro', 'Rio de Janeiro', 'RJ'),
(null, 'Lucas Andrade', '74125896336', '31995123456', 'lucas.andrade@gmail.com', 'Rua do Ouro', '150', '30230000', 'Belo Horizonte', 'Minas Gerais', 'MG'),
(null, 'Fernanda Reis', '85296374100', '11996234567', 'fernanda.reis@gmail.com', 'Av. Paulista', '999', '01311000', 'São Paulo', 'São Paulo', 'SP'),
(null, 'Gabriel Rocha', '96385274155', '21994567890', 'gabriel.rocha@gmail.com', 'Rua Voluntários da Pátria', '33', '22270000', 'Rio de Janeiro', 'Rio de Janeiro', 'RJ'),
(null, 'Mariana Silva', '10293847566', '11993456789', 'mariana.silva@gmail.com', 'Rua das Acácias', '12', '04101000', 'São Paulo', 'São Paulo', 'SP'),
(null, 'André Costa', '56473829100', '31992223344', 'andre.costa@gmail.com', 'Av. Amazonas', '700', '30180909', 'Belo Horizonte', 'Minas Gerais', 'MG'),
(null, 'Patrícia Nunes', '83746592011', '21993334455', 'patricia.nunes@gmail.com', 'Rua Conde de Bonfim', '145', '20520051', 'Rio de Janeiro', 'Rio de Janeiro', 'RJ'),
(null, 'Rafael Martins', '11223344556', '11998877665', 'rafael.martins@gmail.com', 'Rua Vergueiro', '800', '01504000', 'São Paulo', 'São Paulo', 'SP'),
(null, 'Camila Teixeira', '99887766550', '31994445566', 'camila.teixeira@gmail.com', 'Av. Afonso Pena', '1050', '30130004', 'Belo Horizonte', 'Minas Gerais', 'MG'),
(null, 'Diego Fernandes', '66778899001', '21997778899', 'diego.fernandes@gmail.com', 'Rua Barão de Mesquita', '456', '20540002', 'Rio de Janeiro', 'Rio de Janeiro', 'RJ');

-- Visualizando os dados da tabela Hóspedes
select * from tb_hospedes;

-- Deletando dados de acordo com o ID selecionado (Exclui todo o registro do ID selecionado)
delete from tb_hospedes
where hos_id = 3;

-- Inserindo dados na tabela Quartos
insert into tb_quartos values
(1, 100, 249.99, 2),
(2, 101, 249.99, 2),
(3, 102, 249.99, 2),
(4, 103, 249.99, 2),
(5, 104, 249.99, 2),
(6, 105, 249.99, 2),
(7, 106, 249.99, 2),
(8, 107, 249.99, 2),
(9, 108, 249.99, 2),
(10, 109, 249.99, 2),
(11, 110, 249.99, 2),
(12, 111, 249.99, 2),
(13, 112, 249.99, 2),
(14, 113, 249.99, 2),
(15, 114, 249.99, 2);

-- Visualizando os dados da tabela Quartos
select * from tb_quartos;

-- Deletando dados de acordo com o ID selecionado (Exclui todo o registro do ID selecionado)
delete from tb_quartos
where quar_id = 1;

-- Inserindo dados na tabela Reserva de Quartos
insert into tb_reservas_de_quartos values
(null, 1, 1, '2025-05-13 20:50:00', '2025-05-15 14:30:00', 249.99),
(null, 2, 2, '2025-05-14 14:00:00', '2025-05-16 10:00:00', 299.99),
(null, 3, 3, '2025-05-15 12:00:00', '2025-05-17 11:00:00', 349.99),
(null, 4, 4, '2025-05-16 16:30:00', '2025-05-18 09:00:00', 229.99),
(null, 5, 5, '2025-05-17 10:00:00', '2025-05-18 15:00:00', 199.99),
(null, 6, 6, '2025-05-18 13:00:00', '2025-05-20 12:00:00', 259.99),
(null, 7, 7, '2025-05-19 17:00:00', '2025-05-21 10:00:00', 289.99),
(null, 8, 8, '2025-05-20 15:00:00', '2025-05-22 09:00:00', 239.99),
(null, 9, 9, '2025-05-21 19:00:00', '2025-05-23 11:00:00', 279.99),
(null, 10, 10, '2025-05-22 14:00:00', '2025-05-24 08:30:00', 249.99),
(null, 11, 11, '2025-05-23 16:00:00', '2025-05-25 09:00:00', 299.99),
(null, 12, 12, '2025-05-24 13:00:00', '2025-05-26 10:00:00', 189.99),
(null, 13, 13, '2025-05-25 15:30:00', '2025-05-27 11:00:00', 269.99),
(null, 14, 14, '2025-05-26 18:00:00', '2025-05-28 10:30:00', 319.99),
(null, 15, 15, '2025-05-27 14:00:00', '2025-05-29 12:00:00', 249.99);

-- Visualizando os dados da tabela Reservas de Quartos
select * from tb_reservas_de_quartos;

-- Inserindo dados na tabela de Serviços
insert into tb_servicos (ser_nome, ser_preco) values
('Refrigerante Zero 600ml', 9.99),
('Suco Natural 500ml', 8.49),
('Água Mineral 500ml', 4.99),
('Cerveja Lata 350ml', 7.99),
('Refrigerante Regular 600ml', 9.99),
('Chá Gelado 500ml', 5.49),
('Cerveja Long Neck 330ml', 10.99),
('Suco de Laranja 1L', 12.99),
('Coca-Cola 2L', 14.99),
('Fanta Uva 600ml', 9.49),
('Guaraná Antártica 600ml', 9.99),
('Água de Coco 500ml', 6.99),
('Refrigerante Diet 600ml', 10.49),
('Refrigerante Sabor Limão 600ml', 9.79),
('Suco de Maçã 1L', 11.99);

-- Visualizando os dados da tabela de Serviços
select * from tb_servicos;

-- Inserindo dados na tabela de Reserva de Serviços
insert into tb_reservas_de_servicos values
(null, 1, 1, 5, 259.99),
(null, 2, 1, 2, 99.90),
(null, 3, 2, 1, 49.95),
(null, 4, 3, 4, 199.80),
(null, 5, 4, 3, 149.85),
(null, 6, 5, 5, 249.75),
(null, 7, 6, 2, 89.90),
(null, 8, 7, 6, 299.70),
(null, 9, 8, 3, 129.99),
(null, 10, 9, 2, 79.98),
(null, 11, 10, 4, 189.99),
(null, 12, 11, 1, 39.99),
(null, 13, 12, 5, 219.95),
(null, 14, 13, 2, 89.80),
(null, 15, 14, 3, 134.97),
(null, 15, 15, 4, 179.96);

-- Visualizando os dados da tabela de Reserva de Serviços
select * from tb_reservas_de_servicos;