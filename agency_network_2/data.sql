INSERT INTO agency VALUES
    (94, 'France', 'Le Kremlin-Bicêtre', 'Bel Horizon', 'www.anas-voyages.com', DEFAULT),
    (75, 'France', 'Paris', 'Club Med Voyages', 'agence.clubmed.fr', 3.8),
    (77, 'France', 'Melun', 'TUI Agence Melun', 'www.tui.fr', 2.5);

INSERT INTO agency (code, country, city, name, ratings) VALUES
    (97, 'Guadeloupe', 'Baie Mahault', 'Sunny Caraïbes Voyages', 4.3),
    (101, 'Royaume-Uni', 'Londres', 'STA Travel', 3.3),
    (212, 'Espagne', 'Madrid', 'Caribbee', 5.9),
    (213, 'Espagne', 'Madrid', 'Travel Matters', 6.5);

INSERT INTO employee VALUES
    (DEFAULT, 'Jean', 'Bonneau', 'jean.bonneau@wanadoo.fr', 75),
    (DEFAULT, 'Xavier', 'Loginard', 'login_x@epita.fr', 94),
    (DEFAULT, 'Kévin', 'Draznieks', 'kevindu94@yahoo.fr', 94),
    (DEFAULT, 'Richard', 'Parker', 'tigrou@gmail.com', 77),
    (DEFAULT, 'Mac', 'Donald', 'mcdonalds@gmail.com', 97);

INSERT INTO hotel VALUES
    (DEFAULT, 'IBIS budget', '20 Rue Voltaire, 94270 Le Kremlin-Bicêtre', 120),
    (DEFAULT, 'Hôtel du Centre', '7 Rue Roger Salengro, 94270 Le Kremlin-Bicêtre', 42),
    (DEFAULT, E'Hôtel Restaurant Campanile Porte D\'Italie', '2 Boulevard du Général de Gaulle, 94270 Le Kremlin-Bicêtre', 200),
    (DEFAULT, E'Hôtel Fleur d\'Épée', '49 Route du Bas du Fort, Guadeloupe 97190, Guadeloupe', 211),
    (DEFAULT, 'Hôtel Canella Beach', 'Pointe de la Verdure, Le Gosier 97190', 175),
    (DEFAULT, 'ME Madrid Reina Victoria', 'Plaza de Sta. Ana, 14, 28012 Madrid, Spain', 110),
    (DEFAULT, 'OD Port Portals', 'Av. Tomàs Blanes Tolosa, 4, 07181 Portals Nous, Illes Balears, Spain', 100),
    (DEFAULT, E'Ukrayins\'kyy Palats', E'Central Ave, 57, Mykolaiv, Mykolaivs\'ka oblast, Ukraine, 54000', 60),
    (DEFAULT, 'Hotel Mercure Sochi Centre', 'Ulitsa Ordzhonikidze, 11а, Sochi, Krasnodarskiy kray, Russia, 354000', 142),
    (DEFAULT, 'Inde Hotel Chattarpur', '538 Chandan Hulla, Main, Chhattarpur Ext Rd, Chhattarpur, New Delhi, Delhi 110074, India', 220),
    (DEFAULT, 'Taj Lake Palace', 'Pichola, Udaipur, Rajasthan 313001, India', 150),
    (DEFAULT, 'Club Med', 'La Pointe aux Canonniers, Grand Baie, Pointe aux Canonniers 742CU001, Mauritius', 400),
    (DEFAULT, 'Club Med', 'APT POSTAL 106 HIGUEY, Punta Cana, Dominican Republic', 550),
    (DEFAULT, 'Club Med', 'Tatil Koyu Tekerlektepe Mevkii, 07980 Antalya, Turkey', 405),
    (DEFAULT, 'la résidence du vieux-port', '18 Quai du Port, 13002 Marseille', 120),
    (DEFAULT, 'le Louis', '2 bis Avenue de Paris, 78000 Versailles', 120),
    (DEFAULT, 'Bosquet', '11 Rue Valéry Meunier, 64000 Pau', 134),
    (DEFAULT, E'l\'Oustal', E'9 Place de l\'Église, 19460 Naves', 520),
    (DEFAULT, 'Balladins', '24 Place de la Gare, 59800 Lille', 124),
    (DEFAULT, E'l\'Opéra', '35 Rue Esprit des Lois, 33000 Bordeaux', 240),
    (DEFAULT, 'le Palladia', '271 Avenue de Grande Bretagne, 31300 Toulouse', 40);

INSERT INTO destination VALUES
    ('FR1', 1, 'France', 'Le Kremlin-Bicêtre'),
    ('FR2', 2, 'France', 'Le Kremlin-Bicêtre'),
    ('FR3', 3, 'France', 'Le Kremlin-Bicêtre'),
    ('GP1', 4, 'Guadeloupe', 'Le Gosier'),
    ('GP2', 5, 'Guadeloupe', 'Le Gosier'),
    ('ES1', 6, 'Espagne', 'Madrid'),
    ('ES2', 7, 'Espagne', 'Calvià'),
    ('UA1', 8, 'Ukraine', E'Mykolaivs\'ka oblast'),
    ('RU1', 9, 'Russie', 'Sochi'),
    ('IN1', 10, 'Inde', 'New Delhi'),
    ('IN2', 11, 'Inde', 'Rajasthan'),
    ('MU1', 12, 'Ile Maurice', 'Pointe aux Canonniers'),
    ('DO1', 13, 'République Dominicaine', 'Punta Cana'),
    ('TR1', 14, 'Turquie', 'Antalya'),
    ('FR4', 15, 'France', 'Marseille'),
    ('FR5', 16, 'France', 'Versailles'),
    ('FR6', 17, 'France', 'Pau'),
    ('FR7', 18, 'France', 'Tulle'),
    ('FR8', 19, 'France', 'Lille'),
    ('FR9', 20, 'France', 'Bordeaux');

INSERT INTO customer VALUES
    ('Jean', 'Lopez', 'jean.detesmorts@wanadoo.fr', 'GP1'),
    ('Marc', 'Latour', 'marc.latour@gmail.com', 'ES2'),
    ('Quitterie', 'De Villardière', 'qu1tter1e@gmail.com', 'UA1'),
    ('Quitterie', 'de Villardière', 'qu1tter1e@gmail.com', 'UA1'),
    ('Sam', 'Sam', 'samsam@yahoo.fr', 'RU1'),
    ('Winnie', 'Thepooth', 'winnie.thepooh@hotmail.com', 'ES2'),
    ('Pamela', 'Anderson', 'pamela.anderson@wanadoo.fr', 'GP2'),
    ('Arnaud', 'Gmail', 'arnaud.gmail@wanadoo.fr', 'FR8');

INSERT INTO booking VALUES
    (DEFAULT, '2019-06-15', '2019-06-22', 'MU1', 'Lopez', 2, '2019-02-14 09:43:00', 1),
    (DEFAULT, '2019-08-15', '2019-08-22', 'FR2', 'Latour', 7, '2019-01-10 10:32:10', 2),
    (DEFAULT, '2019-12-22', '2020-01-15', 'IN2', 'De Villardière', 5, '2019-09-01 10:50:11', 3),
    (DEFAULT, '2019-03-09', '2019-03-19', 'IN1', 'Sam', 2, '2018-11-10 16:45:00', 4),
    (DEFAULT, '2019-01-15', '2019-02-14', 'DO1', 'Thepooth', 2, '2018-12-23 08:10:01', 5),
    (DEFAULT, '2019-02-12', '2019-02-27', 'MU1', 'Anderson', 3, '2018-10-17 15:13:27', 1),
    (DEFAULT, '2019-09-09', '2019-09-23', 'TR1', 'de Villardière', 4, '2019-05-14 15:39:19', 2),
    (DEFAULT, '2019-10-01', '2019-10-22', 'TR1', 'Sam', 1, '2019-06-22 11:34:35', 3),
    (DEFAULT, '2019-01-22', '2019-04-22', 'GP1', 'Lopez', 6, '2018-08-17 11:59:59', 4),
    (DEFAULT, '2019-03-15', '2019-04-01', 'ES2', 'Anderson', 5, '2019-02-10 02:46:01', 5);
