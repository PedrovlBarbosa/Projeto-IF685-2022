DROP TABLE Agendamento_criado;
DROP TABLE Agendamento;
DROP TABLE Execucao;
DROP TABLE Acompanhante;
DROP TABLE Laudo;
DROP TABLE Exame_descricao;
DROP TABLE Exame;
DROP TABLE Paciente;
DROP TABLE Atendente;
DROP TABLE Medico_especialista;
DROP TABLE Medico_geral;
DROP TABLE Medico;
DROP TABLE Enfermeira;
DROP TABLE Turno;
DROP TABLE Area_atuacao;
DROP TABLE Profissional_de_saude;
DROP TABLE Telefone_pessoa;
DROP TABLE Telefone_centro;
DROP TABLE Centro;
DROP TABLE Pessoa;
DROP SEQUENCE laudo_seq;
DROP SEQUENCE exame_seq;

-- Tabela Centro
CREATE TABLE Centro(id_centro INTEGER, capacidade INTEGER, 
	bairro VARCHAR2(20), complemento VARCHAR2(20), 
	cidade VARCHAR2(20), rua VARCHAR2(40), numero INTEGER, 
	estado VARCHAR2(2), cep VARCHAR2(9), pais VARCHAR2(20), 
	CONSTRAINT centro_pkey PRIMARY KEY(id_centro))

-- Tabela Pessoa
CREATE TABLE Pessoa(cpf_pessoa VARCHAR2(11), nome VARCHAR2(40), 
	sexo CHAR(1) CHECK (sexo in ('F', 'M')), data_de_nascimento DATE, 
	bairro VARCHAR2(35), complemento VARCHAR2(20), cidade VARCHAR2(35), 
	rua VARCHAR2(40), numero INTEGER, estado VARCHAR2(2), cep VARCHAR2(8), 
	pais VARCHAR2(20), CONSTRAINT pessoa_pkey PRIMARY KEY(cpf_pessoa));

-- Tabela Telefone_pessoa
CREATE TABLE Telefone_pessoa(dono VARCHAR2(11), numero_telefone VARCHAR2(16),
	CONSTRAINT telefone_pessoa_pkey PRIMARY KEY(dono, numero_telefone),
	CONSTRAINT telefone_pessoa_fkey FOREIGN KEY(dono) REFERENCES Pessoa(cpf_pessoa));

-- Tabela Telefone_centro
CREATE TABLE Telefone_centro(id_centro INTEGER, numero_telefone VARCHAR2(16),
	CONSTRAINT telefone_centro_pkey PRIMARY KEY(id_centro, numero_telefone),
	CONSTRAINT telefone_centro_fkey FOREIGN KEY(id_centro) REFERENCES Centro(id_centro));

-- Tabela Paciente
CREATE TABLE Paciente(cpf_paciente VARCHAR2(11),
	CONSTRAINT paciente_pkey PRIMARY KEY(cpf_paciente),
	CONSTRAINT paciente_fkey FOREIGN KEY(cpf_paciente) REFERENCES Pessoa (cpf_pessoa));

-- Tabela Acompanhante
CREATE TABLE Acompanhante(cpf_paciente VARCHAR2(11), nome_acompanhante  VARCHAR2(30), parentesco VARCHAR2(10), 
	CONSTRAINT acompanhante_pkey PRIMARY KEY(cpf_paciente, nome_acompanhante),
	CONSTRAINT acompanhante_fkey FOREIGN KEY(cpf_paciente) REFERENCES Paciente (cpf_paciente));

-- Tabela Atendente
CREATE TABLE Atendente(cpf_atendente VARCHAR2(11), centro INTEGER, 
	CONSTRAINT atendente_pkey PRIMARY KEY(cpf_atendente),
	CONSTRAINT atendente_fkey1 FOREIGN KEY(cpf_atendente) REFERENCES Pessoa(cpf_pessoa),
	CONSTRAINT atendente_fkey2 FOREIGN KEY(centro) REFERENCES Centro(id_centro));

-- Tabela Profissional_de_saude
CREATE TABLE Profissional_de_saude(cpf_profissional VARCHAR2(11), 
			cpf_gerente VARCHAR2(11), centro INTEGER, 
	CONSTRAINT prof_saude_pkey PRIMARY KEY(cpf_profissional),
	CONSTRAINT prof_saude_fkey1 FOREIGN KEY(cpf_profissional) REFERENCES Pessoa(cpf_pessoa),
	CONSTRAINT prof_saude_fkey2 FOREIGN KEY(centro) REFERENCES Centro(id_centro),
	CONSTRAINT prof_saude_fkey3 FOREIGN KEY(cpf_gerente) REFERENCES Profissional_de_saude (cpf_profissional));

-- Tabela Turno
CREATE TABLE Turno(profissional VARCHAR2(11), 
				   periodo CHAR(1) CHECK (periodo in ('M', 'T', 'N')), 
	CONSTRAINT turno_pkey PRIMARY KEY(profissional, periodo),
	CONSTRAINT turno_fkey FOREIGN KEY(profissional) REFERENCES Profissional_de_saude (cpf_profissional));

-- Tabela Area_de_atuacao
CREATE TABLE Area_atuacao(profissional VARCHAR2(11), area VARCHAR2(40), 
	CONSTRAINT area_pkey PRIMARY KEY(profissional, area),
	CONSTRAINT area_fkey FOREIGN KEY(profissional) REFERENCES Profissional_de_saude (cpf_profissional));
	
-- Tabela Enfermeira
CREATE TABLE Enfermeira(cpf_enfermeira VARCHAR2(11), COREN VARCHAR2(20) NOT NULL,
	CONSTRAINT enfermeira_pkey PRIMARY KEY(cpf_enfermeira),
	CONSTRAINT medico_unique UNIQUE (COREN),
	CONSTRAINT enfermeira_fkey FOREIGN KEY(cpf_enfermeira) REFERENCES Profissional_de_saude(cpf_profissional));
	
-- Tabela Medico
CREATE TABLE Medico(cpf_medico VARCHAR2(11), CRM VARCHAR2(20) NOT NULL,
	CONSTRAINT medico_pkey PRIMARY KEY(cpf_medico),
	CONSTRAINT medico_unique UNIQUE (CRM),
	CONSTRAINT medico_fkey FOREIGN KEY(cpf_medico) REFERENCES Profissional_de_saude(cpf_profissional));

-- Tabela Medico_especialista
CREATE TABLE Medico_especialista(cpf_especialista VARCHAR2(11), especialidade VARCHAR2(30),
	CONSTRAINT medico_esp_pkey PRIMARY KEY(cpf_especialista),
	CONSTRAINT medico_esp_fkey FOREIGN KEY(cpf_especialista) REFERENCES Medico(cpf_medico));

-- Tabela Medico_geral
CREATE TABLE Medico_geral(cpf_geral VARCHAR2(11),
	CONSTRAINT medico_geral_pkey PRIMARY KEY(cpf_geral),
	CONSTRAINT medico_geral_fkey FOREIGN KEY(cpf_geral) REFERENCES Medico(cpf_medico));

-- Tabela Exame
CREATE TABLE Exame(id_exame INTEGER, nome_exame varchar2(30), descricao VARCHAR2(255), 
	CONSTRAINT exame_pkey PRIMARY KEY(id_exame),  
        CONSTRAINT exame_uniq UNIQUE (nome_exame));

-- Tabela Exame_descricao
CREATE TABLE Exame_centro(nome_exame VARCHAR2(30), id_centro integer, preco number(7,2),  
	CONSTRAINT exame_desc_pkey PRIMARY KEY(nome_exame, id_centro), 
	CONSTRAINT exame_desc_fkey FOREIGN KEY(nome_exame) REFERENCES Exame(nome_exame), 
        CONSTRAINT exame_fkey FOREIGN KEY(id_centro) REFERENCES Centro (id_centro));

-- Tabela Laudo
CREATE TABLE Laudo(laudo_id INTEGER, cpf_profissional VARCHAR2(11), cpf_paciente VARCHAR2(11),
		                   nome_exame VARCHAR2(30), resultado VARCHAR2(255),
	CONSTRAINT laudo_pkey PRIMARY KEY(laudo_id),
	CONSTRAINT laudo_fkey1 FOREIGN KEY(cpf_profissional) REFERENCES Profissional_de_saude(cpf_profissional),
	CONSTRAINT laudo_fkey2 FOREIGN KEY(cpf_paciente) REFERENCES Paciente(cpf_paciente),
	CONSTRAINT laudo_fkey3 FOREIGN KEY(nome_exame) REFERENCES Exame(nome_exame));

-- Tabela Execução
CREATE TABLE Execucao(cpf_profissional varchar2(11), hora timestamp, nome_exame VARCHAR2(30),
	CONSTRAINT exec_pkey PRIMARY KEY(cpf_profissional, hora, nome_exame),
	CONSTRAINT exec_fkey1 FOREIGN KEY(cpf_profissional) REFERENCES Profissional_de_saude(cpf_profissional),
	CONSTRAINT exec_fkey2 FOREIGN KEY(nome_exame) REFERENCES Exame(nome_exame));

-- Tabela Agendamento
CREATE TABLE Agendamento(cpf_profissional varchar2(11), cpf_paciente varchar2(11),   
			 cpf_atendente varchar2(11),  finalidade varchar2(50),  
	CONSTRAINT agend_pkey PRIMARY KEY(cpf_profissional, cpf_paciente),  
	CONSTRAINT agend_fkey1 FOREIGN KEY(cpf_profissional) REFERENCES Profissional_de_saude(cpf_profissional),  
	CONSTRAINT agend_fkey2 FOREIGN KEY(cpf_paciente) REFERENCES Paciente(cpf_paciente),  
	CONSTRAINT agend_fkey3 FOREIGN KEY(cpf_atendente) REFERENCES Atendente(cpf_atendente));

-- Tabela Agendamentos_criados
CREATE TABLE Agendamento_criado(cpf_atendente varchar2(11), hora_marcacao timestamp, 
				hora_agendamento timestamp,
	CONSTRAINT agend_criado_pkey PRIMARY KEY(cpf_atendente),
	CONSTRAINT agend_criado_fkey1 FOREIGN KEY(cpf_atendente) REFERENCES Pessoa(cpf_pessoa));

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
