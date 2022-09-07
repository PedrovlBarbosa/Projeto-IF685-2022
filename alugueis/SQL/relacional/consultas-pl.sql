-- TRIGGER COMANDO
CREATE OR REPLACE TRIGGER ConfirmacaoInsertAvaliacao 
AFTER INSERT ON Avaliacao
BEGIN
    dbms_output.put_line('A avaliação foi inserida com sucesso');
END;

-- TRIGGER LINHA
CREATE OR REPLACE TRIGGER IncrementaSalarioCorretor
    AFTER INSERT ON Aluguel FOR EACH ROW 
DECLARE
    porc_corretor Aluguel.porc_locador%TYPE := 1 - :NEW.porc_locador / 100;
    avaliacao_row Avaliacao%ROWTYPE;
    diaria Avaliacao.preco_unit%TYPE;
    salario_corretor Corretor.salario%TYPE;
BEGIN
    SELECT * INTO avaliacao_row FROM Avaliacao WHERE
        Avaliacao.cpf_locador = :NEW.cpf_dono AND
        Avaliacao.codigo_sala = :NEW.codigo_sala;
    
    diaria := avaliacao_row.preco_unit * porc_corretor;
    SELECT salario INTO salario_corretor FROM Corretor WHERE 
        Corretor.cpf_corretor = avaliacao_row.cpf_corretor;
    
    UPDATE Corretor SET salario = salario_corretor + diaria WHERE
        Corretor.cpf_corretor = avaliacao_row.cpf_corretor;
    dbms_output.put_line('Novo salário do corretor ' ||
                          avaliacao_row.cpf_corretor ||
                          ' é de ' || (salario_corretor + diaria));
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('Não foi feito uma avalição para este aluguel!');
END;