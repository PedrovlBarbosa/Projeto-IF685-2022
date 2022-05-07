CREATE SEQUENCE laudo_seq
  MINVALUE 1 
  START WITH 1 
  INCREMENT BY 1 
  NOCACHE;

CREATE SEQUENCE exame_seq
  MINVALUE 1 
  START WITH 1 
  INCREMENT BY 1 
  NOCACHE;

CREATE OR REPLACE TYPE tp_endereco AS OBJECT(
    cep VARCHAR2(9), 
	bairro VARCHAR2(50), 
    complemento VARCHAR2(20), 
	cidade VARCHAR2(50), 
    rua VARCHAR2(50), 
    numero INTEGER, 
	estado VARCHAR2(2), 
    pais VARCHAR2(20)
);

--TELEFONE
/
CREATE OR REPLACE TYPE tp_telefone AS OBJECT(
    telefone VARCHAR2(16)
);

--TELEFONE NESTED TABLE
/
CREATE OR REPLACE TYPE lista_telefones AS TABLE OF tp_telefone;

-- CLASSE ABSTRATA PESSOA
/ 
CREATE OR REPLACE TYPE tp_pessoa AS OBJECT(
    cpf_pessoa VARCHAR2(11), 
    nome VARCHAR2(50), 
	sexo CHAR(1), 
    data_de_nascimento DATE,
    endereco tp_endereco,
    telefones lista_telefones
) NOT FINAL NOT INSTANTIABLE; 
/

-- ATENDENTE TIPO
CREATE OR REPLACE TYPE tp_atendente UNDER tp_pessoa();
/

-- ATENDENTE NESTED TABLE
CREATE OR REPLACE TYPE tp_lista_atendente AS TABLE OF tp_atendente;
/

-- ATRIBUTO MULTIVALORADO TURNO
CREATE OR REPLACE TYPE tp_turno AS OBJECT(
    periodo CHAR(1)
);
/

-- VARRAY DE TURNO
CREATE OR REPLACE TYPE lst_turno AS VARRAY(2) OF tp_turno;
/

-- ATRIBUTO MULTIVALORADO AREA ATUACAO
CREATE OR REPLACE TYPE tp_area_atuacao AS OBJECT(
    area VARCHAR2(50)
);
/

-- VARRAY DE AREA ATUACAO 
-- EXECUTAR ESSE SOZINHO, DA ERRO QUANDO EXECUTA EM LOTE
CREATE OR REPLACE TYPE lst_areas AS VARRAY(4) OF tp_area_atuacao;

-- TIPO FILHO DE PESSOA QUE TBM É UMA CLASSE ABSTRATA
CREATE OR REPLACE TYPE tp_profissional_de_saude UNDER tp_pessoa(
    turnos lst_turno,
    areas_atuacao lst_areas, 
    gerente REF tp_profissional_de_saude
) NOT FINAL NOT INSTANTIABLE;
/
-- NESTED TABLE DE PROFISSIONAIS DE SAUDE
CREATE OR REPLACE TYPE tp_lista_profissionais AS TABLE OF tp_profissional_de_saude;
/

-- CENTRO
-- COMO AS RELACOES CENTRO-PROFISSIONAL E CENTRO-ATENDENTE SAO 1:N FOI FEITA ESSA ATRIBUICAO DOS PROFISSIONAIS E ATENDENTES AO CENTRO
CREATE OR REPLACE TYPE tp_centro AS OBJECT(
    id_centro INTEGER, 
    capacidade INTEGER,
    endereco tp_endereco,
    telefones lista_telefones,
    lista_atendentes tp_lista_atendente,
    lista_profissionais tp_lista_profissionais
);
/
-- TABELA CENTRO
CREATE TABLE tb_centro OF tp_centro(
    PRIMARY KEY(id_centro)
) 
NESTED TABLE telefones STORE AS telefones_NT,
NESTED TABLE lista_atendentes STORE AS atendente_NT (NESTED TABLE telefones STORE AS telefone_atendente_NT), 
NESTED TABLE lista_profissionais STORE AS profissional_NT (NESTED TABLE telefones STORE AS telefone_profissional_NT); 
-- COMO PESSOA TEM UMA NT DE TELEFONE TEMOS UMA NT DE NT 
/
-- ACOMPANHANTE
CREATE OR REPLACE TYPE tp_acompanhante AS OBJECT(
    nome_acompanhante  VARCHAR2(50), 
    parentesco VARCHAR2(10)
);

/
-- VARRAY DE ACOMPANHANTE
CREATE OR REPLACE TYPE tp_acompanhantes AS VARRAY(3) OF tp_acompanhante;
/

-- TIPO PACIENTE
CREATE OR REPLACE TYPE tp_paciente UNDER tp_pessoa(
    lista_acompanhantes tp_acompanhantes
);

/
-- TABELA PACIENTE
CREATE TABLE tb_paciente OF tp_paciente(
    PRIMARY KEY(cpf_pessoa)
)NESTED TABLE telefones STORE AS fones_NT_paciente;
/
-- TIPO ENFERMEIRA
CREATE OR REPLACE TYPE tp_enfermeira UNDER tp_profissional_de_saude(
    COREN VARCHAR2(20)
);
/

CREATE OR REPLACE TYPE tp_medico UNDER tp_profissional_de_saude(
    CRM VARCHAR2(20)
)NOT FINAL NOT INSTANTIABLE;
/
CREATE OR REPLACE TYPE tp_medico_especialista UNDER tp_medico(
    especialidade VARCHAR2(50)
);
/
CREATE OR REPLACE TYPE tp_medico_geral UNDER tp_medico();
/
CREATE OR REPLACE TYPE tp_exame AS OBJECT(
    id_exame INTEGER,
    nome_exame VARCHAR2(50),
    descricao VARCHAR2(255)
);
/
CREATE TABLE tb_exame OF tp_exame(
    PRIMARY KEY(id_exame),
    UNIQUE(nome_exame)
);
/
CREATE OR REPLACE TYPE tp_exame_centro AS OBJECT(
    nome_exame VARCHAR2(50),
    id_centro INTEGER,
    preco NUMBER(7,2)
);
/

CREATE TABLE tb_exame_centro OF tp_exame_centro(
    PRIMARY KEY(nome_exame, id_centro),
    FOREIGN KEY(nome_exame) REFERENCES tb_exame(nome_exame),
    FOREIGN KEY(id_centro) REFERENCES tb_centro(id_centro)
);
/

CREATE OR REPLACE TYPE tp_laudo AS OBJECT(
    laudo_id INTEGER,
    medico REF tp_medico, -- era profissional da saudo, mas acho que faz mais sentido apenas medico
    paciente REF tp_paciente, 
    exame REF tp_exame,
    resultado VARCHAR2(255)
);
/
CREATE TABLE tb_laudo OF tp_laudo(
    PRIMARY KEY(laudo_id),
    paciente SCOPE IS tb_paciente,
    exame SCOPE IS tb_exame
);
/
CREATE OR REPLACE TYPE tp_agendamento AS OBJECT(
    cpf_atendente VARCHAR2(11),
    hora_agendamento timestamp, 
    hora_marcacao timestamp, 
    profissional REF tp_profissional_de_saude, 
    paciente REF tp_paciente, 
    finalidade varchar2(50)
);
/

CREATE TABLE tb_agendamento OF tp_agendamento(
    PRIMARY KEY(cpf_atendente, hora_agendamento)
);
/
ALTER TYPE tp_exame_centro
ADD ATTRIBUTE (tempo_medio VARCHAR2(11));