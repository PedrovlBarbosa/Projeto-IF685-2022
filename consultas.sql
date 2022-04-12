-- 1. ALTER TABLE: Adiciona a informação do id_centro em todos os agendamentos.
ALTER TABLE agendamento ADD (
  id_centro INTEGER,
  CONSTRAINT centro_fk FOREIGN KEY(id_centro) REFERENCES centro(id_centro)
);

UPDATE agendamento SET id_centro = (
  SELECT centro FROM atendente WHERE
  agendamento.cpf_atendente = atendente.cpf_atendente);

-- 2. CREATE INDEX: Aumenta a performance da consulta pelo nome da Pessoa
CREATE INDEX indice_nome ON Pessoa(nome);


-- 3 INSERT INTO:  Adiciona um novo agendamento de consulta
INSERT INTO Agendamento VALUES ('48466958401', TO_DATE('01/03/2022', 'dd/mm/yyyy'), 
                                TO_DATE('07/03/2022', 'dd/mm/yyyy'), '72376837219', '25483157036', 
                                'Consulta sobre uma mordida de gato no pulso.', 3);

-- 4 UPDATE: Troca o número de uma pessoa
UPDATE Telefone_pessoa
   SET numero_telefone = '(49) 95821-2754'
   WHERE numero_telefone = '(63) 92252-4716';

-- 5 DELETE: Remove o acompanhante do paciente com tumor cerebral
DELETE FROM Acompanhante WHERE Acompanhante.cpf_paciente = (
    SELECT Laudo.cpf_paciente FROM Laudo
WHERE resultado LIKE '%Tumor cerebral%');

-- 6 SELECT-FROM-WHERE: Exibe todos os agendamentos em que a hora de marcação é depois de 2021
SELECT cpf_profissional, cpf_paciente, finalidade, hora_marcacao 
    FROM Agendamento WHERE hora_marcacao >= TO_DATE('2021-01-01','YYYY-MM-DD');

-- 7 BETWEEN: Seleciona um paciente do sexo feminino em que a data de nascimento dela seja década de 60
SELECT cpf_paciente, nome, sexo, data_de_nascimento FROM Paciente, Pessoa
    WHERE Paciente.cpf_paciente = Pessoa.cpf_pessoa AND sexo = 'F' AND
    data_de_nascimento BETWEEN
    TO_DATE('1960-01-01', 'YYYY-MM-DD') AND TO_DATE('1970-01-01', 'YYYY-MM-DD');

-- 8 IN: Exibe todos os empregados do centro (1, 3)
SELECT cpf_atendente, Atendente.centro AS centro_do_atendente,
    cpf_profissional, Profissional_de_saude.centro AS centro_do_profissional
FROM Profissional_de_saude
    FULL OUTER JOIN Atendente ON Atendente.cpf_atendente = Profissional_de_saude.cpf_profissional
WHERE Atendente.centro IN (1, 3) OR Profissional_de_saude.centro IN (1, 3)
ORDER BY centro_do_atendente, centro_do_profissional;

-- 9 LIKE: Exibe média de idade das pessoas com agendamento de exame de raio-x
SELECT ROUND(AVG(Trunc((SYSDATE - Pessoa.data_de_nascimento)/365, 0))) AS idade_media
    FROM Pessoa INNER JOIN Agendamento ON Pessoa.cpf_pessoa = Agendamento.cpf_paciente
WHERE finalidade LIKE '%Raio-x%';

-- 10 IS NULL ou IS NOT NULL: Atualiza todos endereços que não tem complemento para "Endereço único"
UPDATE Endereco_centro SET complemento = 'Endereço único' WHERE complemento IS NULL;

-- 11 INNER JOIN: Une a tabela pessoa e seu respectivo paciente
SELECT Pessoa.nome, Paciente.cpf_paciente, Agendamento.hora_agendamento, Agendamento.finalidade 
    FROM Paciente INNER JOIN Pessoa ON Paciente.cpf_paciente = Pessoa.cpf_pessoa 
    INNER JOIN Agendamento ON Paciente.cpf_paciente = Agendamento.cpf_paciente;

-- 12 MAX: Preço máximo gasto pelas pessoas no centro 2
SELECT nome, MAX(preco) preco_maximo FROM Pessoa 
    INNER JOIN Agendamento ON Pessoa.cpf_pessoa = Agendamento.cpf_paciente 
    INNER JOIN Exame_centro ON 
        Exame_centro.id_centro = Agendamento.id_centro AND
        Agendamento.finalidade LIKE '%' || Exame_centro.nome_exame || '%'
WHERE Exame_centro.id_centro = 2 GROUP BY nome ORDER BY preco_maximo DESC;

-- 13 MIN: Seleciona a capacidade mínima dentre os centro
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

-- 16 LEFT ou RIGHT ou FULL OUTER JOIN: Exibe os gerentes e gerenciados
SELECT pessoa_gerente.nome gerente, pessoa_gerenciado.nome gerenciado FROM Profissional_de_saude gerente
    FULL OUTER JOIN Profissional_de_saude gerenciado ON gerenciado.cpf_gerente = gerente.cpf_profissional
    LEFT JOIN Pessoa pessoa_gerente ON pessoa_gerente.cpf_pessoa = gerenciado.cpf_gerente
    LEFT JOIN Pessoa pessoa_gerenciado ON pessoa_gerenciado.cpf_pessoa = gerenciado.cpf_profissional
WHERE pessoa_gerente.nome IS NOT NULL OR pessoa_gerenciado.nome IS NOT NULL
ORDER BY gerente, gerenciado;

-- 17 SUBCONSULTA COM OPERADOR RELACIONAL: Nome das pessoas que tem uma quantidade inferior
--                                         de telefones em relação à pessoa com maior quantidade
SELECT nome, COUNT(Telefone_pessoa.dono) quantidade_telefone FROM Pessoa
    INNER JOIN Telefone_pessoa ON Pessoa.cpf_pessoa = Telefone_pessoa.dono
GROUP BY nome HAVING COUNT(Telefone_pessoa.dono) < (
    SELECT MAX(COUNT(Telefone_pessoa.numero_telefone)) 
    FROM Telefone_pessoa tp GROUP BY tp.dono)
ORDER BY quantidade_telefone DESC;

-- 18. SUBCONSULTA COM IN: Exibe pacientes com os CPF's indicados
SELECT cpf_paciente, nome FROM Paciente
INNER JOIN Pessoa on Paciente.cpf_paciente = Pessoa.cpf_pessoa
WHERE cpf_paciente IN ('19125818414', '23369225255', '29874723580', '85851790660');

-- 19. SUBCONSULTA COM ANY: O CPF e nome dos pacientes que tenham pelo menos um dos CPF's indicados
SELECT cpf_paciente, nome FROM Paciente
    INNER JOIN Pessoa on Paciente.cpf_paciente = Pessoa.cpf_pessoa
WHERE cpf_paciente = ANY('19125818414', '23369225255', '29874723580', '85851790660');

-- 20 SUBCONSULTA COM ALL: Pegar todas as pessoas que moram em estado sem centro
SELECT Pessoa.cpf_pessoa, nome FROM Pessoa
INNER JOIN endereco_pessoa ON endereco_pessoa.cpf_pessoa = Pessoa.cpf_Pessoa
WHERE estado <> ALL(SELECT estado FROM Endereco_centro);

-- 21 ORDER BY: Ordena todos os centros pela capacidade
SELECT FROM Centro ORDER BY capacidade;

-- 22 GROUP BY: Exibe a relação entre os centros e o total de profissionais da saúde desse centro
SELECT Centro.id_centro as centro, COUNT(cpf_profissional) AS total_profissionais
    FROM Profissional_de_saude, Centro WHERE centro = Centro.id_centro
GROUP BY Centro.id_centro;

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

-- 24 UNION ou INTERSECT ou MINUS: Exibe as informações do centro 1 e 2
SELECT id_centro, capacidade from Centro WHERE id_centro = 1
UNION SELECT id_centro, capacidade from Centro WHERE id_centro = 2;

-- 25: CREATE VIEW: Cria uma tabela virtual exibindo as enfermeiras que trabalham na área 1 da enfermagem
CREATE VIEW Enfermeiras_area_1 AS
    SELECT profissional AS cpf_profissional, nome, area FROM Area_atuacao 
    INNER JOIN Pessoa ON Area_atuacao.profissional = Pessoa.cpf_pessoa
    WHERE area = 'Area I da enfermagem';
SELECT * FROM Enfermeiras_area_1;

-- 26 GRANT/REVOKE
GRANT ALL PRIVILEGES ON Centro 
TO centro_adms WITH GRANT OPTION
