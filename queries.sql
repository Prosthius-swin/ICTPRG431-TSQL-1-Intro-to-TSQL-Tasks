-- CREATE DATABASE CALLUM9468;
-- GO

-- USE CALLUM9468;
-- GO

-- 1
BEGIN
PRINT ('HELLO CALLUM')
END

GO

-- 2
BEGIN
DECLARE @MYNAME NVARCHAR(10) = 'Callum';
PRINT CONCAT('HELLO ', @MYNAME)
END

GO

-- 3
DROP PROCEDURE IF EXISTS SAYHELLO;
GO

CREATE PROCEDURE SAYHELLO AS
BEGIN
DECLARE @MYNAME NVARCHAR(10) = 'Callum';
PRINT CONCAT('HELLO ', @MYNAME)
END

EXEC SAYHELLO
GO

-- 4
DROP PROCEDURE IF EXISTS PNAME;
GO

CREATE PROCEDURE PNAME @STUID INT AS
BEGIN
PRINT CONCAT('Hello Santa ', @STUID)
END

EXEC PNAME @STUID = 9468
GO

-- 5
DROP PROCEDURE IF EXISTS NEWPROC;
GO

CREATE PROCEDURE NEWPROC @NUM INT, @NAME NVARCHAR(100) AS
BEGIN

IF @NUM <= 4
    PRINT CONCAT('The number is small ', @NAME);
ELSE IF @NUM BETWEEN 5 AND 8
    PRINT CONCAT('The number is medium ', @NAME);
ELSE IF @NUM >= 9
    PRINT CONCAT('That''s a big number ', @NAME);
END;
GO

NEWPROC @NUM = 4, @NAME = 'Callum';
GO

NEWPROC @NUM = 5, @NAME = 'Callum';
GO

NEWPROC @NUM = 8, @NAME = 'Callum';
GO

NEWPROC @NUM = 9, @NAME = 'Callum';
GO

-- 6
DROP PROCEDURE IF EXISTS POSINT;
GO

CREATE PROCEDURE POSINT @NUM INT AS
BEGIN 

DECLARE @COUNTER INT = 1;
DECLARE @OUTPUT NVARCHAR(100) = '';

    WHILE @COUNTER < @NUM
        BEGIN
            SET @OUTPUT = CONCAT (@OUTPUT, ' ', @COUNTER);
            SET @COUNTER = @COUNTER + 2;
        END;
    
    PRINT CONCAT(@OUTPUT, ' ', 'GOODBYE');
END;

POSINT @NUM = 10;
GO

-- 7
CREATE FUNCTION MULTIPLY (@NUM1 INT, @NUM2 INT) RETURNS INT AS
BEGIN
    RETURN @NUM1 * @NUM2;
END;
GO

BEGIN
    PRINT dbo.MULTIPLY(10, 2);
END;