CREATE TABLE operations (
    id INT IDENTITY(1,1) PRIMARY KEY,
    salary DECIMAL(10,2) NOT NULL,
    date DATE NOT NULL
);

CREATE PROCEDURE CalculateAndPrintTotal
AS
BEGIN
    -- Məlumat veririk ki, proses başlayıb
    PRINT 'Hesablama başladı...';

    -- Dəyişən yaradıb məbləği ora yazırıq
    DECLARE @total DECIMAL(10,2);

    -- Məbləği hesablamaq
    SELECT @total = SUM(salary) FROM operations;

    -- Nəticəni print edirik
    PRINT 'Hesablama tamamlandı.';
    PRINT 'Ümumi məbləğ: ' + CAST(@total AS NVARCHAR(20));
END;

EXEC CalculateAndPrintTotal;
