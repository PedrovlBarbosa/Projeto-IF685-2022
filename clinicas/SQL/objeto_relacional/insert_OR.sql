INSERT INTO tb_centro VALUES(
    tp_centro(1, 70, 
        tp_endereco(5995782, 'Rendeiras', null, 'Barnaúba', 'Rua Marechal Jorge Gomes', 192, 'SP', 'Brasil'),
        lista_telefones(
            tp_telefone('(11) 3760-3346'),
            tp_telefone('(11) 2665-4205')
        ),
        tp_lista_atendente(
            tp_atendente('29705630704', 'Alice Amanda Fogaça', 'F', TO_DATE('24/02/1956', 'dd/mm/yyyy'),
                tp_endereco('60442115', 'Bela Vista', null, 'Fortaleza', 'Rua 1', 256, 'CE', 'Brasil'),
                lista_telefones(
                    tp_telefone('(64) 93985-3176')
                )
            ),
            tp_atendente('48487552986', 'Flávia Jéssica da Costa', 'F', TO_DATE('01/02/1966', 'dd/mm/yyyy'),
                tp_endereco('69070800', 'Colônia Oliveira Machado', null, 'Manaus', 'Rua Elesbão Luz', 244, 'AM', 'Brasil'),
                lista_telefones(
                    tp_telefone('(97) 93696-5923')
                )
            )
        ),
        tp_lista_profissionais(
            tp_enfermeira('60220992851', 'Márcio Yuri André Melo', 'M', TO_DATE('26/02/1958', 'dd/mm/yyyy'),
                tp_endereco('87506460', 'Jardim Alto da Boa Vista', null, 'Umuarama', 'Rua Marcos Moreno dos Santos Cabeção', 778, 'PR', 'Brasil'),
                lista_telefones(
                    tp_telefone('(88) 92106-0527')
                ),
                lst_turno(
                    tp_turno('M'),
                    tp_turno('T')
                ),
                lst_areas(
                    tp_area_atuacao('Area I da enfermagem'),
                    tp_area_atuacao('Area II da enfermagem')
                ),
                null,
                '464256'
            ),
            tp_enfermeira('54201541029', 'Raimunda Flávia Clarice Silveira', 'F', TO_DATE('04/01/2001', 'dd/mm/yyyy'),
                tp_endereco('77015292', 'Plano Diretor Sul', null, 'Palmas', 'Quadra 207 Sul Alameda 11', 221, 'TO', 'Brasil'),
                lista_telefones(
                    tp_telefone('(18) 93351-5586')
                ),
                lst_turno(
                    tp_turno('M')
                ),
                lst_areas(
                    tp_area_atuacao('Area I da enfermagem')
                ),
                null,
                '270274'
            ),
            tp_enfermeira('65039251742', 'Kevin Luan Drumond', 'M', TO_DATE('03/03/1984', 'dd/mm/yyyy'),
                tp_endereco('64215428', 'Boa Esperança', null, 'Parnaíba', 'Rua Sete', 174, 'PI', 'Brasil'),
                lista_telefones(
                    tp_telefone('(98) 93456-1129')
                ),
                lst_turno(
                    tp_turno('T'),
                    tp_turno('N')
                ),
                lst_areas(
                    tp_area_atuacao('Area I da enfermagem')
                ),
                null,
                '586481'
            ),
            tp_medico_especialista('74162082030', 'Nair Carolina Valentina Alves', 'F', TO_DATE('18/02/1989', 'dd/mm/yyyy'),
                tp_endereco('55194348', 'Nova Santa Cruz', null, 'Santa Cruz do Capibaribe', 'Rua João Chagas Sobrinho', 588, 'PE', 'Brasil'),
                lista_telefones(
                    tp_telefone('(89) 92887-6178')
                ),
                lst_turno(
                    tp_turno('M')
                ),
                lst_areas(
                    tp_area_atuacao('Angiologia e cirurgia vascular')
                ),
                null,
                '110649',
                'Angiologia'
            ),
            tp_medico_especialista('74075272451', 'Raimundo Isaac Mendes', 'M', TO_DATE('20/01/1975', 'dd/mm/yyyy'),
                tp_endereco('76964173', 'Jardim Saúde', null, 'Cacoal', 'Avenida das Comunicações', 922, 'RO', 'Brasil'),
                lista_telefones(
                    tp_telefone('(96) 93804-8071')
                ),
                lst_turno(
                    tp_turno('M'),
                    tp_turno('T')
                ),
                lst_areas(
                    tp_area_atuacao('Ginecologia e obstetrícia')
                ),
                null,
                '289325',
                'Ginecologia'
            ),
            tp_medico_geral('77897215504', 'Luís Ricardo Martins', 'M', TO_DATE('27/02/1968', 'dd/mm/yyyy'),
                tp_endereco('29050725', 'Bento Ferreira', null, 'Vitória', 'Rua João Balbi', 813, 'ES', 'Brasil'),
                lista_telefones(
                    tp_telefone('(43) 93453-1887')
                ),
                lst_turno(
                    tp_turno('T')
                ),
                lst_areas(
                    tp_area_atuacao('Clínica Médica')
                ),
                null,
                '697319'
            ),
            tp_medico_geral('78822220030', 'Rafaela Sophie Raimunda Novaes', 'F', TO_DATE('08/02/1981', 'dd/mm/yyyy'),
                tp_endereco('95095143', 'Nossa Senhora das Graças', null, 'Caxias do Sul', 'Rua Lenice Moraes Santos', 545, 'RS', 'Brasil'),
                lista_telefones(
                    tp_telefone('(48) 93526-3377')
                ),
                lst_turno(
                    tp_turno('N')
                ),
                lst_areas(
                    tp_area_atuacao('Neurologia'),
                    tp_area_atuacao('Clínica Médica')
                ),
                null,
                '267976'
            )
        )   
    )
);

INSERT INTO tb_centro VALUES(
    tp_centro(2, 30,
        tp_endereco('68700216', 'Centro', null, 'Ariquemes', 'Travessa Antônio Ferreira', 213, 'PA', 'Brasil'),
        lista_telefones(
            tp_telefone('(86) 2134-3872'),
            tp_telefone('(86) 2619-1733')
        ),
        tp_lista_atendente(
            tp_atendente('29874723580', 'Nina Marina Aline Moreira', 'F', TO_DATE('05/01/2003', 'dd/mm/yyyy'),
                tp_endereco('69900205', 'Ivete Vargas', null, 'Rio Branco', 'Rua 13 de Maio', 939, 'AC', 'Brasil'),
                lista_telefones(tp_telefone('(87) 93550-1352'))
            ),
            tp_atendente('49371521732', 'Fábio Enzo Benjamin da Rocha', 'M', TO_DATE('14/02/1982', 'dd/mm/yyyy'),
                tp_endereco('69900658', 'Parque dos Ipês II', null, 'Ponta Porã', 'Rua Hortêncio Vieira', 988, 'MS', 'Brasil'),
                lista_telefones(tp_telefone('(84) 93870-9773'))
            )
        ),
        tp_lista_profissionais(
            tp_medico_geral('84705091957', 'Rodrigo José Thomas Rodrigues', 'M', TO_DATE('24/02/1974', 'dd/mm/yyyy'),
                tp_endereco('41214725', 'Sussuarana', null, 'Salvador', '1ª Travessa Donana', 213, 'BA', 'Brasil'),
                lista_telefones(tp_telefone('(27) 93645-2206')),
                lst_turno(
                    tp_turno('T')
                ),
                lst_areas(
                    tp_area_atuacao('Clínica Médica')
                ),
                null,
                '708010'
            ),
            tp_medico_geral('85851790660', 'Bento Carlos Eduardo Roberto Barros', 'M', TO_DATE('27/02/1988', 'dd/mm/yyyy'),
                tp_endereco('15040515', 'Parque do Sol', null, 'São José do Rio Preto', 'Rua José Cândido Rosa', 105, 'SP', 'Brasil'),
                lista_telefones(
                    tp_telefone('(53) 93642-7673')
                ),
                lst_turno(
                    tp_turno('M')
                ),
                lst_areas(
                    tp_area_atuacao('Clínica Médica')
                ),
                null,
                '488382'
            ),
            tp_medico_geral('89974154685', 'Carlos Benedito Peixoto', 'M', TO_DATE('12/03/1981', 'dd/mm/yyyy'),
                tp_endereco('91420092', 'Bom Jesus', null, 'Porto Alegre', 'Rua B', 995, 'RS', 'Brasil'),
                lista_telefones(tp_telefone('(38) 93046-8488')),
                lst_turno(tp_turno('N')),
                lst_areas(tp_area_atuacao('Clínica Médica')),
                null,
                '812270'
            )
        )
    )
);

INSERT INTO tb_paciente VALUES('07995976437', 'Diego Benício André Ribeiro', 'M', TO_DATE('06/03/1964', 'dd/mm/yyyy'),
    tp_endereco('72861124', 'Chácaras Araguaia', null, 'Novo Gama', 'Quadra Quadra 31', 941, 'GO', 'Brasil'),
    lista_telefones(
        tp_telefone('(63) 92252-4716'),
        tp_telefone('(49) 3121-2123')
    ),
    tp_acompanhantes(
        tp_acompanhante('Iseu Paulino Figueiredo', 'Filho'),
        tp_acompanhante('Erika Cruz Diovani', 'Tia')
    )
);

INSERT INTO tb_paciente VALUES('12826023497', 'Bárbara Stella da Mata', 'F', TO_DATE('14/02/1957', 'dd/mm/yyyy'),
    tp_endereco('29140636', 'Sotelândia', null, 'Cariacica', 'Rua E', 526, 'ES', 'Brasil'),
    lista_telefones(tp_telefone('(97) 92785-9663')),
    tp_acompanhantes(
        tp_acompanhante('Alfredo Aguiar Jesus', 'Tio')
    )
);

INSERT INTO tb_paciente VALUES('18413380871', 'Mariah Débora Assis', 'F', TO_DATE('14/03/1966', 'dd/mm/yyyy'),
    tp_endereco('76964173', 'Bosque', null, 'Rio Branco', 'Rua Coronel Alexandrino', 351, 'AC', 'Brasil'),
    lista_telefones(
        tp_telefone('(86) 92543-3273'),
        tp_telefone('(22) 92788-7376')
    ),
    tp_acompanhantes(
        tp_acompanhante('Adilson Dores Castelete', 'Pai')
    )
);

INSERT INTO tb_paciente VALUES('19125818414', 'Camila Sueli Moraes', 'F', TO_DATE('30/03/1956', 'dd/mm/yyyy'),
    tp_endereco('76901484', 'Copas Verdes', null, 'Ji-Paraná', 'Rua João Pedro Batista', 952, 'RO', 'Brasil'),
    lista_telefones(
        tp_telefone('(68) 93515-4253')
    ),
    tp_acompanhantes(
        tp_acompanhante('Aderbal Vasconcelos Prata', 'Sobinho')
    )
);

INSERT INTO tb_paciente VALUES('23369225255', 'Valentina Manuela Lopes', 'F', TO_DATE('03/02/1944', 'dd/mm/yyyy'),
    tp_endereco('68903499', 'Universidade', null, 'Macapá', 'Rua Zéca Serra', 318, 'AP', 'Brasil'),
    lista_telefones(
        tp_telefone('(32) 92618-2466')
    ),
    tp_acompanhantes(
        tp_acompanhante( 'Mirian Meyer Cretella', 'Prima')
    )
);

INSERT INTO tb_paciente VALUES('25483157036', 'Nelson Manoel Pires', 'M', TO_DATE('15/03/1962', 'dd/mm/yyyy'),
    tp_endereco('13031540', 'Parque Industrial', null, 'Campinas', 'Rua Professor Orestes Carlos Segallio', 866, 'SP', 'Brasil'),
    lista_telefones(tp_telefone('(48) 92828-2692')),
    tp_acompanhantes(
        tp_acompanhante('Thayná da Souza Barher', 'Mãe')
    )
);

INSERT INTO tb_paciente VALUES('29021059088', 'Maya Daiane Vieira', 'F', TO_DATE('31/03/1953', 'dd/mm/yyyy'),
    tp_endereco('21770390', 'Realengo', null, 'Rio de Janeiro', 'Rua Quatro', 588, 'RJ', 'Brasil'),
    lista_telefones(
        tp_telefone('(93) 92220-2285'),
        tp_telefone('(27) 92451-3687'),
        tp_telefone('(69) 92760-6098')
    ),
    tp_acompanhantes(
        tp_acompanhante('Marcus Moraes Chiles', 'Filho')
    )
);

INSERT INTO tb_exame VALUES(
    tp_exame(exame_seq.NEXTVAL, 'Hemograma', 'Tipo de exame que analisa informações específicas sobre os tipos e quantidades dos componentes no sangue.')
);

INSERT INTO tb_exame VALUES (
    tp_exame(exame_seq.NEXTVAL, 'Papanicolau', 'Ajuda a prevenir o câncer no colo de útero e também doenças como o HPV, infecções vaginais e doenças sexualmente transmissíveis'));

INSERT INTO tb_exame VALUES (
    tp_exame(exame_seq.NEXTVAL, 'TGP e TGO', 'Exames laboratoriais que se referem à saúde do fígado'));

INSERT INTO tb_exame VALUES (
    tp_exame(exame_seq.NEXTVAL, 'TSH', 'Exames laboratoriais para analisar o funcionamento da tireoide.')
);

INSERT INTO tb_exame VALUES (
    tp_exame(exame_seq.NEXTVAL, 'Ultrassonografia', 'A ultrassonografia serve para avaliar as estruturas corporais em tempo real.')
);

INSERT INTO tb_exame VALUES (
    tp_exame(exame_seq.NEXTVAL, 'Espermograma', 'Espermograma é um exame laboratorial capaz de analisar a fertilidade masculina')
);

INSERT INTO tb_exame VALUES (
    tp_exame(exame_seq.NEXTVAL, 'Raio-x de tórax', 'serve para auxiliar o médico no diagnóstico de doenças, como pneumonia, fraturas, e outros')
);

INSERT INTO tb_exame VALUES (
    tp_exame(exame_seq.NEXTVAL, 'Ressonância magnética', 'O exame de ressonância magnética é um exame de diagnóstico por imagem, que não possui radiação e permite a captação de imagens detalhadas e tridimensionais de forma não invasiva.')
);

INSERT INTO tb_exame VALUES (
    tp_exame(exame_seq.NEXTVAL, 'Raio-x da coluna', 'serve para auxiliar o médico no diagnóstico de doenças, como pneumonia, fraturas, e outros')
);

INSERT INTO tb_exame VALUES (
    tp_exame(exame_seq.NEXTVAL, 'Ácido Úrico', 'O exame ácido úrico é um exame de análise clínica, sendo feito por meio da coleta de sangue em laboratório.' )
);

INSERT INTO tb_exame VALUES (
    tp_exame(exame_seq.NEXTVAL, 'Tomografia computadorizada' , 'É a junção do Raio-X com computadores capazes de produzir imagens dos órgãos internos.')
);

INSERT INTO tb_exame VALUES (
    tp_exame(exame_seq.NEXTVAL, 'Vulvoscopia', 'Vulvoscopia é um exame não invasivo de imagem capaz de avaliar toda a região vulvar.')
);

INSERT INTO tb_exame VALUES (
    tp_exame(exame_seq.NEXTVAL, 'Angiografia', 'É um exame que utiliza raios x para visualizar e analisar possíveis alterações relacionadas aos vasos sanguíneos')
);

INSERT INTO tb_exame VALUES (
    tp_exame(exame_seq.NEXTVAL, 'Glicemia em jejum', 'É o exame responsável por medir o nível de glicose no sangue')
);

INSERT INTO tb_centro VALUES(
    tp_centro(3, 50, 
        tp_endereco(69334233, 'São José', null, 'Parnaíba', 'Rua Santa Catarina', 2813, 'PI', 'Brasil'),
        lista_telefones(
            tp_telefone('(91) 3753-3422'),
            tp_telefone('(91) 3457-1264')
        ),
        tp_lista_atendente(
            tp_atendente('48466958401', 'Manoel Benício Theo Cardoso', 'M', TO_DATE('11/01/1969', 'dd/mm/yyyy'),
                tp_endereco('64033524', 'Santo Antônio', null, 'Teresina', 'Quadra 07', 948, 'PI', 'Brasil'),
                lista_telefones(
                    tp_telefone('(49) 93475-8490')
                )
            ),
            tp_atendente('50413745384', 'Lavínia Juliana Sophia Dias', 'F', TO_DATE('03/01/2002', 'dd/mm/yyyy'),
                tp_endereco('92320810', 'Harmonia', null, 'Canoas', 'Rua das Araucárias', 105, 'RS', 'Brasil'),
                lista_telefones(
                    tp_telefone('(16) 92167-4413')
                )
            )
        ),
        tp_lista_profissionais(
            tp_enfermeira('69933068326', 'Elisa Camila Teixeira', 'F', TO_DATE('08/01/1990', 'dd/mm/yyyy'),
                tp_endereco('85603173', 'Pinheirinho', null, 'Francisco Beltrão', 'Rua Ângelo Pelisser', 566, 'PR', 'Brasil'),
                lista_telefones(
                    tp_telefone('(83) 93630-5606')
                ),
                lst_turno(
                    tp_turno('M'),
                    tp_turno('N')
                ),
                lst_areas(
                    tp_area_atuacao('Area I da enfermagem')
                ),
                null,
                '326585'
            ),
            tp_enfermeira('72376837219', 'Jéssica Jaqueline Gomes', 'F', TO_DATE('15/01/1988', 'dd/mm/yyyy'),
                tp_endereco('58420133', 'Velame', null, 'Campina Grande', 'Rua Santino Freire Andrade', 483, 'PB', 'Brasil'),
                lista_telefones(
                    tp_telefone('(83) 92174-1557')
                ),
                lst_turno(
                    tp_turno('M'),
                    tp_turno('T')
                ),
                lst_areas(
                    tp_area_atuacao('Area I da enfermagem')
                ),
                null,
                '270274'
            ),
            tp_medico_especialista('75834244025', 'Mirella Alícia Lima', 'F', TO_DATE('12/03/1956', 'dd/mm/yyyy'),
                tp_endereco('89042350', 'Água Verde', null, 'Blumenau', 'Rua Bubi Rocha Coutinho Júnior', 973, 'SC', 'Brasil'),
                lista_telefones(
                    tp_telefone('(38) 92814-5214')
                ),
                lst_turno(
                    tp_turno('T'),
                    tp_turno('M')
                ),
                lst_areas(
                    tp_area_atuacao('Cirurgia cardiovascular')
                ),
                null,
                '93331',
                'Cardiologia'
            ),
            tp_medico_especialista('77299804794', 'Kauê Ruan Assunção', 'M', TO_DATE('22/01/1955', 'dd/mm/yyyy'),
                tp_endereco('60850300', 'Aerolândia', null, 'Fortaleza', 'Rua do Partido', 744, 'CE', 'Brasil'),
                lista_telefones(
                    tp_telefone('(94) 92753-7231')
                ),
                lst_turno(
                    tp_turno('T')
                ),
                lst_areas(
                    tp_area_atuacao('Ortopedia e traumatologia')
                ),
                null,
                '46291',
                'Ortopedia'
            ),
            tp_medico_especialista('74846020940', 'Agatha Tânia da Cunha', 'F', TO_DATE('23/03/1987', 'dd/mm/yyyy'),
                tp_endereco('64212480', 'Alto Santa Maria', null, 'Parnaíba', 'Rua Doutor Zilmar Duarte Vieira', 746, 'PI', 'Brasil'),
                lista_telefones(
                    tp_telefone('(79) 92437-3660')
                ),
                lst_turno(
                    tp_turno('N'),
                    tp_turno('M')
                ),
                lst_areas(
                    tp_area_atuacao('Urologia')
                ),
                null,
                '71377',
                'Urologia'
            )
        )   
    )
);

INSERT INTO tb_laudo VALUES(
    tp_laudo(laudo_seq.NEXTVAL, null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '07995976437'),
        (SELECT REF(E) FROM tb_exame E WHERE E.nome_exame = 'TSH'),
        '<4,5 μUI/mL: níveis normais de TSH no sangue, com baixa probabilidade de hipotireoidismo. de 4,5 a 10 μUI/mL: alteração no nível de TSH no sangue, podendo indicar um caso de hipotireodismo.'
    )
);

INSERT INTO tb_laudo VALUES(
    tp_laudo(laudo_seq.NEXTVAL, null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '12826023497'),
        (SELECT REF(E) FROM tb_exame E WHERE E.nome_exame = 'Vulvocospia'),
        'Candidíase encontrada na vulva, com ausência de lesões.'
    )
);

INSERT INTO tb_laudo VALUES(
    tp_laudo(laudo_seq.NEXTVAL, null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '18413380871'),
        (SELECT REF(E) FROM tb_exame E WHERE E.nome_exame = 'TGP e TGO'),
        'Níveis de TGO: 35 U/L, níveis de TGP: 30 U/L no sangue.'
    )
);

INSERT INTO tb_laudo VALUES(
    tp_laudo(laudo_seq.NEXTVAL, null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '19125818414'),
        (SELECT REF(E) FROM tb_exame E WHERE E.nome_exame = 'Hemograma'),
        'Hemoglobina: 16.3 g/dL, Hematrócito: 58.3%, Hematimetria: 5.7, Reticulócitos: 1.8, VCM: 82 fL, HCM: 30 g/dL de hemácias, CHCM: 35 g/dL, Índice de anisocitose 13.5 RDW'
    )
);

INSERT INTO tb_laudo VALUES(
    tp_laudo(laudo_seq.NEXTVAL, null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '23369225255'),
        (SELECT REF(E) FROM tb_exame E WHERE E.nome_exame = 'Papanicolau'),
        'Alterações celulares benignas, geralmente causadas por processos inflamatórios'
    )
);

INSERT INTO tb_laudo VALUES(
    tp_laudo(laudo_seq.NEXTVAL, null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '25483157036'),
        (SELECT REF(E) FROM tb_exame E WHERE E.nome_exame = 'Angiografia'),
        'Encontrado um Tumor cerebral.'
    )
);

INSERT INTO tb_laudo VALUES(
    tp_laudo(laudo_seq.NEXTVAL, null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '29021059088'),
        (SELECT REF(E) FROM tb_exame E WHERE E.nome_exame = 'Ultrassonografia'),
        'Segue em anexo:'
    )
);

INSERT INTO tb_laudo VALUES(
    tp_laudo(laudo_seq.NEXTVAL, null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '07995976437'),
        (SELECT REF(E) FROM tb_exame E WHERE E.nome_exame = 'Tomografia computadorizada'),
        'Tumores benigno encontrado na região cerebral.'
    )
);

INSERT INTO tb_laudo VALUES(
    tp_laudo(laudo_seq.NEXTVAL, null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '12826023497'),
        (SELECT REF(E) FROM tb_exame E WHERE E.nome_exame = 'Ácido Úrico.'),
        'Possui 3,7 mg/dl de ácido úrico.'
    )
);

INSERT INTO tb_laudo VALUES(
    tp_laudo(laudo_seq.NEXTVAL, null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '18413380871'),
        (SELECT REF(E) FROM tb_exame E WHERE E.nome_exame = 'Ressonância magnética.'),
        'Doença de Parkinson'
    )
);

INSERT INTO tb_laudo VALUES(
    tp_laudo(laudo_seq.NEXTVAL, null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '19125818414'),
        (SELECT REF(E) FROM tb_exame E WHERE E.nome_exame = 'Glicemia em jejum'),
        'Resultado inferior a 99 mg/dL'
    )
);

INSERT INTO tb_laudo VALUES(
    tp_laudo(laudo_seq.NEXTVAL, null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '23369225255'),
        (SELECT REF(E) FROM tb_exame E WHERE E.nome_exame = 'Raio-x de tórax'),
        'Tuberculose encontrada, causada pelo Mycobacterium tuberculosis nos pulmões.'
    )
);

INSERT INTO tb_laudo VALUES(
    tp_laudo(laudo_seq.NEXTVAL, null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '25483157036'),
        (SELECT REF(E) FROM tb_exame E WHERE E.nome_exame = 'Raio-x da coluna.'),
        'Segue em anexo'
    )
);

INSERT INTO tb_laudo VALUES(
    tp_laudo(laudo_seq.NEXTVAL, null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '29021059088'),
        (SELECT REF(E) FROM tb_exame E WHERE E.nome_exame = 'Espermograma'),
        '15 milhões de espermatozoides por ml.'
    )
);

INSERT INTO tb_agendamento VALUES(
    tp_agendamento(
        '29705630704',
        TO_TIMESTAMP('07/01/2020 12:03:12', 'DD/MM/YYYY HH24:MI:SS'),
        TO_TIMESTAMP('10/01/2019 15:46:05', 'DD/MM/YYYY HH24:MI:SS'),
        null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '07995976437'),
        'Realizar o exame de TSH'
    )
);
INSERT INTO tb_agendamento VALUES(
    tp_agendamento(
        '29705630704',
        TO_TIMESTAMP('17/08/2020 11:58:13', 'DD/MM/YYYY HH24:MI:SS'),
        TO_TIMESTAMP('19/03/2020 04:25:58', 'DD/MM/YYYY HH24:MI:SS'),
        null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '12826023497'),
        'Realizar o exame de Vulvoscopia'
    )
);
INSERT INTO tb_agendamento VALUES(
    tp_agendamento(
        '29705630704',
        TO_TIMESTAMP('09/02/2022 12:57:56', 'DD/MM/YYYY HH24:MI:SS'),
        TO_TIMESTAMP('17/04/2021 04:41:41', 'DD/MM/YYYY HH24:MI:SS'),
        null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '19125818414'),
        'Realizar o exame de Hemograma'
    )
);
INSERT INTO tb_agendamento VALUES(
    tp_agendamento(
        '29705630704',
        TO_TIMESTAMP('30/05/2020 22:01:30', 'DD/MM/YYYY HH24:MI:SS'),
        TO_TIMESTAMP('03/12/2019 20:17:57', 'DD/MM/YYYY HH24:MI:SS'),
        null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '23369225255'),
        'Realizar o exame de Papanicolau'
    )
);
INSERT INTO tb_agendamento VALUES(
    tp_agendamento(
        '49371521732',
        TO_TIMESTAMP('01/08/2021 14:58:14', 'DD/MM/YYYY HH24:MI:SS'),
        TO_TIMESTAMP('17/03/2021 05:17:28', 'DD/MM/YYYY HH24:MI:SS'),
        null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '25483157036'),
        'Realizar o exame de Angiografia'
    )
);
INSERT INTO tb_agendamento VALUES(
    tp_agendamento(
        '29874723580',
        TO_TIMESTAMP('12/02/2020 12:04:36', 'DD/MM/YYYY HH24:MI:SS'),
        TO_TIMESTAMP('02/12/2019 20:57:56', 'DD/MM/YYYY HH24:MI:SS'),
        null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '29021059088'),
        'Realizar o exame de Ultrassonografia'
    )
);
INSERT INTO tb_agendamento VALUES(
    tp_agendamento(
        '49371521732',
        TO_TIMESTAMP('21/02/2022 14:42:30', 'DD/MM/YYYY HH24:MI:SS'),
        TO_TIMESTAMP('10/11/2021 02:57:14', 'DD/MM/YYYY HH24:MI:SS'),
        null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '12826023497'),
        'Realizar o exame de Tomografia computadorizada'
    )
);
INSERT INTO tb_agendamento VALUES(
    tp_agendamento(
        '49371521732',
        TO_TIMESTAMP('05/12/2021 18:32:33', 'DD/MM/YYYY HH24:MI:SS'),
        TO_TIMESTAMP('15/07/2021 01:00:27', 'DD/MM/YYYY HH24:MI:SS'),
        null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '07995976437'),
        'Realizar o exame de Ácido Úrico'
    )
);
INSERT INTO tb_agendamento VALUES(
    tp_agendamento(
        '50413745384',
        TO_TIMESTAMP('06/07/2021 20:46:25', 'DD/MM/YYYY HH24:MI:SS'),
        TO_TIMESTAMP('12/05/2021 23:54:06', 'DD/MM/YYYY HH24:MI:SS'),
        null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '18413380871'),
        'Realizar o exame de Ressonância magnética'
    )
);
INSERT INTO tb_agendamento VALUES(
    tp_agendamento(
        '50413745384',
        TO_TIMESTAMP('18/05/2020 23:08:38', 'DD/MM/YYYY HH24:MI:SS'),
        TO_TIMESTAMP('18/06/2019 11:06:17', 'DD/MM/YYYY HH24:MI:SS'),
        null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '19125818414'),
        'Realizar o exame de Glicemia em jejum'
    )
);
INSERT INTO tb_agendamento VALUES(
    tp_agendamento(
        '48466958401',
        TO_TIMESTAMP('19/07/2020 16:09:53', 'DD/MM/YYYY HH24:MI:SS'),
        TO_TIMESTAMP('30/04/2020 17:25:53', 'DD/MM/YYYY HH24:MI:SS'),
        null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '23369225255'),
        'Realizar o exame de Raio-x de tórax'
    )
);
INSERT INTO tb_agendamento VALUES(
    tp_agendamento(
        '48466958401',
        TO_TIMESTAMP('16/07/2021 08:43:05', 'DD/MM/YYYY HH24:MI:SS'),
        TO_TIMESTAMP('09/11/2020 21:54:32', 'DD/MM/YYYY HH24:MI:SS'),
        null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '25483157036'),
        'Realizar o exame de Raio-x da coluna'
    )
);

INSERT INTO tb_agendamento VALUES(
    tp_agendamento(
        '48466958401',
        TO_TIMESTAMP('05/07/2021 14:46:23', 'DD/MM/YYYY HH24:MI:SS'),
        TO_TIMESTAMP('21/03/2021 20:54:03', 'DD/MM/YYYY HH24:MI:SS'),
        null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '29021059088'),
        'Realizar o exame de Espermograma'
    )
);

INSERT INTO tb_exame_centro VALUES(
    tp_exame_centro(
        'Hemograma',
        1,
        25.00,
        '00h:10m:00s'
    )
);
INSERT INTO tb_exame_centro VALUES(
    tp_exame_centro(
        'Hemograma',
        2,
        10.00,
        '00h:10m:00s'
    )
);
INSERT INTO tb_exame_centro VALUES(
    tp_exame_centro(
        'Papanicolau',
        1,
        120.00,
        '00h:40m:00s'
    )
);
INSERT INTO tb_exame_centro VALUES(
    tp_exame_centro(
        'TGP e TGO',
        1,
        14.00,
        '00h:20m:00s'
    )
);
INSERT INTO tb_exame_centro VALUES(
    tp_exame_centro(
        'TSH',
        1,
        18.00,
        '00h:10m:00s'
    )
);
INSERT INTO tb_exame_centro VALUES(
    tp_exame_centro(
        'Espermograma',
        3,
        70.00,
        '01h:10m:00s'
    )
);
INSERT INTO tb_exame_centro VALUES(
    tp_exame_centro(
        'Ultrassonografia',
        2,
        200.00,
        '00h:25m:00s'
    )
);
INSERT INTO tb_exame_centro VALUES(
    tp_exame_centro(
        'Raio-x de tórax',
        3,
        70.00,
        '00h:35m:00s'
    )
);
INSERT INTO tb_exame_centro VALUES(
    tp_exame_centro(
        'Ressonância magnética',
        3,
        700.00,
        '01h:10m:00s'
    )
);
INSERT INTO tb_exame_centro VALUES(
    tp_exame_centro(
        'Raio-x da coluna',
        3,
        80.00,
        '00h:30m:00s'
    )
);
INSERT INTO tb_exame_centro VALUES(
    tp_exame_centro(
        'Ácido Úrico',
        2,
        80.00,
        '00h:05m:00s'
    )
);
INSERT INTO tb_exame_centro VALUES(
    tp_exame_centro(
        'Tomografia computadorizada',
        2,
        90.00,
        '00h:20m:00s'
    )
);
INSERT INTO tb_exame_centro VALUES(
    tp_exame_centro(
        'Vulvoscopia',
        1,
        80.00,
        '00h:07m:00s'
    )
);
INSERT INTO tb_exame_centro VALUES(
    tp_exame_centro(
        'Angiografia',
        2,
        2000.00,
        '01h:00m:00s'
    )
);
INSERT INTO tb_exame_centro VALUES(
    tp_exame_centro(
        'Glicemia em jejum',
        3,
        6.00,
        '00h:10m:00s'
    )
);