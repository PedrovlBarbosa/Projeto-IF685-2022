-- ALTER TABLE
ALTER TABLE PESSOA ADD (idade NUMBER);

-- CREATE INDEX
CREATE INDEX idx_nome ON Pessoa(nome);

-- INSERT INTO
INSERT INTO Pessoa VALUES ('092.849.620-13', 'Cynara', 'F', TO_DATE('04/07/2001', 'dd/mm/yyyy'), '66055260', 21);

-- UPDATE
UPDATE Corretor SET salario = 6200 WHERE cpf_corretor = '093.010.763-78';

-- DELETE
DELETE FROM PESSOA WHERE CPF = '092.849.620-13';

-- WHERE and BETWEEN
SELECT P.nome, P.data_nasc FROM Pessoa P WHERE P.data_nasc BETWEEN TO_DATE('1984', 'yyyy') AND TO_DATE('1995', 'yyyy');

-- MAX and IN
SELECT P.nome, E.estado, CR.salario FROM Corretor CR 
    INNER JOIN Pessoa P ON P.cpf = CR.cpf_corretor
    INNER JOIN Endereco E ON P.cep_pessoa = E.cep
WHERE salario IN (SELECT MAX(salario) FROM Corretor);

-- LIKE
SELECT P.nome FROM Pessoa P WHERE P.nome LIKE 'Mari%';

-- IS NOT NULL
SELECT P.NOME, CR.SALARIO FROM PESSOA P
    INNER JOIN CORRETOR CR ON P.CPF = CR.CPF_CORRETOR
WHERE CR.CPF_SUPERVISOR IS NOT NULL;

-- INNER JOIN
SELECT P.nome, CR.salario FROM Corretor CR
    INNER JOIN Pessoa P ON P.cpf = CR.cpf_corretor
ORDER BY salario desc;

-- MIN and SUBCONSULTA COM IN
SELECT P.nome, E.estado, CR.salario FROM Corretor CR
    INNER JOIN Pessoa P ON P.cpf = CR.cpf_corretor
    INNER JOIN Endereco E ON P.cep_pessoa = E.cep
WHERE salario IN (SELECT MIN(salario) FROM Corretor);

-- AVG
SELECT AVG(area) FROM Sala S;

-- COUNT
SELECT Count (*) FROM Corretor CR WHERE CR.salario > 3000;

-- LEFT JOIN
SELECT P1.nome, CR.salario, P2.nome as supervisor FROM Pessoa P1
    INNER JOIN Corretor CR ON CR.CPF_CORRETOR = P1.CPF
    LEFT OUTER JOIN Pessoa P2 ON CR.CPF_SUPERVISOR = P2.CPF
ORDER BY CR.salario desc;

-- SUBCONSULTA COM RELACIONAL and ALL
SELECT CODIGO FROM SALA WHERE AREA > ALL (
    SELECT PRECO_UNIT FROM AVALIACAO WHERE CODIGO_SALA = 7
);

-- ORDER BY
SELECT E.estado, CR.salario FROM Corretor CR
    INNER JOIN Pessoa P ON P.cpf = CR.cpf_corretor
    INNER JOIN Endereco E ON E.CEP = P.CEP_PESSOA
ORDER BY salario desc;

-- GROUP BY
SELECT sexo, Count(*) FROM Pessoa GROUP BY sexo;

-- HAVING
SELECT P.nome, COUNT(*) FROM Sala S
    INNER JOIN Corretor CR ON S.cpf_adm = CR.cpf_corretor
    INNER JOIN Pessoa P ON CR.cpf_corretor = P.cpf
    WHERE CR.salario > 1000 GROUP BY P.nome
HAVING COUNT(*) > 1;

-- CREATE VIEW
CREATE VIEW Sala_area_preco AS
    SELECT S.codigo, S.area FROM Sala S
        WHERE S.area > 30;