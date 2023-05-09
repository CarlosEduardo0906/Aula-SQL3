--------------------------Criação de uma Função
--CREATE FUNCTION F_Somar(@Num1 INT, @Num2 INT)
--		RETURNS INT
--AS
--		BEGIN
--			DECLARE @Soma INT
--			SET @Soma = @Num1 + @Num2
--			RETURN(@Soma)
--		END;

--use Exercicios

--------------------------Criação de uma Função

--CREATE FUNCTION F_Tabela ()
--		RETURNS TABLE
--AS
--		RETURN(SELECT * FROM cadfun);

--------------------------Criação de uma Função

--CREATE FUNCTION F_Situacao (@Nota1 FLOAT, @Nota2 FLOAT, @Nota3 FLOAT)
--		RETURNS VARCHAR(11)
--AS
--		BEGIN
--			DECLARE @Media FLOAT, @Retorno VARCHAR(11)
--			SET @Media = (@Nota1 + @Nota2 + @Nota3)/3
--			IF @Media < 5
--			SET @Retorno = 'Reprovado'
--			ELSE
--			IF @Media < 7
--				SET @Retorno = 'Recuperacao'
--				ELSE
--				 SET @Retorno = 'Aprovado'
--			RETURN(@Retorno);
--		END

--------------------------Criação de uma Função

--CREATE FUNCTION F_Situacao2 (@Nota1 FLOAT, @Nota2 FLOAT, @Nota3 FLOAT)
--		RETURNS VARCHAR(11)
--AS
--		BEGIN
--			DECLARE @Media FLOAT, @Retorno VARCHAR(11)
--			SET @Media = (@Nota1 + @Nota2 + @Nota3)/3
--			SET @Retorno = CASE
--							WHEN @Media < 5 THEN 'Reprovado'
--							WHEN @Media < 7 THEN 'Recuperacao'
--							ELSE 'Aprovado'
--						END
--			RETURN(@Retorno);
--		END

--------------------------Criação de uma Função

--CREATE FUNCTION F_Situacao3 (@Nota1 FLOAT, @Nota2 FLOAT, @Nota3 FLOAT)
--		RETURNS VARCHAR(11)
--AS
--		BEGIN
--			DECLARE @Media FLOAT = (@Nota1 + @Nota2 + @Nota3)/3
--			RETURN(IIF(@Media < 5, 'Reprovado',
--					IIF(@Media < 7, 'Recuperacao',
--					     'Aprovado')))
			
--		END


-----------------------------------------Criação e alimentação de uma tabela

--create table Aluno (NOME varchar (15) not null ,NOTA1 float not null ,NOTA2 float not null ,NOTA3 float not null)
--insert into Aluno (NOME, NOTA1, NOTA2 ,NOTA3)
--				VALUES('Pedro', 2,7,4),
--					  ('Carlos', 4,9,6),
--					  ('Ana', 6,1,8),
--					  ('Paulo', 8,3,10),
--					  ('Maria', 10,5,9),
--					  ('José', 1,7,8),
--					  ('João', 3,9,7),
--					  ('Cristina', 5,2,6);

--SELECT nome AS 'NOME',
--		nota1 AS 'NOTA1',
--		nota2 AS 'NOTA2',
--		nota3 AS 'NOTA3',
--		CAST ((nota1+nota2+nota3)/3 AS DECIMAL (3,1)) AS 'MÉDIA',
--		dbo.F_Situacao(nota1,nota2,nota3) AS 'SITUAÇÃO'
--FROM Aluno

--select * from Aluno


-------------------------------Seleção de Função
--SELECT dbo.F_Situacao3(8,6,7)

