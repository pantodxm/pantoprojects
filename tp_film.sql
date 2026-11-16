CREATE TABLE Coordonnees (
	idCoord INTEGER PRIMARY KEY,
	nomSalle VARCHAR(40),
	Adresse VARCHAR(40),
	Telephone VARCHAR(15));	

CREATE TABLE Film (
	idFilm INTEGER NOT NULL PRIMARY KEY,
	Titre VARCHAR(100),
	nomDirecteur VARCHAR(100),
	anneeNaissance INTEGER);

CREATE TABLE Acteur (
	idActeur INTEGER PRIMARY KEY,
	nomActeur VARCHAR(40),
	anneeNaissance INTEGER,
	idFilm INTEGER,
	CONSTRAINT Acteur_C1 FOREIGN KEY(idFilm) REFERENCES Film(`idFilm`));

CREATE TABLE Seance (
	idSeance INTEGER PRIMARY KEY, 
	idSalle INTEGER,
	idFilm INTEGER,
	Horaire TIME,
	CONSTRAINT Seance_C2 FOREIGN KEY(idFilm) REFERENCES Film(`idFilm`),
	CONSTRAINT Seance_C1 FOREIGN KEY(idSalle) REFERENCES Coordonnees(`idCoord`));

INSERT INTO Coordonnees VALUES (1,'Pathé','Grenoble 21 Boulevard Maréchal Lyautey','08 92 69 66 96');
INSERT INTO Coordonnees VALUES (2,'Le Mèlies','Grenoble 28 Allée Henri Frenay','04 76 47 99 31');
INSERT INTO Coordonnees VALUES (3,'Le Club','Grenoble Rue du Phalanstére 9 B','04 76 87 46 21');
INSERT INTO Coordonnees VALUES (4,'Les 6 Rex','Grenoble 13 Rue Saint-Jacques','04 76 44 06 82');
INSERT INTO Coordonnees VALUES (5,'La Nef','Grenoble 1 Rue Emile Augier','08 92 31 62 05');
INSERT INTO Coordonnees VALUES (6,'Ciné Club de Grenoble','Grenoble 4 Rue Hector Berlioz','04 76 44 70 38');
INSERT INTO Coordonnees VALUES (7,'Juliet Berto','Grenoble Passage Palais de Justice','04 76 00 14 61');
INSERT INTO Film VALUES (1,'Mais qui a tué Harry ?','Hitchcock',1899);
INSERT INTO Film VALUES (2,'Cris et chuchotements','Bergman',1918);
INSERT INTO Film VALUES (3,'Vingt Mille Lieues sous les mers','Fleischer',1916);
INSERT INTO Film VALUES (4,'La grande vadrouille','Oury',1919);
INSERT INTO Film VALUES (5,'Le petit baigneur','Dhéry',1921);
INSERT INTO Film VALUES (6,'La soupe aux choux','Girault',1924);
INSERT INTO Film VALUES (7,'La traversée de Paris','Autant-Lara',1901);
INSERT INTO Film VALUES (8,'La guerre des étoiles épisode IV','Lucas',1944);
INSERT INTO Film VALUES (9,'La mariée était en noir','Truffaut',1932);
INSERT INTO Film VALUES (10,'Le souper','Molinaro',1928);
INSERT INTO Film VALUES (11,'Le crabe tambour','Schoendoerffer',1928);
INSERT INTO Film VALUES (12,'Les dents de la mer','Spielberg',1946);
INSERT INTO Film VALUES (13,'Rencontres du troisième type','Spielberg',1946);
INSERT INTO Film VALUES (14,'Les quatre cents coups','Truffaut',1932);
INSERT INTO Acteur VALUES (1,'Gwenn',1877,1);
INSERT INTO Acteur VALUES (2,'Forsythe',1918,1);
INSERT INTO Acteur VALUES (3,'MacLaine',1934,1);
INSERT INTO Acteur VALUES (4,'Hitchcock',1899,1);
INSERT INTO Acteur VALUES (5,'Andersson',1932,2);
INSERT INTO Acteur VALUES (6,'Sylwan',1940,2);
INSERT INTO Acteur VALUES (7,'Thulin',1926,2);
INSERT INTO Acteur VALUES (8,'Ullman',1938,2);
INSERT INTO Acteur VALUES (9,'Douglas',1916,3);
INSERT INTO Acteur VALUES (10,'Mason',1909,3);
INSERT INTO Acteur VALUES (11,'Lukas',1894,3);
INSERT INTO Acteur VALUES (12,'Lorre',1904,3);
INSERT INTO Acteur VALUES (13,'Wilke',1914,3);
INSERT INTO Acteur VALUES (14,'De Funès',1914,4);
INSERT INTO Acteur VALUES (15,'Bourvil',1917,4);
INSERT INTO Acteur VALUES (16,'Therry-Thomas',1911,4);
INSERT INTO Acteur VALUES (17,'Dhéry',1921,5);
INSERT INTO Acteur VALUES (18,'Brosset',1922,5);
INSERT INTO Acteur VALUES (19,'De Funès',1914,5);
INSERT INTO Acteur VALUES (20,'Legras',1924,5);
INSERT INTO Acteur VALUES (21,'Galabru',1922,5);
INSERT INTO Acteur VALUES (22,'Tornade',1930,5);
INSERT INTO Acteur VALUES (23,'De Funès',1914,6);
INSERT INTO Acteur VALUES (24,'Carmet',1920,6);
INSERT INTO Acteur VALUES (25,'Villeret',1951,6);
INSERT INTO Acteur VALUES (26,'Gabin',1904,7);
INSERT INTO Acteur VALUES (27,'Bourvil',1917,7);
INSERT INTO Acteur VALUES (28,'De Funès',1914,7);
INSERT INTO Acteur VALUES (29,'Batti',1921,7);
INSERT INTO Acteur VALUES (30,'Wolff',1909,7);
INSERT INTO Acteur VALUES (31,'Hamil',1951,8);
INSERT INTO Acteur VALUES (32,'Fisher',1956,8);
INSERT INTO Acteur VALUES (33,'Ford',1942,8);
INSERT INTO Acteur VALUES (34,'Cushing',1913,8);
INSERT INTO Acteur VALUES (35,'Guinness',1914,8);
INSERT INTO Acteur VALUES (36,'Moreau',1928,9);
INSERT INTO Acteur VALUES (37,'Bouquet',1925,9);
INSERT INTO Acteur VALUES (38,'Brialy',1933,9);
INSERT INTO Acteur VALUES (39,'Denner',1926,9);
INSERT INTO Acteur VALUES (40,'Lonsdale',1931,9);
INSERT INTO Acteur VALUES (41,'Rich',1929,9);
INSERT INTO Acteur VALUES (42,'Rich',1929,10);
INSERT INTO Acteur VALUES (43,'Brasseur',1936,10);
INSERT INTO Acteur VALUES (44,'Holgado',1944,10);
INSERT INTO Acteur VALUES (45,'Collette',1956,10);
INSERT INTO Acteur VALUES (46,'Rochefort',1930,11);
INSERT INTO Acteur VALUES (47,'Perrin',1941,11);
INSERT INTO Acteur VALUES (48,'Rich',1929,11);
INSERT INTO Acteur VALUES (49,'Dufilho',1914,11);
INSERT INTO Acteur VALUES (50,'Scheider',1932,12);
INSERT INTO Acteur VALUES (51,'Gottlieb',1938,12);
INSERT INTO Acteur VALUES (52,'Dreyfuss',1947,12);
INSERT INTO Acteur VALUES (53,'Dreyfuss',1947,13);
INSERT INTO Acteur VALUES (54,'Truffaut',1932,13);
INSERT INTO Acteur VALUES (55,'Garr',1944,13);
INSERT INTO Acteur VALUES (56,'Dillon',1939,13);
INSERT INTO Acteur VALUES (57,'Balaban',1945,13);
INSERT INTO Acteur VALUES (58,'Léaud',1944,14);
INSERT INTO Acteur VALUES (59,'Maurrier',1929,14);
INSERT INTO Acteur VALUES (60,'Rémy',1915,14);
INSERT INTO Acteur VALUES (61,'Decomble',1910,14);
INSERT INTO Seance VALUES (1,1,1,'18:30:00');
INSERT INTO Seance VALUES (2,1,2,'21:30:00');
INSERT INTO Seance VALUES (3,1,3,'19:00:00');
INSERT INTO Seance VALUES (4,1,10,'18:00:00');
INSERT INTO Seance VALUES (5,1,8,'22:00:00');
INSERT INTO Seance VALUES (6,2,2,'18:00:00');
INSERT INTO Seance VALUES (7,2,3,'20:00:00');
INSERT INTO Seance VALUES (8,2,11,'21:30:00');
INSERT INTO Seance VALUES (9,2,13,'19:00:00');
INSERT INTO Seance VALUES (10,2,8,'22:00:00');
INSERT INTO Seance VALUES (11,3,2,'18:15:00');
INSERT INTO Seance VALUES (12,3,11,'20:00:00');
INSERT INTO Seance VALUES (13,3,14,'19:00:00');
INSERT INTO Seance VALUES (14,4,1,'18:00:00');
INSERT INTO Seance VALUES (15,4,3,'18:30:00');
INSERT INTO Seance VALUES (16,4,10,'22:00:00');
INSERT INTO Seance VALUES (17,5,1,'21:30:00');
INSERT INTO Seance VALUES (18,5,4,'18:00:00');
INSERT INTO Seance VALUES (19,5,9,'20:00:00');
INSERT INTO Seance VALUES (20,6,2,'21:00:00');
INSERT INTO Seance VALUES (21,6,4,'17:00:00');
INSERT INTO Seance VALUES (22,7,13,'21:00:00');