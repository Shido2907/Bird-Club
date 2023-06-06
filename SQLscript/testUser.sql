INSERT INTO [User] (UID, userName, fullName, phone, email, password, role, expiredDate, Status, signupDate, MID, gender)
VALUES ('staff123', 'staffuser', 'John Smith', '1234567890', 'john@example.com', 'password123', 'staff', '2024-12-31', 'active', GETDATE(), 'M123', 'Male');
INSERT INTO [User] (UID, userName, fullName, phone, email, password, role, expiredDate, Status, signupDate, MID, gender)
VALUES ('user456', 'regularuser', 'Jane Doe', '0987654321', 'jane@example.com', 'password456', 'user', '2023-12-31', 'active', GETDATE(), 'M456', 'Female');
INSERT INTO [User] (UID, userName, fullName, phone, email, password, role, expiredDate, Status, signupDate, MID, gender)
VALUES ('user', 'duc', 'dr', '0987654321', 'dr@example.com', '1', 'user', '2023-12-31', 'unactive', GETDATE(), 'M456', 'male');
SELECT * FROM [User] 
WHERE username = 'staffuser' and password = 'password123'
select [UID], [userName], [email], [phone] from [user] 
                 WHERE username = 'staffuser' and password = 'password123'
				 SELECT * FROM [User] WHERE username = 'staffuser'
				 INSERT INTO [User] ( userName, fullName, phone, email, password, role, expiredDate, Status, signupDate, MID, gender)
VALUES ( 'nhat', 'dr', '0987654321', 'dr@example.com', '1', 'user', '2023-12-31', 'unactive', GETDATE(), 'M456', 'male');