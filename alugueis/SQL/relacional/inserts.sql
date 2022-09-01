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


INSERT INTO Endereco VALUES ('04302021', 'APTO', 'Parque Imperial', 'Rua Paracatu', 'São Paulo', 'SP');
INSERT INTO Endereco VALUES ('20040002', 'CASA', 'Centro', 'Avenida Rio Branco', 'Rio de Janeiro', 'RJ');
INSERT INTO Endereco VALUES ('75802095', 'CASA', 'Vila Jardim Rio Claro', 'Avenida Tocantins', 'Jataí', 'GO');
INSERT INTO Endereco VALUES ('03962040', 'APTO', 'Cidade São Mateus', 'Rua Maria Luísa do Val Penteado', 'São Paulo', 'SP');
INSERT INTO Endereco VALUES ('14401150', 'APTO', 'Cidade Nova', 'Rua Frederico Moura', 'Franca', 'SP');
INSERT INTO Endereco VALUES ('64000290', 'APTO', 'Centro', 'Rua Arlindo Nogueira', 'Teresina', 'PI');
INSERT INTO Endereco VALUES ('76900032', 'CASA', 'Centro', 'Travessa da CDL', 'Ji-Paraná', 'RO');
INSERT INTO Endereco VALUES ('28035042', 'CASA', 'Centro', 'Rua Tenente-Coronel Cardoso', 'Campos dos Goytacazes', 'RJ');
INSERT INTO Endereco VALUES ('96204040', 'EMPRESARIAL', 'Zona Portuária', 'Avenida Almirante Maximiano Fonseca', 'Rio Grande', 'RS');
INSERT INTO Endereco VALUES ('06709015', 'EMPRESARIAL', 'Lageadinho', 'Rodovia Raposo Tavares', 'Cotia', 'SP');
INSERT INTO Endereco VALUES ('66055260', 'APTO', 'Nazaré', 'Avenida Governador José Malcher', 'Belém', 'PA');
INSERT INTO Endereco VALUES ('03318000', 'CASA', 'Vila Gomes Cardim', 'Rua Serra de Bragança', 'São Paulo', 'SP');
INSERT INTO Endereco VALUES ('13216000', 'APTO', 'Vila Joana', 'Avenida São João', 'Jundiaí', 'SP');
INSERT INTO Endereco VALUES ('01045001', 'CASA', 'República', 'Praça da República', 'São Paulo', 'SP');
INSERT INTO Endereco VALUES ('30120060', 'CASA', 'Centro', 'Rua dos Carijós', 'Belo Horizonte', 'MG');
INSERT INTO Endereco VALUES ('80520560', 'EMPRESARIAL', 'Bom Retiro', 'Rua Carlos Augusto Cornelsen', 'Curitiba', 'PR');
INSERT INTO Endereco VALUES ('79002290', 'CASA', 'Monte Castelo', 'Rua da Imprensa', 'Campo Grande', 'MS');
INSERT INTO Endereco VALUES ('71020631', 'EMPRESARIAL', 'Guará I', 'QE 11 Área Especial C', 'Brasília', 'DF');
INSERT INTO Endereco VALUES ('16015244', 'APTO', 'Jardim Sumaré', 'Rua Cristiano Olsen', 'Araçatuba', 'SP');
INSERT INTO Endereco VALUES ('30130005', 'CASA', 'Boa Viagem', 'Avenida Afonso Pena', 'Belo Horizonte', 'MG');
INSERT INTO Endereco VALUES ('62011140', 'APTO', 'Centro', 'Rua Domingos Olímpio', 'Sobral', 'CE');
INSERT INTO Endereco VALUES ('51010000', 'EMPRESARIAL', 'Boa Viagem', 'Av. Engenheiro Antonio de Goes', 'Recife', 'PE');
INSERT INTO Endereco VALUES ('51020280', 'EMPRESARIAL', 'Boa Viagem', 'Rua Padre Carapuceiro', 'Recife', 'SP');
INSERT INTO Endereco VALUES ('43815300', 'CASA', 'Nova Candeias', 'Rua Egberto Ferreira', 'Candeias', 'BA');
INSERT INTO Endereco VALUES ('59063340', 'APTO', 'Lagoa Nova', 'Rua Capitão Dobico', 'Natal', 'RN');
INSERT INTO Endereco VALUES ('29141765', 'APTO', 'Rio Marinho', 'Rua Orquídea', 'Cariacica', 'ES');
INSERT INTO Endereco VALUES ('68376315', 'CASA', 'Colinas', 'Rua WE Cinco', 'Altamira', 'PA');


INSERT INTO Pessoa VALUES ('261.319.150-32', 'Frederico', 'M', TO_DATE('10/02/2000', 'dd/mm/yyyy'), '04302021');
INSERT INTO Pessoa VALUES ('140.067.983-45', 'Amanda', 'F', TO_DATE('14/01/1998', 'dd/mm/yyyy'), '20040002');
INSERT INTO Pessoa VALUES ('093.010.763-78', 'Hélio', 'M', TO_DATE('10/04/2002', 'dd/mm/yyyy'), '75802095');
INSERT INTO Pessoa VALUES ('654.312.123-66', 'Carla', 'F', TO_DATE('10/11/1990', 'dd/mm/yyyy'), '03962040');
INSERT INTO Pessoa VALUES ('948.695.710-05', 'Antônio', 'M', TO_DATE('01/12/1980', 'dd/mm/yyyy'), '14401150');
INSERT INTO Pessoa VALUES ('602.312.980-30', 'Júlia', 'F', TO_DATE('03/09/1996', 'dd/mm/yyyy'), '64000290');
INSERT INTO Pessoa VALUES ('970.465.370-03', 'João Victor', 'M', TO_DATE('04/09/1985', 'dd/mm/yyyy'), '76900032');
INSERT INTO Pessoa VALUES ('552.010.750-53', 'Maria Clara', 'F', TO_DATE('11/12/1987', 'dd/mm/yyyy'), '28035042');
INSERT INTO Pessoa VALUES ('103.320.160-05', 'Arthur', 'M', TO_DATE('03/12/1988', 'dd/mm/yyyy'), '43815300');
INSERT INTO Pessoa VALUES ('652.730.540-01', 'Isabela', 'F', TO_DATE('08/07/1985', 'dd/mm/yyyy'), '59063340');
INSERT INTO Pessoa VALUES ('302.292.330-90', 'Levi', 'M', TO_DATE('10/08/2003', 'dd/mm/yyyy'), '66055260');
INSERT INTO Pessoa VALUES ('481.531.180-30', 'Martina', 'F', TO_DATE('11/01/1989', 'dd/mm/yyyy'), '03318000');
INSERT INTO Pessoa VALUES ('091.665.070-73', 'Guilherme', 'M', TO_DATE('08/02/1995', 'dd/mm/yyyy'), '13216000');
INSERT INTO Pessoa VALUES ('123.419.870-36', 'Luisa', 'F', TO_DATE('06/09/1986', 'dd/mm/yyyy'), '01045001');
INSERT INTO Pessoa VALUES ('738.529.010-81', 'Mariana', 'F', TO_DATE('05/06/1993', 'dd/mm/yyyy'), '30120060');
INSERT INTO Pessoa VALUES ('804.759.740-00', 'Maria Flor', 'F', TO_DATE('07/01/1993', 'dd/mm/yyyy'), '29141765');
INSERT INTO Pessoa VALUES ('019.588.030-73', 'Lucas Henrique', 'M', TO_DATE('03/08/1999', 'dd/mm/yyyy'), '79002290');
INSERT INTO Pessoa VALUES ('169.161.620-66', 'Virginia', 'F', TO_DATE('09/07/1991', 'dd/mm/yyyy'), '68376315');
INSERT INTO Pessoa VALUES ('053.428.500-70', 'José Felipe', 'M', TO_DATE('07/10/1987', 'dd/mm/yyyy'), '16015244');
INSERT INTO Pessoa VALUES ('146.000.310-16', 'Maria Alice', 'F', TO_DATE('10/03/1989', 'dd/mm/yyyy'), '30130005');
INSERT INTO Pessoa VALUES ('522.046.960-64', 'Matheus', 'M', TO_DATE('06/02/1987', 'dd/mm/yyyy'), '62011140');
INSERT INTO Pessoa VALUES ('222.816.320-16', 'Matilda', 'F', TO_DATE('05/08/2001', 'dd/mm/yyyy'), '30120060');
INSERT INTO Pessoa VALUES ('668.011.180-30', 'Marcos', 'M', TO_DATE('07/09/1985', 'dd/mm/yyyy'), '29141765');
INSERT INTO Pessoa VALUES ('259.829.110-70', 'Fabiana', 'F', TO_DATE('09/11/1994', 'dd/mm/yyyy'), '79002290');
INSERT INTO Pessoa VALUES ('379.840.440-23', 'Roberto', 'M', TO_DATE('10/06/1983', 'dd/mm/yyyy'), '68376315');
INSERT INTO Pessoa VALUES ('657.885.490-86', 'Fernanda', 'F', TO_DATE('08/08/1987', 'dd/mm/yyyy'), '16015244');
INSERT INTO Pessoa VALUES ('521.907.640-09', 'Bruno', 'M', TO_DATE('04/02/1992', 'dd/mm/yyyy'), '30130005');
INSERT INTO Pessoa VALUES ('829.491.020-18', 'Rose', 'F', TO_DATE('03/05/2001', 'dd/mm/yyyy'), '62011140');


INSERT INTO Telefone VALUES ('261.319.150-32', '193546-5145');
INSERT INTO Telefone VALUES ('140.067.983-45', '593185-8238');
INSERT INTO Telefone VALUES ('093.010.763-78', '292921-4137');
INSERT INTO Telefone VALUES ('654.312.123-66', '793274-2758');
INSERT INTO Telefone VALUES ('948.695.710-05', '292675-8462');
INSERT INTO Telefone VALUES ('602.312.980-30', '292441-4264');
INSERT INTO Telefone VALUES ('970.465.370-03', '993435-2795');
INSERT INTO Telefone VALUES ('552.010.750-53', '292825-3635');
INSERT INTO Telefone VALUES ('103.320.160-05', '492714-2661');
INSERT INTO Telefone VALUES ('652.730.540-01', '292233-8576');
INSERT INTO Telefone VALUES ('302.292.330-90', '992677-9486');
INSERT INTO Telefone VALUES ('481.531.180-30', '792476-5710');
INSERT INTO Telefone VALUES ('091.665.070-73', '492275-6381');
INSERT INTO Telefone VALUES ('123.419.870-36', '492677-9367');
INSERT INTO Telefone VALUES ('804.759.740-00', '792117-7403');
INSERT INTO Telefone VALUES ('019.588.030-73', '192884-8564');
INSERT INTO Telefone VALUES ('169.161.620-66', '292896-8620');
INSERT INTO Telefone VALUES ('053.428.500-70', '692064-4037');
INSERT INTO Telefone VALUES ('146.000.310-16', '993240-3583');
INSERT INTO Telefone VALUES ('522.046.960-64', '893183-7222');
INSERT INTO Telefone VALUES ('222.816.320-16', '393286-3330');
INSERT INTO Telefone VALUES ('668.011.180-30', '393375-1232');
INSERT INTO Telefone VALUES ('259.829.110-70', '892216-0150');
INSERT INTO Telefone VALUES ('379.840.440-23', '293458-3845');
INSERT INTO Telefone VALUES ('657.885.490-86', '192385-5637');
INSERT INTO Telefone VALUES ('521.907.640-09', '193233-7193');
INSERT INTO Telefone VALUES ('829.491.020-18', '793470-9172');


INSERT INTO Corretor VALUES ('970.465.370-03', TO_DATE('06/08/2019', 'dd/mm/yyyy'), 3450, NULL);
INSERT INTO Corretor VALUES ('654.312.123-66', TO_DATE('13/07/2020', 'dd/mm/yyyy'), 3750, NULL);
INSERT INTO Corretor VALUES ('948.695.710-05', TO_DATE('31/12/2019', 'dd/mm/yyyy'), 2200, '654.312.123-66');
INSERT INTO Corretor VALUES ('261.319.150-32', TO_DATE('15/10/2021', 'dd/mm/yyyy'), 2000, '970.465.370-03');
INSERT INTO Corretor VALUES ('140.067.983-45', TO_DATE('01/11/2021', 'dd/mm/yyyy'), 1500, '948.695.710-05');
INSERT INTO Corretor VALUES ('093.010.763-78', TO_DATE('22/03/2022', 'dd/mm/yyyy'), 5200, '654.312.123-66');
INSERT INTO Corretor VALUES ('602.312.980-30', TO_DATE('25/02/2020', 'dd/mm/yyyy'), 1800, '970.465.370-03');


INSERT INTO Cliente VALUES ('552.010.750-53'); 
INSERT INTO Cliente VALUES ('103.320.160-05');
INSERT INTO Cliente VALUES ('652.730.540-01');
INSERT INTO Cliente VALUES ('302.292.330-90');
INSERT INTO Cliente VALUES ('481.531.180-30');
INSERT INTO Cliente VALUES ('123.419.870-36');
INSERT INTO Cliente VALUES ('738.529.010-81');
INSERT INTO Cliente VALUES ('804.759.740-00');
INSERT INTO Cliente VALUES ('019.588.030-73');
INSERT INTO Cliente VALUES ('169.161.620-66');
INSERT INTO Cliente VALUES ('053.428.500-70');
INSERT INTO Cliente VALUES ('146.000.310-16');
INSERT INTO Cliente VALUES ('522.046.960-64');
INSERT INTO Cliente VALUES ('222.816.320-16');
INSERT INTO Cliente VALUES ('668.011.180-30');
INSERT INTO Cliente VALUES ('259.829.110-70');
INSERT INTO Cliente VALUES ('379.840.440-23');
INSERT INTO Cliente VALUES ('657.885.490-86');
INSERT INTO Cliente VALUES ('521.907.640-09');
INSERT INTO Cliente VALUES ('829.491.020-18');
INSERT INTO Cliente VALUES ('091.665.070-73');


INSERT INTO Locador VALUES ('552.010.750-53');
INSERT INTO Locador VALUES ('103.320.160-05');
INSERT INTO Locador VALUES ('652.730.540-01');
INSERT INTO Locador VALUES ('302.292.330-90');
INSERT INTO Locador VALUES ('481.531.180-30');
INSERT INTO Locador VALUES ('091.665.070-73');
INSERT INTO Locador VALUES ('123.419.870-36');


INSERT INTO Locatario VALUES ('738.529.010-81');
INSERT INTO Locatario VALUES ('804.759.740-00');
INSERT INTO Locatario VALUES ('019.588.030-73');
INSERT INTO Locatario VALUES ('169.161.620-66');
INSERT INTO Locatario VALUES ('053.428.500-70');
INSERT INTO Locatario VALUES ('146.000.310-16');
INSERT INTO Locatario VALUES ('522.046.960-64');

INSERT INTO Fiador VALUES ('222.816.320-16');
INSERT INTO Fiador VALUES ('668.011.180-30');
INSERT INTO Fiador VALUES ('259.829.110-70');
INSERT INTO Fiador VALUES ('379.840.440-23');
INSERT INTO Fiador VALUES ('657.885.490-86');
INSERT INTO Fiador VALUES ('521.907.640-09');
INSERT INTO Fiador VALUES ('829.491.020-18');


INSERT INTO Sala VALUES (sala_seq.NEXTVAL, 30.50, '96204040', '261.319.150-32', '552.010.750-53');
INSERT INTO Sala VALUES (sala_seq.NEXTVAL, 50.80, '06709015', '140.067.983-45', '103.320.160-05');
INSERT INTO Sala VALUES (sala_seq.NEXTVAL, 44.00, '80520560', '093.010.763-78', '652.730.540-01');
INSERT INTO Sala VALUES (sala_seq.NEXTVAL, 72.00, '71020631', '654.312.123-66', '302.292.330-90');


INSERT INTO Avaliacao VALUES('970.465.370-03', '552.010.750-53', 2, 565.59);


INSERT INTO lucro VALUES (60.00, 40.00);
INSERT INTO lucro VALUES (55.00, 55.00);
INSERT INTO lucro VALUES (70.00, 30.00);
INSERT INTO lucro VALUES (85.00, 15.00);
INSERT INTO lucro VALUES (65.00, 35.00);
INSERT INTO lucro VALUES (80.00, 20.00);
INSERT INTO lucro VALUES (90.00, 10.00);


INSERT INTO Aluguel VALUES ('093.010.763-78', '140.067.983-45', '654.312.123-66', 2, TO_DATE('18/10/2022', 'dd/mm/yyyy'), TO_DATE('01/01/2023', 'dd/mm/yyyy'), 60.00);

