
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE UsersCreateOrUpdate
	-- Add the parameters for the stored procedure here
	@UserID int,
	@UserName varchar(50),
	@UserDesignation varchar(50),
	@UserContact varchar(13),
	@UserAddress varchar(200),
	@UserEducation varchar(160)
AS
BEGIN
IF(@UserID = 0)
	BEGIN
	INSERT INTO UsersTB(UserID,UserName,UserDesignation,UserContact,UserAddress,UserEducation) VALUES(@UserID,@UserName,@UserDesignation,@UserContact,@UserAddress,@UserEducation)
	END
ELSE
	BEGIN
		UPDATE UsersTB
			SET
			UserName = @UserName,
			UserDesignation = @UserDesignation,
			UserContact = @UserContact,
			UserAddress = @UserAddress,
			UserEducation = @UserEducation 
			WHERE UserID = @UserID
		END
	END
GO
