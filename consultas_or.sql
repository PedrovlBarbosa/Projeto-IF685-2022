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
