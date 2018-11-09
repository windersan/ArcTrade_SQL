
Create Procedure spAuthenticateUser
@username nvarchar(50), 
@password nvarchar(50),
@isValid int OUTPUT,
@userType nvarchar(50) OUTPUT
as
Begin
	if exists (select username, password from users where username = @username AND password = @password)
	begin
		set @isValid = (select id from users where username = @username);
		set @userType = (select UserType from users where username = @username);
		update users set [Timestamp] = CURRENT_TIMESTAMP WHERE username = @username;
	end
	else set @isValid = 0
End




