﻿CREATE PROCEDURE [dbo].[User_Create]
    @Id UNIQUEIDENTIFIER,
    @Name NVARCHAR(50),
    @Email NVARCHAR(50),
    @MasterPassword NVARCHAR(300),
    @MasterPasswordHint NVARCHAR(50),
    @Culture NVARCHAR(10),
    @SecurityStamp NVARCHAR(50),
    @TwoFactorEnabled BIT,
    @TwoFactorProvider TINYINT,
    @AuthenticatorKey NVARCHAR(50),
    @CreationDate DATETIME2(7)
AS
BEGIN
    INSERT INTO [dbo].[User]
    (
        [Id],
        [Name],
        [Email],
        [MasterPassword],
        [MasterPasswordHint],
        [Culture],
        [SecurityStamp],
        [TwoFactorEnabled],
        [TwoFactorProvider],
        [AuthenticatorKey],
        [CreationDate]
    )
    VALUES
    (
        @Id,
        @Name,
        @Email,
        @MasterPassword,
        @MasterPasswordHint,
        @Culture,
        @SecurityStamp,
        @TwoFactorEnabled,
        @TwoFactorProvider,
        @AuthenticatorKey,
        @CreationDate
    )
END
