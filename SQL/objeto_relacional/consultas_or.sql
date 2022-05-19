INSERT INTO tb_laudo VALUES(
    tp_laudo(laudo_seq.NEXTVAL, null,
        (SELECT REF(P) FROM tb_paciente P WHERE P.cpf_pessoa = '07995976437'),
        (SELECT REF(E) FROM tb_exame E WHERE E.nome_exame = 'TSH'),
        'Laudo de exame de TSH'
    )
);
/

SELECT 
    Paciente.cpf_pessoa,
    Paciente.nome,
    Paciente.sexo,
    Paciente.data_de_nascimento,
    Paciente.endereco.numero Numero,
    Paciente.endereco.complemento Complemento,
    Paciente.endereco.rua Rua,
    Paciente.endereco.bairro Bairro,
    Paciente.endereco.cidade Cidade,
    Paciente.endereco.estado Estado,
    Paciente.endereco.pais Pais,
    Paciente.endereco.cep CEP, 
    Telefones.telefone Telefone, 
    Acompanhantes.nome_acompanhante, Acompanhantes.parentesco
FROM tb_paciente Paciente, 
TABLE(Paciente.telefones) Telefones,
TABLE(Paciente.lista_acompanhantes) Acompanhantes;
/

SELECT 
    Centros.id_centro,
    Atendentes.cpf_pessoa CPF_atendente,
    Atendentes.nome nome_atendente,
    Profissionais.cpf_pessoa CPF_profissional,
    Profissionais.nome nome_profissional,
    Turnos.periodo,
    Atuacao.area,
    DEREF(Profissionais.gerente).cpf_pessoa AS CPF_gerente 
FROM 
    tb_centro Centros,
    TABLE(Centros.lista_atendentes) Atendentes,
    TABLE(Centros.lista_profissionais) Profissionais,
    TABLE(Profissionais.areas_atuacao) Atuacao,
    TABLE(Profissionais.turnos) Turnos;
/

SELECT 
    DEREF(L.paciente).nome as Paciente,       
    DEREF(L.exame).nome_exame as Exame,     
    tb_exame_centro.id_centro, 
    tb_exame_centro.preco  
FROM tb_laudo L INNER JOIN tb_exame_centro  ON  DEREF(L.exame).nome_exame = tb_exame_centro.nome_exame
/

SELECT Agendamento.finalidade, (SELECT ROUND(AVG(Trunc((SYSDATE - DEREF(Agendamento.paciente).data_de_nascimento)/365, 0))) FROM tb_agendamento WHERE finalidade = Agendamento.finalidade) AS Media_idade_pacientes
    FROM tb_agendamento Agendamento;
 /

SELECT 
    nome AS Paciente_nome,
    cpf_pessoa AS Paciente_cpf,
    Telefones.telefone, 
    Paciente.endereco.estado
FROM 
    tb_paciente Paciente, 
    TABLE(Paciente.telefones) Telefones 
WHERE 
    Paciente.endereco.estado NOT IN (
        SELECT Centros.endereco.estado FROM tb_centro Centros
    );
/

SELECT 
    C.id_centro, 
    Atendentes.nome, 
    (SELECT COUNT(cpf_atendente) FROM tb_agendamento    
    WHERE cpf_atendente = Atendentes.cpf_pessoa) AS   
    N_Agendamentos 
FROM tb_centro C, TABLE(C.lista_atendentes) Atendentes
/

SELECT 
    DEREF(paciente).nome AS nome_paciente,
    SUM(preco) AS preco_exames
FROM tb_laudo 
INNER JOIN tb_exame_centro Exame_centro 
    ON Exame_centro.nome_exame = DEREF(exame).nome_exame
GROUP BY DEREF(paciente).nome
ORDER BY SUM(preco) DESC;
/

SELECT 
  C.id_centro, 
  P.nome as NOME_MEDICO, 
  A.area , 
  P.get_documento() as CRM, 
  (E.telefone) 
FROM tb_centro C, 
  TABLE(C.lista_profissionais) P, 
  TABLE(P.telefones) E, 
  TABLE(P.areas_atuacao) A
WHERE A.AREA NOT LIKE '%enfermagem%';
/

SELECT 
    Profissionais.nome nome_profissional,  
    Profissionais.cpf_pessoa CPF_profissional, 
    Turnos.periodo, 
    atuacao.area, 
    Telefones.telefone 
FROM 
    tb_centro Centros, 
    TABLE(Centros.telefones) Telefones, 
    TABLE(Centros.lista_profissionais) Profissionais, 
    TABLE(Profissionais.areas_atuacao) Atuacao, 
    TABLE(Profissionais.turnos) Turnos
WHERE atuacao.area = 'Area I da enfermagem';
/