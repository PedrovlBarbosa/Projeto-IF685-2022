TRUNCATE TABLE aluguel;
TRUNCATE TABLE lucro;
TRUNCATE TABLE Avaliacao;
TRUNCATE TABLE Sala;
TRUNCATE TABLE Fiador;
TRUNCATE TABLE Locatario;
TRUNCATE TABLE Locador;
TRUNCATE TABLE Cliente;
TRUNCATE TABLE Corretor;
TRUNCATE TABLE Telefone;
TRUNCATE TABLE Pessoa;
TRUNCATE TABLE Endereco;


INSERT INTO Endereco VALUES ('04302021', 'APTO', 'Parque Imperial', 'Rua Paracatu', 'São Paulo', 'SP'),
                            ('20040002', 'CASA', 'Centro', 'Avenida Rio Branco', 'Rio de Janeiro', 'RJ'),
                            ('75802095', 'CASA', 'Vila Jardim Rio Claro', 'Avenida Tocantins', 'Jataí', 'GO'),
                            ('03962040', 'APTO', 'Cidade São Mateus', 'Rua Maria Luísa do Val Penteado', 'São Paulo', 'SP'),
                            ('14401150', 'APTO', 'Cidade Nova', 'Rua Frederico Moura', 'Franca', 'SP'),
                            ('64000290', 'APTO', 'Centro', 'Rua Arlindo Nogueira', 'Teresina', 'PI'),
                            ('76900032', 'CASA', 'Centro', 'Travessa da CDL', 'Ji-Paraná', 'RO'),
                            ('28035042', 'CASA', 'Centro', 'Rua Tenente-Coronel Cardoso', 'Campos dos Goytacazes', 'RJ'),
                            ('96204040', 'EMPRESARIAL', 'Zona Portuária', 'Avenida Almirante Maximiano Fonseca', 'Rio Grande', 'RS'),
                            ('06709015', 'EMPRESARIAL', 'Lageadinho', 'Rodovia Raposo Tavares', 'Cotia', 'SP'),
                            ('66055260', 'APTO', 'Nazaré', 'Avenida Governador José Malcher', 'Belém', 'PA'),
                            ('03318000', 'CASA', 'Vila Gomes Cardim', 'Rua Serra de Bragança', 'São Paulo', 'SP'),
                            ('13216000', 'APTO', 'Vila Joana', 'Avenida São João', 'Jundiaí', 'SP'),
                            ('01045001', 'CASA', 'República', 'Praça da República', 'São Paulo', 'SP'),
                            ('30120060', 'CASA', 'Centro', 'Rua dos Carijós', 'Belo Horizonte', 'MG'),
                            ('80520560', 'EMPRESARIAL', 'Bom Retiro', 'Rua Carlos Augusto Cornelsen', 'Curitiba', 'PR');
                            ('79002290', 'CASA', 'Monte Castelo', 'Rua da Imprensa', 'Campo Grande', 'MS'),
                            ('71020631', 'EMPRESARIAL', 'Guará I', 'QE 11 Área Especial C', 'Brasília', 'DF'),
                            ('16015244', 'APTO', 'Jardim Sumaré', 'Rua Cristiano Olsen', 'Araçatuba', 'SP'),
                            ('30130005', 'CASA', 'Boa Viagem', 'Avenida Afonso Pena', 'Belo Horizonte', 'MG'),
                            ('62011140', 'APTO', 'Centro', 'Rua Domingos Olímpio', 'Sobral', 'CE')
                            ('51010000', 'EMPRESARIAL', 'Boa Viagem', 'Av. Engenheiro Antonio de Goes', 'Recife', 'PE'),
                            ('51020280', 'EMPRESARIAL', 'Boa Viagem', 'Rua Padre Carapuceiro', 'Recife', 'SP'),
                            ('30130005', 'CASA', 'Boa Viagem', 'Avenida Afonso Pena', 'Belo Horizonte', 'MG'),
                            ('43815300', 'CASA', 'Nova Candeias', 'Rua Egberto Ferreira', 'Candeias', 'BA'),
                            ('59063340', 'APTO', 'Lagoa Nova', 'Rua Capitão Dobico', 'Natal', 'RN'),
                            ('29141765', 'APTO', 'Rio Marinho', 'Rua Orquídea', 'Cariacica', 'ES'),
                            ('68376315', 'CASA', 'Colinas', 'Rua WE Cinco', 'Altamira', 'PA'), 
                            ('62011140', 'APTO', 'Centro', 'Rua Domingos Olímpio', 'Sobral', 'CE');





INSERT INTO Pessoa VALUES ('261.319.150-32', 'Frederico', 'M', '10/20/200', '04302021'),
                          ('140.067.983-45', 'Amanda', 'F', '14/01/1998', '20040002'),
                          ('093.010.763-78', 'Hélio', 'M', '10/04/2002', '75802095'),
                          ('654.312.123-66', 'Carla', 'F', '10/11/1990', '03962040'),
                          ('948.695.710-05', 'Antônio', 'M', '01/12/1980', '14401150'),                                            
                          ('602.312.980-30', 'Júlia', 'F', '03/09/1996', '64000290'),                                              
                          ('970.465.370-03', 'João Victor', 'M', '04/09/1985', '76900032'),
                          ('552.010.750-53', 'Maria Clara', 'F', '11/13/1987', '28035042'),
                          ('103.320.160-05', 'Arthur', 'M', '03/13/1988', '43815300'),
                          ('652.730.540-01', 'Isabela', 'F', '08/27/1985', '59063340'),
                          ('302.292.330-90', 'Levi', 'M', '10/28/2003', '66055260'),
                          ('481.531.180-30', 'Martina', 'F', '11/01/1989', '03318000'),
                          ('091.665.070-73', 'Guilherme', 'M', '08/02/1995', '13216000'),
                          ('123.419.870-36', 'Luisa', 'F', '06/19/1986', '01045001'),
                          ('738.529.010-81', 'Mariana', 'F', '05/06/1993', '30120060'),
                          ('804.759.740-00', 'Maria Flor', 'F', '07/31/1993', '29141765'),
                          ('019.588.030-73', 'Lucas Henrique', 'M', '03/08/1999', '79002290'),
                          ('169.161.620-66', 'Virginia', 'F', '09/27/1991', '68376315'),
                          ('053.428.500-70', 'José Felipe', 'M', '07/10/1987', '16015244'),
                          ('146.000.310-16', 'Maria Alice', 'F', '10/03/1989', '30130005'),
                          ('522.046.960-64', 'Matheus', 'M', '06/02/1987', '62011140'),
                          ('222.816.320-16', 'Matilda', 'F', '05/08/2001', '30120060'),
                          ('668.011.180-30', 'Marcos', 'M', '07/19/1985', '29141765'),
                          ('259.829.110-70', 'Fabiana', 'F', '09/11/1994', '79002290'),
                          ('379.840.440-23', 'Roberto', 'M', '10/16/1983', '68376315'),
                          ('657.885.490-86', 'Fernanda', 'F', '08/08/1987', '16015244'),
                          ('521.907.640-09', 'Bruno', 'M', '04/20/1992', '30130005'),
                          ('829.491.020-18', 'Rose', 'F', '03/15/2001', '62011140');


INSERT INTO Telefone VALUES ('261.319.150-32', '6193546-5145'),
                            ('140.067.983-45', '4593185-8238'),
                            ('093.010.763-78', '4292921-4137'),
                            ('654.312.123-66', '2793274-2758'),
                            ('948.695.710-05', '8292675-8462'),
                            ('602.312.980-30', '2292441-4264'),
                            ('970.465.370-03', '9993435-2795'),
                            ('552.010.750-53', '6292825-3635'),
                            ('103.320.160-05', '5492714-2661'),
                            ('652.730.540-01', '8292233-8576'),
                            ('302.292.330-90', '7992677-9486'),
                            ('481.531.180-30', '6792476-5710'),
                            ('091.665.070-73', '9492275-6381'),
                            ('123.419.870-36', '9492677-9367'),
                            ('804.759.740-00', '9792117-7403'),
                            ('019.588.030-73', '5192884-8564'),
                            ('169.161.620-66', '9292896-8620'),
                            ('053.428.500-70', '9692064-4037'),
                            ('146.000.310-16', '6993240-3583'),
                            ('522.046.960-64', '8893183-7222');
                            ('222.816.320-16', '9393286-3330'),
                            ('668.011.180-30', '9393375-1232'),
                            ('259.829.110-70', '8892216-0150'),
                            ('379.840.440-23', '2293458-3845'),
                            ('657.885.490-86', '3192385-5637'),
                            ('521.907.640-09', '6193233-7193'),
                            ('829.491.020-18', '6793470-9172');


INSERT INTO Corretor VALUES ('261.319.150-32', '10/15/2021', 2000, '970.465.370-03'),
                            ('140.067.983-45', '11/01/2021', 1500, '948.695.710-05'),
                            ('093.010.763-78', '03/22/2022', 5200, '654.312.123-66'),
                            ('654.312.123-66', '07/13/2020', 3750, '093.010.763-78'),
                            ('948.695.710-05', '12/31/2019', 2200, '654.312.123-66'),
                            ('602.312.980-30', '02/25/2020', 1800, '970.465.370-03'),
                            ('970.465.370-03', '08/06/2019', 3450, '093.010.763-78');

INSERT INTO Cliente VALUES  ('552.010.750-53'), 
                            ('103.320.160-05'),
                            ('652.730.540-01'),
                            ('302.292.330-90'),
                            ('481.531.180-30'),
                            ('123.419.870-36'),
                            ('738.529.010-81'),
                            ('804.759.740-00'),
                            ('019.588.030-73'),
                            ('169.161.620-66'),
                            ('053.428.500-70'),
                            ('146.000.310-16'),
                            ('522.046.960-64'),
                            ('222.816.320-16'),
                            ('668.011.180-30'),
                            ('259.829.110-70'),
                            ('379.840.440-23'),
                            ('657.885.490-86'),
                            ('521.907.640-09'),
                            ('829.491.020-18'),
                            ('091.665.070-73');

INSERT INTO Locador VALUES  ('552.010.750-53'),
                            ('103.320.160-05'),
                            ('652.730.540-01'),
                            ('302.292.330-90'),
                            ('481.531.180-30'),
                            ('091.665.070-73'),
                            ('123.419.870-36');


INSERT INTO Locatario VALUES  ('738.529.010-81'),
                              ('804.759.740-00'),
                              ('019.588.030-73'),
                              ('169.161.620-66'),
                              ('053.428.500-70'),
                              ('146.000.310-16'),
                              ('522.046.960-64');


INSERT INTO Fiador VALUES ('222.816.320-16'),
                          ('668.011.180-30'),
                          ('259.829.110-70'),
                          ('379.840.440-23'),
                          ('657.885.490-86'),
                          ('521.907.640-09'),
                          ('829.491.020-18');

INSERT INTO Sala VALUES (sala_seq.NEXTVAL, 30.50, '96204040', '261.319.150-32', '552.010.750-53'),
                        (sala_seq.NEXTVAL, 50.80, '06709015', '140.067.983-45', '103.320.160-05'),
                        (sala_seq.NEXTVAL, 44.00, '80520560', '093.010.763-78', '652.730.540-01'),
                        (sala_seq.NEXTVAL, 72.00, '71020631', '654.312.123-66', '302.292.330-90'),
                        (sala_seq.NEXTVAL, 44.00, '72347856', '000.000.000-00', '140.067.983-45'),
                        (sala_seq.NEXTVAL, 44.00, '72347856', '000.000.000-00', '140.067.983-45'),
                        (sala_seq.NEXTVAL, 44.00, '72347856', '000.000.000-00', '140.067.983-45');



INSERT INTO Avaliacao VALUES('000.000.000-00', '140.067.983-45', 2, 565.59);
-- CREATE TABLE Avaliacao (
-- 	cpf_corretor VARCHAR2(14),
--     cpf_locador VARCHAR2(14),
-- 	codigo_sala INTEGER,
-- 	preco_unit NUMBER(3, 2),

--     CONSTRAINT codigo_sala_avaliacao_fkey FOREIGN KEY(codigo_sala, cpf_locador) REFERENCES Sala(codigo, cpf_dono),
-- 	CONSTRAINT cpf_locador_avaliacao_fkey FOREIGN KEY(cpf_locador) REFERENCES Locador(cpf_locador),
-- 	CONSTRAINT cpf_corretor_avaliacao_fkey FOREIGN KEY(cpf_corretor) REFERENCES Corretor(cpf_corretor),
-- 	CONSTRAINT avaliacao_pkey PRIMARY KEY(codigo_sala, cpf_locador, cpf_corretor)
-- );


INSERT INTO lucro VALUES(60.00, 40.00),
                        (55.00, 55.00),
                        (70.00, 30.00),
                        (85.00, 15.00),
                        (65.00, 35.00),
                        (80.00, 20.00),
                        (90.00, 10.00);


INSERT INTO Aluguel VALUES
  ('093.010.763-78', '140.067.983-45', '654.312.123-66', 2, '2022-10-18', '2023-01-01', 60.00);
-- CREATE TABLE Aluguel (
--   	cpf_locatario VARCHAR2(14),
--   	cpf_dono VARCHAR2(14),
--   	cpf_fiador VARCHAR2(14),
--   	codigo_sala INTEGER,
--   	data_inicio DATE,
--   	data_final DATE,
--   	porc_locador NUMBER(2, 2),

-- 	CONSTRAINT alguel_pkey PRIMARY KEY(codigo_sala, cpf_locatario, cpf_dono, data_inicio),	
-- 	CONSTRAINT porc_locador_fkey FOREIGN KEY (porc_locador) REFERENCES Lucro(porc_locador),
-- 	CONSTRAINT cpf_dono_aluguel_fkey FOREIGN KEY (cpf_dono) REFERENCES Locador(cpf_locador),
-- 	CONSTRAINT cpf_fiador_aluguel_fkey FOREIGN KEY (cpf_fiador) REFERENCES Fiador(cpf_fiador),
-- 	CONSTRAINT cpf_locatario_aluguel_fkey FOREIGN KEY(cpf_locatario) REFERENCES Locatario(cpf_locatario),
-- 	CONSTRAINT codigo_sala_aluguel_fkey FOREIGN KEY (codigo_sala, cpf_dono) REFERENCES Sala(codigo, cpf_dono)
-- );

