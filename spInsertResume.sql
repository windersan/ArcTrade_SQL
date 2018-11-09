
Create Procedure spInsertResume
@resume VARBINARY(MAX), 
@id INT OUTPUT
as
Begin
	SET NOCOUNT ON
	Insert into Files (Data) values(@resume); 
	SELECT @id = SCOPE_IDENTITY()
    SELECT @id AS id
    RETURN
End




