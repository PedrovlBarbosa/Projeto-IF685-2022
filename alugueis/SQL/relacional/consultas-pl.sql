-- CREATE PACKAGE and TYPE
CREATE OR REPLACE PACKAGE CorretorTools AS
    FUNCTION getSalario(cpf_input IN corretor.cpf_corretor%TYPE) RETURN corretor.salario%TYPE;
    PROCEDURE printSalas(cpf_input IN corretor.cpf_corretor%TYPE);
END CorretorTools;
/

-- PACKAGE BODY and IN
CREATE OR REPLACE PACKAGE BODY CorretorTools AS
    FUNCTION getSalario(
        cpf_input IN corretor.cpf_corretor%TYPE
    ) RETURN corretor.salario%TYPE IS
        corretor_salario corretor.salario%TYPE;
        BEGIN
            SELECT salario INTO corretor_salario
                FROM corretor WHERE cpf_corretor = cpf_input;
        RETURN corretor_salario;
    END getSalario;
    
    PROCEDURE printSalas(cpf_input IN corretor.cpf_corretor%TYPE) IS
        CURSOR sala_cursor IS SELECT sala.codigo AS codigo
            FROM sala WHERE cpf_adm = cpf_input;
        BEGIN
            FOR sala_v IN sala_cursor LOOP
                DBMS_OUTPUT.PUT_LINE('Sala: ' || sala_v.codigo);
            END LOOP;
    END printSalas;
END CorretorTools;
/

-- RECORD and TABLE OF 
DECLARE 
    TYPE corretorSalario IS RECORD (
        cpf corretor.cpf_corretor%TYPE,
        salario corretor.salario%TYPE
    );
    TYPE corretorSalarioTable IS TABLE OF corretorSalario;
    corretorTable corretorSalarioTable := corretorSalarioTable();
    CURSOR corretor_c IS SELECT cpf_corretor FROM corretor;
BEGIN
    FOR v_reg IN corretor_c LOOP
        corretorTable.EXTEND;
        corretorTable(corretorTable.LAST).cpf := v_reg.cpf_corretor;
        corretorTable(corretorTable.LAST).salario := CorretorTools.getSalario(v_reg.cpf_corretor);
    END LOOP;
    CorretorTools.printSalas(corretorTable(corretorTable.FIRST).cpf);
END;
/

-- CREATE FUNCTION and ROWTYPE
CREATE OR REPLACE FUNCTION getCorretor(
    cpf_input IN corretor.cpf_corretor%TYPE
) RETURN corretor%ROWTYPE IS
    corretorRecord corretor%ROWTYPE;
    BEGIN
        SELECT * INTO corretorRecord FROM corretor WHERE cpf_corretor = cpf_input;
        RETURN corretorRecord;
    EXCEPTION WHEN NO_DATA_FOUND THEN
        RETURN NULL;
END getCorretor;
/

-- ANONYMOUS BLOCK and IF ELSIF
DECLARE
    CURSOR corretor_cursor IS (SELECT cpf_corretor, cpf_supervisor FROM Corretor);
BEGIN
    FOR vreg IN corretor_cursor LOOP
        IF vreg.cpf_supervisor IS NOT NULL THEN
            DBMS_OUTPUT.PUT_LINE('Corretor ' || vreg.cpf_corretor || ' tem supervisor.');
        ELSIF vreg.cpf_supervisor IS NULL THEN
            DBMS_OUTPUT.PUT_LINE('Corretor ' || vreg.cpf_corretor || ' não tem supervisor.');
        END IF;
    END LOOP;
END;
/

--  CASE WHEN and SELECT INTO
CREATE OR REPLACE PROCEDURE classificaPreco(
    preco_value IN avaliacao.preco_unit%TYPE
) IS
    media number;
    mensagem VARCHAR(45) := '';
BEGIN    
    SELECT AVG(preco_unit) INTO media FROM avaliacao;
    CASE
        WHEN preco_value > 1.2 * media THEN mensagem := 'Preço alto';
        WHEN preco_value < 0.8 * media THEN mensagem := 'Preço baixo';
        ELSE mensagem := 'Preço na média';
    END CASE;
    dbms_output.put_line(mensagem);
END;
/

EXECUTE classificaPreco(20);
/

-- CURSOR and LOOP EXIT WHEN
DECLARE
    corretorRecord corretor%ROWTYPE;
    corretorSalario corretor.salario%TYPE;
    CURSOR corretor_c IS SELECT * FROM corretor;
BEGIN
    OPEN corretor_c;
    LOOP
        FETCH corretor_c INTO corretorRecord;
        EXIT WHEN corretor_c%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('CPF: ' || corretorRecord.cpf_corretor);
        DBMS_OUTPUT.PUT_LINE('Salario: ' || corretorRecord.salario);
        DBMS_OUTPUT.PUT_LINE('Admissão: ' || corretorRecord.data_admissao);
        DBMS_OUTPUT.PUT_LINE(chr(10));
    END LOOP;
END;
/

-- PROCEDURE and FOR LOOP
CREATE OR REPLACE PROCEDURE BUSCA_CLIENTE(
    cpf_pessoa IN Pessoa.cpf%TYPE
) IS
    result_msg VARCHAR2(40) := 'O cliente não está cadastrado';
BEGIN    
    FOR v_reg IN (SELECT cpf_locador FROM locador WHERE cpf_locador = cpf_pessoa) LOOP
        result_msg := 'Está cadastrado nos locadores';
    END LOOP;
    FOR v_reg IN (SELECT cpf_locatario FROM locatario WHERE cpf_locatario = cpf_pessoa) LOOP
        result_msg := 'Está cadastrado nos locatários';
    END LOOP;
    FOR v_reg IN (SELECT cpf_fiador FROM fiador WHERE cpf_fiador = cpf_pessoa) LOOP
        result_msg := 'Está cadastrado nos fiadores';
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(result_msg);
END;
/

EXECUTE busca_cliente('169.161.620-66');
/

-- TRIGGER COMANDO
CREATE OR REPLACE TRIGGER ConfirmacaoInsertAvaliacao 
    AFTER INSERT ON Avaliacao BEGIN
    dbms_output.put_line('A avaliação foi inserida com sucesso');
END;
/

-- TRIGGER LINHA and EXCEPTION WHEN
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
EXCEPTION WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('Não foi feito uma avalição para este aluguel!');
END;
/