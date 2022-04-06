TRUNCATE TABLE Agendamento_criado;
TRUNCATE TABLE Agendamento;
TRUNCATE TABLE Execucao;
TRUNCATE TABLE Laudo;
TRUNCATE TABLE Exame_centro;
TRUNCATE TABLE Exame;
TRUNCATE TABLE Enfermeira;
TRUNCATE TABLE Medico_especialista;
TRUNCATE TABLE Medico_geral;
TRUNCATE TABLE Medico;
TRUNCATE TABLE Area_atuacao;
TRUNCATE TABLE Turno;
TRUNCATE TABLE Atendente;
TRUNCATE TABLE Profissional_de_saude;
TRUNCATE TABLE Acompanhante;
TRUNCATE TABLE Paciente;
TRUNCATE TABLE Telefone_pessoa;
TRUNCATE TABLE Pessoa;
TRUNCATE TABLE Telefone_centro;
TRUNCATE TABLE Centro;

INSERT INTO Pessoa VALUES ('74846020940', 'Agatha Tânia da Cunha', 'F', 
    TO_DATE('23/03/1987', 'dd/mm/yyyy'), 'Alto Santa Maria', null, 
    'Parnaíba', 'Rua Doutor Zilmar Duarte Vieira', 746, 'PI', '64212480', 'Brasil');
INSERT INTO Pessoa VALUES ('60220992851', 'Márcio Yuri André Melo', 'M', 
    TO_DATE('26/02/1958', 'dd/mm/yyyy'), 'Jardim Alto da Boa Vista', null, 'Umuarama', 
    'Rua Marcos Moreno dos Santos Cabeção', 778, 'PR', '87506460', 'Brasil');
INSERT INTO Pessoa VALUES ('29874723580', 'Nina Marina Aline Moreira', 'F', 
    TO_DATE('05/01/2003', 'dd/mm/yyyy'), 'Ivete Vargas', null, 'Rio Branco', 
    'Rua 13 de Maio', 939, 'AC', '69900205', 'Brasil');
INSERT INTO Pessoa VALUES ('65039251742', 'Kevin Luan Drumond', 'M', 
    TO_DATE('03/03/1984', 'dd/mm/yyyy'), 'Boa Esperança', null, 'Parnaíba', 
    'Rua Sete', 174, 'PI', '64215428', 'Brasil');
INSERT INTO Pessoa VALUES ('07995976437', 'Diego Benício André Ribeiro', 'M', 
    TO_DATE('06/03/1964', 'dd/mm/yyyy'), 'Chácaras Araguaia', null, 'Novo Gama', 
    'Quadra Quadra 31', 941, 'GO', '72861124', 'Brasil');
INSERT INTO Pessoa VALUES ('74075272451', 'Raimundo Isaac Mendes', 'M', 
    TO_DATE('20/01/1975', 'dd/mm/yyyy'), 'Jardim Saúde', null, 'Cacoal', 
    'Avenida das Comunicações', 922, 'RO', '76964173', 'Brasil');
INSERT INTO Pessoa VALUES ('48487552986', 'Flávia Jéssica da Costa', 'F', 
    TO_DATE('01/02/1966', 'dd/mm/yyyy'), 'Colônia Oliveira Machado', null, 'Manaus', 
    'Rua Elesbão Luz', 244, 'AM', '69070800', 'Brasil');
INSERT INTO Pessoa VALUES ('78822220030', 'Rafaela Sophie Raimunda Novaes', 'F', 
    TO_DATE('08/02/1981', 'dd/mm/yyyy'), 'Nossa Senhora das Graças', null, 'Caxias do Sul', 
    'Rua Lenice Moraes Santos', 545, 'RS', '95095143', 'Brasil');
INSERT INTO Pessoa VALUES ('12826023497', 'Bárbara Stella da Mata', 'F', 
    TO_DATE('14/02/1957', 'dd/mm/yyyy'), 'Sotelândia', null, 'Cariacica', 
    'Rua E', 526, 'ES', '29140636', 'Brasil');
INSERT INTO Pessoa VALUES ('69933068326', 'Elisa Camila Teixeira', 'F', 
    TO_DATE('08/01/1990', 'dd/mm/yyyy'), 'Pinheirinho', null, 'Francisco Beltrão', 
    'Rua Ângelo Pelisser', 566, 'PR', '85603173', 'Brasil');
INSERT INTO Pessoa VALUES ('50413745384', 'Lavínia Juliana Sophia Dias', 'F', 
    TO_DATE('03/01/2002', 'dd/mm/yyyy'), 'Harmonia', null, 'Canoas', 
    'Rua das Araucárias', 105, 'RS', '92320810', 'Brasil');
INSERT INTO Pessoa VALUES ('52236657404', 'Rosângela Francisca Isabelle', 'F', 
    TO_DATE('23/01/1975', 'dd/mm/yyyy'), 'Vila Amazonas', null, 'Santana', 
    'Rua D 6C', 925, 'AP', '68926210', 'Brasil');
INSERT INTO Pessoa VALUES ('84705091957', 'Rodrigo José Thomas Rodrigues', 'M', 
    TO_DATE('24/02/1974', 'dd/mm/yyyy'), 'Sussuarana', null, 'Salvador', 
    '1ª Travessa Donana', 213, 'BA', '41214725', 'Brasil');
INSERT INTO Pessoa VALUES ('26706295981', 'Osvaldo Lucas Kevin Brito', 'M', 
    TO_DATE('24/02/1974', 'dd/mm/yyyy'), 'Jardim Marília', null, 'Dourados', 
    'Rua Ceres', 468, 'MS', '79841604', 'Brasil');
INSERT INTO Pessoa VALUES ('85851790660', 'Bento Carlos Eduardo Roberto Barros', 'M', 
    TO_DATE('27/02/1988', 'dd/mm/yyyy'), 'Parque do Sol', null, 'São José do Rio Preto', 
    'Rua José Cândido Rosa', 105, 'SP', '15040515', 'Brasil');
INSERT INTO Pessoa VALUES ('49371521732', 'Fábio Enzo Benjamin da Rocha', 'M', 
    TO_DATE('14/02/1982', 'dd/mm/yyyy'), 'Parque dos Ipês II', null, 'Ponta Porã', 
    'Rua Hortêncio Vieira', 988, 'MS', '69900658', 'Brasil');
INSERT INTO Pessoa VALUES ('18413380871', 'Mariah Débora Assis', 'F', 
    TO_DATE('14/03/1966', 'dd/mm/yyyy'), 'Bosque', null, 'Rio Branco', 
    'Rua Coronel Alexandrino', 351, 'AC', '76964173', 'Brasil');
INSERT INTO Pessoa VALUES ('75834244025', 'Mirella Alícia Lima', 'F', 
    TO_DATE('12/03/1956', 'dd/mm/yyyy'), 'Água Verde', null, 'Blumenau', 
    'Rua Bubi Rocha Coutinho Júnior', 973, 'SC', '89042350', 'Brasil');
INSERT INTO Pessoa VALUES ('77299804794', 'Kauê Ruan Assunção', 'M', 
    TO_DATE('22/01/1955', 'dd/mm/yyyy'), 'Aerolândia', null, 'Fortaleza', 
    'Rua do Partido', 744, 'CE', '60850300', 'Brasil');
INSERT INTO Pessoa VALUES ('77897215504', 'Luís Ricardo Martins', 'M', 
    TO_DATE('27/02/1968', 'dd/mm/yyyy'), 'Bento Ferreira', null, 'Vitória', 
    'Rua João Balbi', 813, 'ES', '29050725', 'Brasil');
INSERT INTO Pessoa VALUES ('54201541029', 'Raimunda Flávia Clarice Silveira', 'F', 
    TO_DATE('04/01/2001', 'dd/mm/yyyy'), 'Plano Diretor Sul', null, 'Palmas', 
    'Quadra 207 Sul Alameda 11', 221, 'TO', '77015292', 'Brasil');
INSERT INTO Pessoa VALUES ('23369225255', 'Valentina Manuela Lopes', 'F', 
    TO_DATE('03/02/1944', 'dd/mm/yyyy'), 'Universidade', null, 'Macapá', 
    'Rua Zéca Serra', 318, 'AP', '68903499', 'Brasil');
INSERT INTO Pessoa VALUES ('29705630704', 'Alice Amanda Fogaça', 'F', 
    TO_DATE('24/02/1956', 'dd/mm/yyyy'), 'Bela Vista', null, 'Fortaleza', 
    'Rua 1', 256, 'CE', '60442115', 'Brasil');
INSERT INTO Pessoa VALUES ('48466958401', 'Manoel Benício Theo Cardoso', 'M', 
    TO_DATE('11/01/1969', 'dd/mm/yyyy'), 'Santo Antônio', null, 'Teresina', 
    'Quadra 07', 948, 'PI', '64033524', 'Brasil');
INSERT INTO Pessoa VALUES ('72376837219', 'Jéssica Jaqueline Gomes', 'F', 
    TO_DATE('15/01/1988', 'dd/mm/yyyy'), 'Velame', null, 'Campina Grande', 
    'Rua Santino Freire Andrade', 483, 'PB', '58420133', 'Brasil');
INSERT INTO Pessoa VALUES ('19125818414', 'Camila Sueli Moraes', 'F', 
    TO_DATE('30/03/1956', 'dd/mm/yyyy'), 'Copas Verdes', null, 'Ji-Paraná', 
    'Rua João Pedro Batista', 952, 'RO', '76901484', 'Brasil');
INSERT INTO Pessoa VALUES ('29021059088', 'Maya Daiane Vieira', 'F', 
    TO_DATE('31/03/1953', 'dd/mm/yyyy'), 'Realengo', null, 'Rio de Janeiro', 
    'Rua Quatro', 588, 'RJ', '21770390', 'Brasil');
INSERT INTO Pessoa VALUES ('74162082030', 'Nair Carolina Valentina Alves', 'F', 
    TO_DATE('18/02/1989', 'dd/mm/yyyy'), 'Nova Santa Cruz', null, 'Santa Cruz do Capibaribe', 
    'Rua João Chagas Sobrinho', 588, 'PE', '55194348', 'Brasil');
INSERT INTO Pessoa VALUES ('25483157036', 'Nelson Manoel Pires', 'M', 
    TO_DATE('15/03/1962', 'dd/mm/yyyy'), 'Parque Industrial', null, 'Campinas', 
    'Rua Professor Orestes Carlos Segallio', 866, 'SP', '13031540', 'Brasil');
INSERT INTO Pessoa VALUES ('89974154685', 'Carlos Benedito Peixoto', 'M', 
    TO_DATE('12/03/1981', 'dd/mm/yyyy'), 'Bom Jesus', null, 'Porto Alegre', 
    'Rua B', 995, 'RS', '91420092', 'Brasil');

INSERT INTO Centro VALUES (1, 70, 'Rendeiras', null, 'Barnaúba', 'Rua Marechal Jorge Gomes', 192, 'SP', 5995782, 'Brasil');
INSERT INTO Centro VALUES (2, 30, 'São José', null, 'Parnaíba', 'Rua Santa Catarina', 2813, 'PI', 69334233, 'Brasil');
INSERT INTO Centro VALUES (3, 50, 'Centro', null, 'Ariquemes', 'Travessa Antônio Ferreira', 213, 'PA', 68700216, 'Brasil');

INSERT INTO Telefone_centro VALUES (1, '(11) 3760-3346');
INSERT INTO Telefone_centro VALUES (1, '(11) 2665-4205');
INSERT INTO Telefone_centro VALUES (2, '(86) 2134-3872');
INSERT INTO Telefone_centro VALUES (2, '(86) 2619-1733');
INSERT INTO Telefone_centro VALUES (3, '(91) 3753-3422');
INSERT INTO Telefone_centro VALUES (3, '(91) 3457-1264');

INSERT INTO Telefone_pessoa VALUES ('07995976437', '(63) 92252-4716');
INSERT INTO Telefone_pessoa VALUES ('07995976437', '(49) 3121-2123');
INSERT INTO Telefone_pessoa VALUES ('12826023497', '(97) 92785-9663');
INSERT INTO Telefone_pessoa VALUES ('18413380871', '(86) 92543-3273');
INSERT INTO Telefone_pessoa VALUES ('18413380871', '(22) 92788-7376');
INSERT INTO Telefone_pessoa VALUES ('19125818414', '(68) 93515-4253');
INSERT INTO Telefone_pessoa VALUES ('23369225255', '(32) 92618-2466');
INSERT INTO Telefone_pessoa VALUES ('25483157036', '(48) 92828-2692');
INSERT INTO Telefone_pessoa VALUES ('29021059088', '(93) 92220-2285');
INSERT INTO Telefone_pessoa VALUES ('29021059088', '(27) 92451-3687');
INSERT INTO Telefone_pessoa VALUES ('29021059088', '(69) 92760-6098');
INSERT INTO Telefone_pessoa VALUES ('29705630704', '(64) 93985-3176');
INSERT INTO Telefone_pessoa VALUES ('29874723580', '(87) 93550-1352');
INSERT INTO Telefone_pessoa VALUES ('48466958401', '(49) 93475-8490');
INSERT INTO Telefone_pessoa VALUES ('48487552986', '(97) 93696-5923');
INSERT INTO Telefone_pessoa VALUES ('49371521732', '(84) 93870-9773');
INSERT INTO Telefone_pessoa VALUES ('50413745384', '(16) 92167-4413');
INSERT INTO Telefone_pessoa VALUES ('54201541029', '(18) 93351-5586');
INSERT INTO Telefone_pessoa VALUES ('60220992851', '(88) 92106-0527');
INSERT INTO Telefone_pessoa VALUES ('65039251742', '(98) 93456-1129');
INSERT INTO Telefone_pessoa VALUES ('69933068326', '(83) 93630-5606');
INSERT INTO Telefone_pessoa VALUES ('72376837219', '(83) 92174-1557');
INSERT INTO Telefone_pessoa VALUES ('74075272451', '(96) 93804-8071');
INSERT INTO Telefone_pessoa VALUES ('74162082030', '(89) 92887-6178');
INSERT INTO Telefone_pessoa VALUES ('74846020940', '(79) 92437-3660');
INSERT INTO Telefone_pessoa VALUES ('75834244025', '(38) 92814-5214');
INSERT INTO Telefone_pessoa VALUES ('77299804794', '(94) 92753-7231');
INSERT INTO Telefone_pessoa VALUES ('77897215504', '(43) 93453-1887');
INSERT INTO Telefone_pessoa VALUES ('78822220030', '(48) 93526-3377');
INSERT INTO Telefone_pessoa VALUES ('84705091957', '(27) 93645-2206');
INSERT INTO Telefone_pessoa VALUES ('85851790660', '(53) 93642-7673');
INSERT INTO Telefone_pessoa VALUES ('89974154685', '(38) 93046-8488');

INSERT INTO Paciente VALUES ('07995976437');
INSERT INTO Paciente VALUES ('12826023497');
INSERT INTO Paciente VALUES ('18413380871');
INSERT INTO Paciente VALUES ('19125818414');
INSERT INTO Paciente VALUES ('23369225255');
INSERT INTO Paciente VALUES ('25483157036');
INSERT INTO Paciente VALUES ('29021059088');

INSERT INTO Atendente VALUES ('29705630704', 1);
INSERT INTO Atendente VALUES ('29874723580', 2); 
INSERT INTO Atendente VALUES ('48466958401', 3); 
INSERT INTO Atendente VALUES ('48487552986', 1); 
INSERT INTO Atendente VALUES ('49371521732', 2); 
INSERT INTO Atendente VALUES ('50413745384', 3);

INSERT INTO Acompanhante VALUES ('07995976437', 'Iseu Paulino Figueiredo', 'Filho');
INSERT INTO Acompanhante VALUES ('07995976437', 'Erika Cruz Diovani', 'Tia');
INSERT INTO Acompanhante VALUES ('12826023497', 'Alfredo Aguiar Jesus', 'Tio');
INSERT INTO Acompanhante VALUES ('18413380871', 'Adilson Dores Castelete', 'Pai');
INSERT INTO Acompanhante VALUES ('19125818414', 'Aderbal Vasconcelos Prata', 'Sobinho');
INSERT INTO Acompanhante VALUES ('23369225255', 'Mirian Meyer Cretella', 'Prima');
INSERT INTO Acompanhante VALUES ('25483157036', 'Thayná da Souza Barher', 'Mãe');
INSERT INTO Acompanhante VALUES ('29021059088', 'Marcus Moraes Chiles', 'Filho');

INSERT INTO Profissional_de_saude VALUES ('60220992851', null, 1);
INSERT INTO Profissional_de_saude VALUES ('54201541029', '60220992851', 1);
INSERT INTO Profissional_de_saude VALUES ('65039251742', '60220992851', 1);
INSERT INTO Profissional_de_saude VALUES ('74162082030', null, 1);
INSERT INTO Profissional_de_saude VALUES ('74075272451', '74162082030', 1);
INSERT INTO Profissional_de_saude VALUES ('77897215504', null, 1);
INSERT INTO Profissional_de_saude VALUES ('78822220030', '77897215504', 1);
INSERT INTO Profissional_de_saude VALUES ('84705091957', null, 2);
INSERT INTO Profissional_de_saude VALUES ('85851790660', '84705091957', 2);
INSERT INTO Profissional_de_saude VALUES ('89974154685', '84705091957', 2);
INSERT INTO Profissional_de_saude VALUES ('69933068326', null, 3);
INSERT INTO Profissional_de_saude VALUES ('72376837219', '69933068326', 3);
INSERT INTO Profissional_de_saude VALUES ('75834244025', null, 3);
INSERT INTO Profissional_de_saude VALUES ('74846020940', '75834244025', 3);
INSERT INTO Profissional_de_saude VALUES ('77299804794', '75834244025', 3);

INSERT INTO Turno VALUES ('54201541029', 'M');
INSERT INTO Turno VALUES ('60220992851', 'M');
INSERT INTO Turno VALUES ('60220992851', 'T');
INSERT INTO Turno VALUES ('65039251742', 'T');
INSERT INTO Turno VALUES ('65039251742', 'N');
INSERT INTO Turno VALUES ('69933068326', 'M');
INSERT INTO Turno VALUES ('69933068326', 'N');
INSERT INTO Turno VALUES ('72376837219', 'M');
INSERT INTO Turno VALUES ('72376837219', 'T');
INSERT INTO Turno VALUES ('74075272451', 'M');
INSERT INTO Turno VALUES ('74075272451', 'T');
INSERT INTO Turno VALUES ('74162082030', 'M');
INSERT INTO Turno VALUES ('74846020940', 'N');
INSERT INTO Turno VALUES ('74846020940', 'M');
INSERT INTO Turno VALUES ('75834244025', 'T');
INSERT INTO Turno VALUES ('75834244025', 'M');
INSERT INTO Turno VALUES ('77299804794', 'T');
INSERT INTO Turno VALUES ('77897215504', 'T');
INSERT INTO Turno VALUES ('78822220030', 'N');
INSERT INTO Turno VALUES ('84705091957', 'T');
INSERT INTO Turno VALUES ('85851790660', 'M');
INSERT INTO Turno VALUES ('89974154685', 'N');

INSERT INTO Area_atuacao VALUES ('54201541029', 'Area I da enfermagem');
INSERT INTO Area_atuacao VALUES ('60220992851', 'Area I da enfermagem');
INSERT INTO Area_atuacao VALUES ('60220992851', 'Area II da enfermagem');
INSERT INTO Area_atuacao VALUES ('65039251742', 'Area I da enfermagem');
INSERT INTO Area_atuacao VALUES ('69933068326', 'Area I da enfermagem');
INSERT INTO Area_atuacao VALUES ('72376837219', 'Area I da enfermagem');
INSERT INTO Area_atuacao VALUES ('74075272451', 'Ginecologia e obstetrícia');
INSERT INTO Area_atuacao VALUES ('74162082030', 'Angiologia e cirurgia vascular:');
INSERT INTO Area_atuacao VALUES ('74846020940', 'Urologia');
INSERT INTO Area_atuacao VALUES ('75834244025', 'Cirurgia cardiovascular');
INSERT INTO Area_atuacao VALUES ('77299804794', 'Ortopedia e traumatologia');
INSERT INTO Area_atuacao VALUES ('77897215504', 'Clínica Médica');
INSERT INTO Area_atuacao VALUES ('78822220030', 'Neurologia');
INSERT INTO Area_atuacao VALUES ('78822220030', 'Clínica Médica');
INSERT INTO Area_atuacao VALUES ('84705091957', 'Clínica Médica');
INSERT INTO Area_atuacao VALUES ('85851790660', 'Clínica Médica');
INSERT INTO Area_atuacao VALUES ('89974154685', 'Clínica Médica');

INSERT INTO Enfermeira VALUES ('54201541029', '270274');
INSERT INTO Enfermeira VALUES ('60220992851', '464256');
INSERT INTO Enfermeira VALUES ('65039251742', '586481');
INSERT INTO Enfermeira VALUES ('69933068326', '326585');
INSERT INTO Enfermeira VALUES ('72376837219', '918270');

INSERT INTO Medico VALUES ('74075272451', '289325');
INSERT INTO Medico VALUES ('74162082030', '110649');
INSERT INTO Medico VALUES ('74846020940', '71377');
INSERT INTO Medico VALUES ('75834244025', '93331');
INSERT INTO Medico VALUES ('77299804794', '46291');
INSERT INTO Medico VALUES ('77897215504', '697319');
INSERT INTO Medico VALUES ('78822220030', '267976');
INSERT INTO Medico VALUES ('84705091957', '708010');
INSERT INTO Medico VALUES ('85851790660', '488382');
INSERT INTO Medico VALUES ('89974154685', '812270');

INSERT INTO Medico_geral VALUES ('77897215504');
INSERT INTO Medico_geral VALUES ('78822220030');
INSERT INTO Medico_geral VALUES ('84705091957');
INSERT INTO Medico_geral VALUES ('85851790660');
INSERT INTO Medico_geral VALUES ('89974154685');

INSERT INTO Medico_especialista VALUES ('74075272451', 'Ginecologia');
INSERT INTO Medico_especialista VALUES ('74162082030', 'Angiologia');
INSERT INTO Medico_especialista VALUES ('74846020940', 'Urologia');
INSERT INTO Medico_especialista VALUES ('75834244025', 'Cardiologia');
INSERT INTO Medico_especialista VALUES ('77299804794', 'Ortopedia');

INSERT INTO Exame VALUES (exame_seq.NEXTVAL, 'Hemograma', 'Tipo de exame que analisa informações específicas sobre os tipos e quantidades dos componentes no sangue.');
INSERT INTO Exame VALUES (exame_seq.NEXTVAL, 'Papanicolau', 'Ajuda a prevenir o câncer no colo de útero e também doenças como o HPV, infecções vaginais e doenças sexualmente transmissíveis');
INSERT INTO Exame VALUES (exame_seq.NEXTVAL, 'TGP e TGO', 'Exames laboratoriais que se referem à saúde do fígado');
INSERT INTO Exame VALUES (exame_seq.NEXTVAL, 'TSH', 'Exames laboratoriais para analisar o funcionamento da tireoide.');
INSERT INTO Exame VALUES (exame_seq.NEXTVAL, 'Ultrassonografia', 'A ultrassonografia serve para avaliar as estruturas corporais em tempo real.');
INSERT INTO Exame VALUES (exame_seq.NEXTVAL, 'Espermograma', 'Espermograma é um exame laboratorial capaz de analisar a fertilidade masculina');
INSERT INTO Exame VALUES (exame_seq.NEXTVAL, 'Raio-x de tórax', 'serve para auxiliar o médico no diagnóstico de doenças, como pneumonia, fraturas, e outros');
INSERT INTO Exame VALUES (exame_seq.NEXTVAL, 'Ressonância magnética.', 'O exame de ressonância magnética é um exame de diagnóstico por imagem, que não possui radiação e permite a captação de imagens detalhadas e tridimensionais de forma não invasiva.');
INSERT INTO Exame VALUES (exame_seq.NEXTVAL, 'Raio-x da coluna.', 'serve para auxiliar o médico no diagnóstico de doenças, como pneumonia, fraturas, e outros');
INSERT INTO Exame VALUES (exame_seq.NEXTVAL, 'Ácido Úrico.', 'O exame ácido úrico é um exame de análise clínica, sendo feito por meio da coleta de sangue em laboratório.' );
INSERT INTO Exame VALUES (exame_seq.NEXTVAL, 'Tomografia computadorizada' , 'É a junção do Raio-X com computadores capazes de produzir imagens dos órgãos internos.');
INSERT INTO Exame VALUES (exame_seq.NEXTVAL, 'Vulvocospia', 'Vulvoscopia é um exame não invasivo de imagem capaz de avaliar toda a região vulvar. ');
INSERT INTO Exame VALUES (exame_seq.NEXTVAL, 'Angiografia', 'É um exame que utiliza raios x para visualizar e analisar possíveis alterações relacionadas aos vasos sanguíneos');
INSERT INTO Exame VALUES (exame_seq.NEXTVAL, 'Glicemia em jejum', 'É o exame responsável por medir o nível de glicose no sangue');

INSERT INTO Exame_centro VALUES ('Hemograma', 1, 25.00);
INSERT INTO Exame_centro VALUES ('Hemograma', 2, 10.00);
INSERT INTO Exame_centro VALUES ('Papanicolau', 1, 120.00);
INSERT INTO Exame_centro VALUES ('TGP e TGO', 1, 14.00);
INSERT INTO Exame_centro VALUES ('TSH', 1, 18.00);
INSERT INTO Exame_centro VALUES ('Espermograma', 3, 70.00);
INSERT INTO Exame_centro VALUES ('Ultrassonografia', 2, 200.00);
INSERT INTO Exame_centro VALUES ('Raio-x de tórax', 3, 70.00);
INSERT INTO Exame_centro VALUES ('Ressonância magnética.', 3, 700.00);
INSERT INTO Exame_centro VALUES ('Raio-x da coluna.', 3, 80.00);
INSERT INTO Exame_centro VALUES ('Ácido Úrico.', 2, 8.00);
INSERT INTO Exame_centro VALUES ('Tomografia computadorizada', 2, 90.00);
INSERT INTO Exame_centro VALUES ('Vulvocospia', 1, 80.00);
INSERT INTO Exame_centro VALUES ('Angiografia', 2, 2000.00);
INSERT INTO Exame_centro VALUES ('Glicemia em jejum' , 3, 6.00);

INSERT INTO Laudo VALUES(laudo_seq.NEXTVAL, '60220992851', '07995976437', 'TSH', '<4,5 μUI/mL: níveis normais de TSH no sangue, com baixa probabilidade de hipotireoidismo. de 4,5 a 10 μUI/mL: alteração no nível de TSH no sangue, podendo indicar um caso de hipotireodismo.');
INSERT INTO Laudo VALUES(laudo_seq.NEXTVAL, '74075272451', '12826023497', 'Vulvocospia', 'Candidíase encontrada na vulva, com ausência de lesões.');
INSERT INTO Laudo VALUES(laudo_seq.NEXTVAL, '78822220030', '18413380871', 'TGP e TGO', 'Níveis de TGO: 35 U/L, níveis de TGP: 30 U/L no sangue.');
INSERT INTO Laudo VALUES(laudo_seq.NEXTVAL, '54201541029', '19125818414', 'Hemograma', 'Hemoglobina: 16.3 g/dL, Hematrócito: 58.3%, Hematimetria: 5.7, Reticulócitos: 1.8, VCM: 82 fL, HCM: 30 g/dL de hemácias, CHCM: 35 g/dL, Índice de anisocitose 13.5 RDW');
INSERT INTO Laudo VALUES(laudo_seq.NEXTVAL, '74162082030', '23369225255', 'Papanicolau', 'Alterações celulares benignas, geralmente causadas por processos inflamatórios');
INSERT INTO Laudo VALUES(laudo_seq.NEXTVAL, '89974154685', '25483157036', 'Angiografia', 'Encontrado um Tumor cerebral.');
INSERT INTO Laudo VALUES(laudo_seq.NEXTVAL, '85851790660', '29021059088', 'Ultrassonografia', 'Segue em anexo:');
INSERT INTO Laudo VALUES(laudo_seq.NEXTVAL, '84705091957', '07995976437', 'Tomografia computadorizada', 'Tumores benigno encontrado na região cerebral.');
INSERT INTO Laudo VALUES(laudo_seq.NEXTVAL, '84705091957', '12826023497', 'Ácido Úrico.', 'Possui 3,7 mg/dl de ácido úrico.');
INSERT INTO Laudo VALUES(laudo_seq.NEXTVAL, '72376837219', '18413380871', 'Ressonância magnética.', 'Doença de Parkinson');
INSERT INTO Laudo VALUES(laudo_seq.NEXTVAL, '77299804794', '19125818414', 'Glicemia em jejum', 'Resultado inferior a 99 mg/dL');
INSERT INTO Laudo VALUES(laudo_seq.NEXTVAL, '69933068326', '23369225255', 'Raio-x de tórax', 'Tuberculose encontrada, causada pelo Mycobacterium tuberculosis nos pulmões.');
INSERT INTO Laudo VALUES(laudo_seq.NEXTVAL, '75834244025', '25483157036', 'Raio-x da coluna.', 'Segue em anexo:');
INSERT INTO Laudo VALUES(laudo_seq.NEXTVAL, '74846020940', '29021059088', 'Espermograma', '15 milhões de espermatozoides por ml.');

INSERT INTO Execucao VALUES('60220992851', TO_TIMESTAMP('07/01/2020 12:03:12', 'DD/MM/YYYY HH24:MI:SS'), 'TSH');
INSERT INTO Execucao VALUES('74075272451', TO_TIMESTAMP('17/08/2020 11:58:13', 'DD/MM/YYYY HH24:MI:SS'), 'Vulvocospia');
INSERT INTO Execucao VALUES('78822220030', TO_TIMESTAMP('13/04/2020 00:41:57', 'DD/MM/YYYY HH24:MI:SS'), 'TGP e TGO');
INSERT INTO Execucao VALUES('54201541029', TO_TIMESTAMP('09/02/2022 12:57:56', 'DD/MM/YYYY HH24:MI:SS'), 'Hemograma');
INSERT INTO Execucao VALUES('74162082030', TO_TIMESTAMP('30/05/2020 22:01:30', 'DD/MM/YYYY HH24:MI:SS'), 'Papanicolau');
INSERT INTO Execucao VALUES('89974154685', TO_TIMESTAMP('01/08/2021 14:58:14', 'DD/MM/YYYY HH24:MI:SS'), 'Angiografia');
INSERT INTO Execucao VALUES('85851790660', TO_TIMESTAMP('12/02/2020 12:04:36', 'DD/MM/YYYY HH24:MI:SS'), 'Ultrassonografia');
INSERT INTO Execucao VALUES('84705091957', TO_TIMESTAMP('21/02/2022 14:42:30', 'DD/MM/YYYY HH24:MI:SS'), 'Tomografia computadorizada');
INSERT INTO Execucao VALUES('84705091957', TO_TIMESTAMP('05/12/2021 18:32:33', 'DD/MM/YYYY HH24:MI:SS'), 'Ácido Úrico.');
INSERT INTO Execucao VALUES('72376837219', TO_TIMESTAMP('06/07/2021 20:46:25', 'DD/MM/YYYY HH24:MI:SS'), 'Ressonância magnética.');
INSERT INTO Execucao VALUES('77299804794', TO_TIMESTAMP('18/05/2020 23:08:38', 'DD/MM/YYYY HH24:MI:SS'), 'Glicemia em jejum');
INSERT INTO Execucao VALUES('69933068326', TO_TIMESTAMP('19/07/2020 16:09:53', 'DD/MM/YYYY HH24:MI:SS'), 'Raio-x de tórax');
INSERT INTO Execucao VALUES('75834244025', TO_TIMESTAMP('16/07/2021 08:43:05', 'DD/MM/YYYY HH24:MI:SS'), 'Raio-x da coluna.');
INSERT INTO Execucao VALUES('74846020940', TO_TIMESTAMP('05/07/2021 14:46:23', 'DD/MM/YYYY HH24:MI:SS'), 'Espermograma');

INSERT INTO Agendamento VALUES('60220992851', '07995976437', '29705630704', 'Realizar o exame de TSH');
INSERT INTO Agendamento VALUES('74075272451', '12826023497', '29705630704', 'Realizar o exame de Vulvocospia');
INSERT INTO Agendamento VALUES('78822220030', '18413380871', '48487552986', 'Realizar o exame de TGP e TGO');
INSERT INTO Agendamento VALUES('54201541029', '19125818414', '29705630704', 'Realizar o exame de Hemograma');
INSERT INTO Agendamento VALUES('74162082030', '23369225255', '29705630704', 'Realizar o exame de Papanicolau');
INSERT INTO Agendamento VALUES('89974154685', '25483157036', '49371521732', 'Realizar o exame de Angiografia');
INSERT INTO Agendamento VALUES('85851790660', '29021059088', '29874723580', 'Realizar o exame de Ultrassonografia');
INSERT INTO Agendamento VALUES('84705091957', '12826023497', '49371521732', 'Realizar o exame de Tomografia computadorizada');
INSERT INTO Agendamento VALUES('84705091957', '07995976437', '49371521732', 'Realizar o exame de Ácido Úrico.');
INSERT INTO Agendamento VALUES('72376837219', '18413380871', '50413745384', 'Realizar o exame de Ressonância magnética.');
INSERT INTO Agendamento VALUES('77299804794', '19125818414', '50413745384', 'Realizar o exame de Glicemia em jejum');
INSERT INTO Agendamento VALUES('69933068326', '23369225255', '48466958401', 'Realizar o exame de Raio-x de tórax');
INSERT INTO Agendamento VALUES('75834244025', '25483157036', '48466958401', 'Realizar o exame de Raio-x da coluna.');
INSERT INTO Agendamento VALUES('74846020940', '29021059088', '48466958401', 'Realizar o exame de Espermograma');

INSERT INTO Agendamento_criado VALUES('29705630704', TO_TIMESTAMP('07/01/2020 12:03:12', 'DD/MM/YYYY HH24:MI:SS'),  TO_TIMESTAMP('10/01/2019 15:46:05', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO Agendamento_criado VALUES('29705630704', TO_TIMESTAMP('17/08/2020 11:58:13', 'DD/MM/YYYY HH24:MI:SS'),  TO_TIMESTAMP('19/03/2020 04:25:58', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO Agendamento_criado VALUES('48487552986', TO_TIMESTAMP('13/04/2020 00:41:57', 'DD/MM/YYYY HH24:MI:SS'),  TO_TIMESTAMP('04/01/2020 18:40:42', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO Agendamento_criado VALUES('29705630704', TO_TIMESTAMP('09/02/2022 12:57:56', 'DD/MM/YYYY HH24:MI:SS'),  TO_TIMESTAMP('17/04/2021 04:41:41', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO Agendamento_criado VALUES('29705630704', TO_TIMESTAMP('30/05/2020 22:01:30', 'DD/MM/YYYY HH24:MI:SS'),  TO_TIMESTAMP('03/12/2019 20:17:57', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO Agendamento_criado VALUES('49371521732', TO_TIMESTAMP('01/08/2021 14:58:14', 'DD/MM/YYYY HH24:MI:SS'),  TO_TIMESTAMP('17/03/2021 05:17:28', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO Agendamento_criado VALUES('29874723580', TO_TIMESTAMP('12/02/2020 12:04:36', 'DD/MM/YYYY HH24:MI:SS'),  TO_TIMESTAMP('02/12/2019 20:57:56', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO Agendamento_criado VALUES('49371521732', TO_TIMESTAMP('21/02/2022 14:42:30', 'DD/MM/YYYY HH24:MI:SS'),  TO_TIMESTAMP('10/11/2021 02:57:14', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO Agendamento_criado VALUES('49371521732', TO_TIMESTAMP('05/12/2021 18:32:33', 'DD/MM/YYYY HH24:MI:SS'),  TO_TIMESTAMP('15/07/2021 01:00:27', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO Agendamento_criado VALUES('50413745384', TO_TIMESTAMP('06/07/2021 20:46:25', 'DD/MM/YYYY HH24:MI:SS'),  TO_TIMESTAMP('12/05/2021 23:54:06', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO Agendamento_criado VALUES('50413745384', TO_TIMESTAMP('18/05/2020 23:08:38', 'DD/MM/YYYY HH24:MI:SS'),  TO_TIMESTAMP('18/06/2019 11:06:17', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO Agendamento_criado VALUES('48466958401', TO_TIMESTAMP('19/07/2020 16:09:53', 'DD/MM/YYYY HH24:MI:SS'),  TO_TIMESTAMP('30/04/2020 17:25:53', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO Agendamento_criado VALUES('48466958401', TO_TIMESTAMP('16/07/2021 08:43:05', 'DD/MM/YYYY HH24:MI:SS'),  TO_TIMESTAMP('09/11/2020 21:54:32', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO Agendamento_criado VALUES('48466958401', TO_TIMESTAMP('05/07/2021 14:46:23', 'DD/MM/YYYY HH24:MI:SS'),  TO_TIMESTAMP('21/03/2021 20:54:03', 'DD/MM/YYYY HH24:MI:SS'));
