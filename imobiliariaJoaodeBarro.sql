CREATE DATABASE ImobiliariaJoaoDeBarro;
USE ImobiliariaJoaoDeBarro;

CREATE TABLE Sindico (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15)
);

CREATE TABLE Proprietario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15)
);

CREATE TABLE Condominio (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(200),
    sindico_id INT,
    FOREIGN KEY (sindico_id) REFERENCES Sindico(id)
);

CREATE TABLE Apartamento (
    id INT PRIMARY KEY AUTO_INCREMENT,
    numero VARCHAR(10) NOT NULL,
    condominio_id INT,
    FOREIGN KEY (condominio_id) REFERENCES Condominio(id)
);

CREATE TABLE Garagem (
    id INT PRIMARY KEY AUTO_INCREMENT,
    numero VARCHAR(10) NOT NULL,
    apartamento_id INT,
    FOREIGN KEY (apartamento_id) REFERENCES Apartamento(id)
);

CREATE TABLE Proprietario_Apartamento (
    proprietario_id INT,
    apartamento_id INT,
    PRIMARY KEY (proprietario_id, apartamento_id),
    FOREIGN KEY (proprietario_id) REFERENCES Proprietario(id),
    FOREIGN KEY (apartamento_id) REFERENCES Apartamento(id)
);

INSERT INTO Sindico (nome, telefone) VALUES
('Carlos Silva', '11987654321'),
('Ana Souza', '11912345678');

INSERT INTO Proprietario (nome, telefone) VALUES
('João Pereira', '11911112222'),
('Maria Oliveira', '11933334444'),
('Pedro Santos', '11955556666');

INSERT INTO Condominio (nome, endereco, sindico_id) VALUES
('Condomínio 1', 'Rua das Flores, 123', 1),
('Condomínio 2', 'Avenida dos Lagos, 456', 2);

INSERT INTO Apartamento (numero, condominio_id) VALUES
('A101', 1),
('A201', 1),
('A301', 1),
('A401', 1),
('A501', 1),
('B101', 2),
('B201', 2),
('B301', 2),
('B401', 2),
('B501', 2);

INSERT INTO Garagem (numero, apartamento_id) VALUES
('G01', 1),
('G02', 2),
('G03', 3),
('G04', 4),
('G05', 5),
('G06', 6),
('G07', 7),
('G08', 8),
('G09', 9),
('G10', 10);

INSERT INTO Proprietario_Apartamento (proprietario_id, apartamento_id) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(1, 7),
(2, 8),
(3, 9),
(1, 10);

SELECT 
    c.nome AS Nome_Condominio, 
    c.endereco AS Endereco, 
    COUNT(a.id) AS Total_Apartamentos
FROM 
    Condominio c
LEFT JOIN 
    Apartamento a ON c.id = a.condominio_id
GROUP BY 
    c.id;
    
   ALTER TABLE Apartamento
ADD COLUMN valor DOUBLE DEFAULT 0;

-- Atualização para Condomínio 1
UPDATE Apartamento
SET valor = CASE
    WHEN numero = 'A101' THEN 100000.00
    WHEN numero = 'A201' THEN 115000.00
    WHEN numero = 'A301' THEN 125000.00
    WHEN numero = 'A401' THEN 135000.00
    WHEN numero = 'A501' THEN 150000.00
END
WHERE condominio_id = 1;

-- Atualização para Condomínio 2
UPDATE Apartamento
SET valor = CASE
    WHEN numero = 'B101' THEN 200000.00
    WHEN numero = 'B201' THEN 215000.00
    WHEN numero = 'B301' THEN 225000.00
    WHEN numero = 'B401' THEN 235000.00
    WHEN numero = 'B501' THEN 250000.00
END
WHERE condominio_id = 2;

SELECT 
    p.nome AS Nome_Proprietario, 
    p.telefone AS Telefone, 
    COUNT(pa.apartamento_id) AS Total_Apartamentos, 
    SUM(a.valor) AS Valor_Patrimonio
FROM 
    Proprietario p
JOIN 
    Proprietario_Apartamento pa ON p.id = pa.proprietario_id
JOIN 
    Apartamento a ON pa.apartamento_id = a.id
WHERE 
    a.condominio_id IN (1, 2)
GROUP BY 
    p.id
ORDER BY 
    p.nome ASC;
    
    SELECT * FROM Apartamento;
    
    SELECT * FROM Proprietario_Apartamento;
    
    SELECT * FROM Condominio;