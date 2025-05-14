-- Criando um novo Banco de dados
create database Hotel_casa_do_bosque;

-- Selecionando o banco que vai ser utilizado no caso "Casa do Bosque"
use Hotel_casa_do_bosque;

-- Criando a tabela Hóspedes 
create table tb_hospedes (
	hos_id int auto_increment primary key not null,		-- ID da tabela, a chave principal
	hos_nome varchar (150) not null, 					-- Nome do Hóspede usado para um cadastro de cliente
	hos_cpf varchar (11) not null, 						-- CPF do Hóspede usado para um cadastro de cliente
	hos_telefone varchar (13) not null, 				-- Telefone de contato do Hóspede usado para um cadastro de cliente
	hos_email varchar (150) not null, 					-- E-mail de contato do Hóspede usado para um cadastro de cliente
	hos_rua varchar (150), 								-- A rua do Hóspede para um cadastro de endereço
	hos_numero int (5), 								-- Número da casa do Hóspede para um cadastro de endereço
	hos_cep varchar (8),   								-- CEP da casa do Hóspede para um cadastro de endereço
	hos_cidade varchar (150), 							-- Cidade do Hóspede para um cadastro de endereço
	hos_estado varchar (150), 							-- Estado do Hóspede para um cadastro de endereço
	hos_uf char (2)										-- UF do Hóspede para um cadastro de endereço
);

-- Criando a tabela Quartos
create table tb_quartos (
	quar_id int auto_increment primary key not null,	-- ID da tabela, a chave principal
	quar_numero int not null,							-- Número do quarto do hotel
	quar_preco decimal (10,2),							-- Valor da hospedagem no quarto 
	quar_capacidade int									-- O número de pessoas que o quarto hospeda
 );

-- Criando a tabela Reservas de Quartos
create table tb_reservas_de_quartos (
	req_id int auto_increment primary key not null, 	-- ID da tabela, a chave principal
    hospede_id int not null,							-- A chave estrangeira de hóspedes
	quarto_id int not null,								-- A chave estrangeira de quarto
	req_data_checkin timestamp, 						-- A data e hora da reserva do quarto
	req_data_checkout datetime, 						-- A data que a hospedagem acaba
	req_valor_total decimal (10,2),						-- Valor total da reserva do quarto
    foreign key (hospede_id) references tb_hospedes(hos_id),	   	-- A chave estrangeira hospede_id referencia a tabela tb_hospedes
	foreign key (quarto_id) references tb_quartos(quar_id)			-- A chave estrangeira quarto_id referencia a tabela tb_quartos
);

-- Criando a tabela Serviços
create table tb_servicos (
	ser_id int auto_increment primary key not null,		-- ID da tabela, a chave principal
	ser_nome varchar (150), 							-- Nome do produto ou serviço que está sendo utilizado
	ser_preco decimal (10,2)								-- O valor do produto ou serviço que foi utilizado
);

-- Criando a tabela Reservas de Serviços
create table tb_reservas_de_servicos (
	rds_id int auto_increment primary key not null, 	-- ID da tabela, a chave principal
    servicos_id int not null,							-- Chave estrangeira de serviços
    rdq_id int not null,								-- Chave estrangeira de reserva de quarto
	rds_quantidade int, 								-- A quantidade de serviços utilizados
	rds_valor_total decimal (10,2),						-- O valor total de produtos adquiridos ou serviços utilizados
	foreign key (servicos_id) references tb_servicos(ser_id), 		-- A chave estrangeira servicos_id referencia a tabela tb_servicos
    foreign key (rdq_id) references tb_reservas_de_quartos(req_id)	-- A chave estrangeira rdq_id referencia a tabela tb_reservas_de_quartos
);
