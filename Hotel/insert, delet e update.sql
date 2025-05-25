-- Selecionando a tabela 
use Hotel_casa_do_bosque;

-- Inserindo dados
insert into tb_hospedes values
(null, 'Caio Bruno', '26783163123', '11995299799', 'caiosantana757@gmail.com', 'Rua.Doutor carlos aldrovandi', '85', '00010001', 'Paraisopolis', 'São Paulo', 'SP');
-- ou
INSERT INTO tb_hospedes (hos_nome, hos_cpf, hos_telefone, hos_email, hos_rua, hos_numero, hos_cep, hos_cidade, hos_estado, hos_uf) VALUES 
('Caio Bruno', '26783163123', '11995299799', 'caiosantana757@gmail.com', 'Rua.Doutor carlos aldrovandi', '85', '00010001', 'Paraisopolis', 'São Paulo', 'SP');

-- Alterar dados
UPDATE tb_hospedes
SET hos_cep = '10101010'
WHERE hos_id = 17;

-- Deletando dados 
DELETE FROM tb_hospedes
WHERE hos_id = 18;
