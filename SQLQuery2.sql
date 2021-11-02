-- Create Movie table
CREATE TABLE Films
(
MovieId INT IDENTITY PRIMARY KEY,
Movie NVARCHAR(128) NOT NULL,
ReleaseDate DATE NOT NULL,
RunTime NVARCHAR(128) NOT NULL, 
Rating NVARCHAR 
)

--Create People Table
CREATE TABLE People
(
PeopleID INT IDENTITY PRIMARY KEY,
Name NVARCHAR(50) NOT NULL,
Profession NVARCHAR(10)
)

--Create Viwer Table
CREATE TABLE Viwer
(
ViwerId,


)
