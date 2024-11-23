-----COLUMN DATA ENCRYPTION----

-- ENCRYPTION SCRIPT
BEGIN TRY
    BEGIN TRANSACTION;

-- Step 1: Create a Symmetric Key if not already created
    IF NOT EXISTS (SELECT * FROM sys.symmetric_keys WHERE name = 'SymmetricKey')
    BEGIN
        CREATE SYMMETRIC KEY SymmetricKey
        WITH ALGORITHM = AES_256
        ENCRYPTION BY PASSWORD = 'UemsPassword123';
        PRINT 'Symmetric key created successfully.';
    END;

-- Step 2: Add EncryptedPhone column if it doesn't exist
    IF COL_LENGTH('[User]', 'EncryptedPhone') IS NULL
    BEGIN
        ALTER TABLE [User]
        ADD EncryptedPhone VARBINARY(256);
        PRINT 'EncryptedPhone column added successfully.';
    END;

-- Step 3: Open the Symmetric Key
    OPEN SYMMETRIC KEY SymmetricKey
    DECRYPTION BY PASSWORD = 'UemsPassword123';

-- Step 4: Encrypt and update the UserPhone column
    UPDATE [User]
    SET EncryptedPhone = EncryptByKey(Key_GUID('SymmetricKey'), CAST(UserPhone AS VARCHAR(50)));
    PRINT 'Data encrypted successfully.';

-- Step 5: Close the Symmetric Key
    CLOSE SYMMETRIC KEY SymmetricKey;

-- Commit the transaction
    COMMIT TRANSACTION;
    PRINT 'Encryption completed successfully.';
END TRY
BEGIN CATCH 
-- Rollback in case of any errors
    ROLLBACK TRANSACTION;
    PRINT 'Error during encryption: ' + ERROR_MESSAGE();
END CATCH;

-- Verify the Encryption
SELECT UserID, UserPhone, EncryptedPhone FROM [User];



-- DECRYPTION SCRIPT
BEGIN TRY
    BEGIN TRANSACTION;

-- Step 1: Open the Symmetric Key
    OPEN SYMMETRIC KEY SymmetricKey
    DECRYPTION BY PASSWORD = 'UemsPassword123';

-- Step 2: Decrypt and display data
    SELECT UserID, 
           UserPhone, 
           CONVERT(VARCHAR(50), DecryptByKey(EncryptedPhone)) AS DecryptedPhone
    FROM [User];
    PRINT 'Data decrypted successfully.';

-- Step 3: Close the Symmetric Key
    CLOSE SYMMETRIC KEY SymmetricKey;

-- Commit the transaction
    COMMIT TRANSACTION;
    PRINT 'Decryption completed successfully.';
END TRY
BEGIN CATCH
-- Rollback in case of any errors
    ROLLBACK TRANSACTION;
    PRINT 'Error during decryption: ' + ERROR_MESSAGE();
END CATCH;
