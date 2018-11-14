CREATE PROCEDURE spGetLast
  @Identity int OUT
AS

BEGIN

	SET @Identity = IDENT_CURRENT('files')

END