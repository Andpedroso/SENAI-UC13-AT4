--1.Reiniciando o banco.
USE RpgOnlineFst2
GO

SELECT * FROM Usuarios
INNER JOIN Classes ON Classes.ClasseId = Usuarios.UsuarioId
INNER JOIN Habilidades ON Habilidades.HabilidadeId = Classes.ClasseId

--2.Criando usuário com restrição de acesso.
CREATE LOGIN aluno
WITH PASSWORD='1234567'
GO
CREATE USER aluno FOR LOGIN aluno
GO
GRANT SELECT TO aluno
