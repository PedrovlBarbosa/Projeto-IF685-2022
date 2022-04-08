-- 1. ALTER TABLE: Adiciona a informação do id_centro em todos os agendamentos.
ALTER TABLE agendamento ADD (
  id_centro INTEGER,
  CONSTRAINT centro_fk FOREIGN KEY(id_centro) REFERENCES centro(id_centro)
);

UPDATE agendamento SET id_centro = (
  SELECT centro FROM atendente WHERE
  agendamento.cpf_atendente = atendente.cpf_atendente);

-- 2. CREATE INDEX: Aumenta a perfomance na consulta da tabela Pessoa ao adicionar o index_nome
CREATE INDEX indice_nome ON Pessoa(nome);


-- 3 INSERT INTO: Povoa as tabelas
INSERT INTO Pessoa VALUES ('74846020940', 'Agatha Tânia da Cunha', 'F', 
                           TO_DATE('23/03/1987', 'dd/mm/yyyy'));

-- 4 UPDATE: Troca o número de uma pessoa
UPDATE Telefone_pessoa
   SET numero_telefone = '(49) 95821-2754'
   WHERE numero_telefone = '(63) 92252-4716';

-- 5 DELETE: Remove o acompanhante do paciente com tumor cerebral
DELETE FROM Acompanhante WHERE Acompanhante.cpf_paciente = (
    SELECT Laudo.cpf_paciente FROM Laudo
WHERE resultado LIKE '%Tumor cerebral%');

-- 6 SELECT-FROM-WHERE: Exibe todos os agendamentos criados em que a hora de marcação é depois de 2021
SELECT cpf_profissional, cpf_paciente, finalidade, hora_marcacao 
    FROM Agendamento WHERE hora_marcacao >= TO_DATE('2021-01-01','YYYY-MM-DD');

-- 7 BETWEEN: Seleciona um paciente do sexo feminino em que a data de nascimento dela seja entre 01/01/1960 e 01/01/1970
SELECT cpf_paciente, nome, sexo, data_de_nascimento FROM Paciente, Pessoa
    WHERE Paciente.cpf_paciente = Pessoa.cpf_pessoa AND sexo = 'F' AND
    data_de_nascimento BETWEEN
    TO_DATE('1960-01-01', 'YYYY-MM-DD') AND TO_DATE('1970-01-01', 'YYYY-MM-DD');


-- 8 IN


-- 9 LIKE: Exibe os agendamentos das pessoas que representam a média, das quais tem como finalidade o exame de raio-x
SELECT ROUND(AVG(Trunc((SYSDATE - Pessoa.data_de_nascimento)/365, 0))) AS idade_media
    FROM Pessoa INNER JOIN Agendamento ON Pessoa.cpf_pessoa = Agendamento.cpf_paciente
WHERE finalidade LIKE '%Raio-x%';

-- 10 IS NULL ou IS NOT NULL: Atualiza todos endereços que não tem complemento para "Endereço único"
UPDATE Endereco_centro SET complemento = 'Endereço único' WHERE complemento IS NULL;

-- 11 INNER JOIN: Une o pacinete e seu respectivo paciente
SELECT Pessoa.nome, Paciente.cpf_paciente, Agendamento.hora_agendamento, Agendamento.finalidade 
    FROM Paciente INNER JOIN Pessoa ON Paciente.cpf_paciente = Pessoa.cpf_pessoa 
    INNER JOIN Agendamento ON Paciente.cpf_paciente = Agendamento.cpf_paciente;

-- 12 MAX: Seleciona a capacidade máxima de cada centro
SELECT MAX(capacidade)
FROM Centro;

-- 13 MIN: Seleciona a capacidade mínima de cada centro
SELECT MIN(capacidade)
FROM Centro;

-- 14 AVG: Exibe a média dos preços dos centros
SELECT id_centro, AVG(preco) AS media_preco
    FROM Exame_centro GROUP BY id_centro;

-- 15 COUNT: Mostra a quantidade de atendentes por agendamento no centro
SELECT Centro.id_centro, COUNT(cpf_atendente) FROM Centro, Agendamento
    WHERE Centro.id_centro = (SELECT centro FROM Atendente WHERE Agendamento.cpf_atendente = Atendente.cpf_atendente)
    AND hora_agendamento BETWEEN TO_TIMESTAMP('01/01/2020 01:00:00', 'DD/MM/YYYY HH24:MI:SS') 
    AND TO_TIMESTAMP('01/07/2020 01:00:00', 'DD/MM/YYYY HH24:MI:SS')
    GROUP BY Centro.id_centro;

-- 16 LEFT ou RIGHT ou FULL OUTER JOIN: Exibe todos os profissionais de saúde do centro (1, 3)
SELECT cpf_atendente, cpf_profissional,
    Atendente.centro AS centro_do_atendente,
    Profissional_de_saude.centro AS centro_do_profissional
FROM Profissional_de_saude
    FULL OUTER JOIN Atendente ON Atendente.cpf_atendente = Profissional_de_saude.cpf_profissional
WHERE Atendente.centro IN (1, 3) OR Profissional_de_saude.centro IN (1, 3)
ORDER BY centro_do_atendente, centro_do_profissional;

-- 17 SUBCONSULTA COM OPERADOR RELACIONAL: 

-- 18. SUBCONSULTA COM IN: Exibe pacientes que possuem laudos
SELECT cpf_paciente, nome FROM Paciente
INNER JOIN Pessoa on Paciente.cpf_paciente = Pessoa.cpf_pessoa
WHERE cpf_paciente IN (SELECT cpf_paciente FROM Laudo);

-- 19. SUBCONSULTA COM ANY: 
SELECT cpf_paciente, nome FROM Paciente
    INNER JOIN Pessoa on Paciente.cpf_paciente = Pessoa.cpf_pessoa
    WHERE cpf_paciente = ANY(SELECT cpf_paciente FROM Laudo);

-- 20 SUBCONSULTA COM ALL: Pegar o estado de todas as pessoas do centro
SELECT cpf_pessoa, nome
    FROM Pessoa
    WHERE estado <> ALL
    (SELECT estado
    FROM Centro);

-- 21 ORDER BY: Ordena todos os centros pela capacidade
SELECT FROM Centro ORDER BY capacidade;

-- 22 GROUP BY: Exibe a relação entre os centros e o total de profissionais da saúde desse centro
SELECT
    Centro.id_centro as CENTRO,
    COUNT(PS.cpf profissional) AS TOTAL_DE_PROFISSIONAIS_DA_SAUDE
    FROM
    Profissional de saude PS, Centro
    WHERE
    PS.centro = Centro.id_centro
    GROUP BY
Centro.id_centro;

-- 23 HAVING: Mostra os médicos que mais produzem laudos
SELECT
 Pessoa.cpf_pessoa AS cpf_medico,
 Pessoa.nome as nome_do_medico,
 COUNT(Laudo.laudo_id) as quantidade_de_laudos
FROM Pessoa, Laudo WHERE
 Laudo.cpf_profissional = Pessoa.cpf_pessoa
GROUP BY
 Pessoa.cpf_pessoa, Pessoa.nome
HAVING COUNT(Laudo.laudo_id) > (
 SELECT AVG(COUNT(lau.laudo_id)) FROM
   Laudo lau
 GROUP BY lau.cpf_profissional
);

-- 24 UNION ou INTERSECT ou MINUS: Faz a união de dois centros
SELECT id_centro, capacidade from Centro WHERE id_centro =1
UNION (SELECT id_centro, capacidade from Centro WHERE id_centro 2);

-- 25: CREATE VIEW: Cria uma tabela virtual exibindo as enfermeiras que trabalham na área 1 da enfermagem
CREATE VIEW [Enfermeiras_area_1] AS
    SELECT profissional AS cpf_profissional AS cpf_enfermeira, nome, area
    FROM Area_atuacao INNER JOIN Pessoa ON Area_atuacao.profissional = Pessoa.cpf_pessoa
    WHERE area = 'Area I da enfermagem';
