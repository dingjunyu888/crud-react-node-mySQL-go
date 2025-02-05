CREATE DATABASE IF NOT EXISTS test;

-- use db test
USE test;

-- create table: book
CREATE TABLE IF NOT EXISTS books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    cover VARCHAR(255),
    price DECIMAL(10, 2) NOT NULL
);

-- insert some data
INSERT INTO books (title, description, cover, price) VALUES
('Ironman', 'This is Ironman', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmj7XKS8uvnPt814M6AlN4ANslfv0vdpjf-jjZKgaRRNND48TY', 10.99),
('Spiderman', 'This is Spiderman', 'https://image.api.playstation.com/vulcan/ap/rnd/202011/0402/C784xeOFo2wViCf4m5bxgoeH.png', 15.99),
('Cars', 'This is Cars', 'https://lumiere-a.akamaihd.net/v1/images/p_cars_19643_4405006d.jpeg', 17.99);