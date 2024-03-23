-- Active: 1710414117187@@127.0.0.1@3306@phpmyadmin
CREATE DATABASE Livraison;
USE Livraison;

CREATE TABLE client (
    Id_client SMALLINT NOT NULL AUTO_INCREMENT,
    nom_client VARCHAR(255),
    prenom_client VARCHAR(255),
    adresse_client VARCHAR(255),
    telephone_client INT,
    email_client VARCHAR(255),
    PRIMARY KEY(Id_client)
);

CREATE TABLE Produit(
    Id_produit SMALLINT NOT NULL AUTO_INCREMENT,
    nom_produit VARCHAR(255),
    description VARCHAR(255), 
    prix INT,
    PRIMARY KEY(Id_produit)
);

CREATE TABLE livreur(
    Id_livreur SMALLINT NOT NULL AUTO_INCREMENT,
    nom_livreur VARCHAR(255),
    prenom_livreur VARCHAR(255),
    adress_livreur VARCHAR(255),
    telephone_livreur INT,
    email_livreur VARCHAR(255),
    PRIMARY KEY(Id_livreur)
);

CREATE TABLE commande(
    Id_commande SMALLINT NOT NULL AUTO_INCREMENT,
    date_commande DATE,
    date_livraison DATE,
    quantite INT,  
    adresse_livraison VARCHAR(255),  
    Id_client SMALLINT,
    Id_livreur SMALLINT,
    PRIMARY KEY(Id_commande),
    FOREIGN KEY(Id_client) REFERENCES client(Id_client),
    FOREIGN KEY(Id_livreur) REFERENCES livreur(Id_livreur)
);
 
CREATE TABLE contenir
    Id_commande SMALLINT NOT NULL,
    Id_produit SMALLINT NOT NULL,
    PRIMARY KEY (Id_commande, Id_produit),
    FOREIGN KEY(Id_commande) REFERENCES commande(Id_commande), 
    FOREIGN KEY(Id_produit) REFERENCES Produit(Id_produit) 
);