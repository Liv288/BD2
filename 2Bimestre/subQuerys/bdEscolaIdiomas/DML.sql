USE bdEscolaIdioma
GO

INSERT INTO tbAluno (nomeAluno, rgAluno, cpfAluno, logradouroAluno, numLogradouroAluno,
					complementoAluno, cepAluno, bairroAluno, cidadeAluno, dataNascAluno)
    VALUES
        ('Maria Gloria', '45.233.123-0', '23456789012', 'Rua B', '456', 'Casa', '12345678', 'Bela Vista', 'SP', '1999-03-10'),
        ('Paulo Santos', '82.292.122-0', '12345678901', 'Rua A', '123', 'Apto 1', '01234567', 'Centro', 'SP', '2000-10-03'),
        ('Perla Silva', '23.533.211-9', '34567890123', 'Av. Central', '789', 'Bloco 3', '23456789', 'Jardim', 'SP', '1998-04-04'),
        ('Gilson Barros', '34.221.111-X', '45678901234', 'Rua C', '101', '', '34567890', 'Boa Vista', 'PE', '1995-09-09'),
        ('Mariana Barbosa', '54.222.122-9', '56789012345', 'Rua D', '202', 'Fundos', '45678901', 'Copacabana', 'RJ', '2001-10-10')
        
SELECT * FROM tbAluno

INSERT INTO tbTelAluno (numTelAluno, codAluno)
    VALUES
        ('987654321', 1),
        ('912345678', 2),
        ('998877665', 3),
        ('933221100', 4),
        ('944556677', 5)

SELECT * FROM tbTelAluno

INSERT INTO tbCurso (nomeCurso, valorCurso)
    VALUES
        ('Inglês', 356.00),
        ('Alemão', 478.00),
        ('Italiano', 573.00),
        ('Japonês', 700.00)

SELECT * FROM tbCurso

INSERT INTO tbNivel (descricaoNivel)
    VALUES
        ('Básico'),
        ('Intermediário'),
        ('Avançado')

SELECT * FROM tbNivel

INSERT INTO tbPeriodo (descricaoPeriodo)
    VALUES
        ('Manhã'),
        ('Tarde'),
        ('Noite')

SELECT * FROM tbPeriodo

INSERT INTO tbTurma (descTurma, codCurso, codNivel, codPeriodo, horarioTurma, diaDaSemanaTurma)
    VALUES
        ('1A', 1, 1, 1, '12:00:00', 'sábado'),
        ('1B', 1, 2, 2, '18:00:00', 'sexta'),
        ('1C', 2, 1, 3, '19:00:00', 'quinta')

SELECT * FROM tbTurma

INSERT INTO tbMatricula (dataMatricula, codAluno, codTurma)
    VALUES
        ('2015-03-10', 1, 1),
        ('2014-04-05', 2, 1),
        ('2012-03-05', 3, 2),
        ('2016-03-03', 1, 3),
        ('2015-07-05', 4, 2),
        ('2015-05-07', 4, 3),
        ('2015-06-06', 5, 1),
        ('2015-05-05', 5, 2)

SELECT * FROM tbMatricula
