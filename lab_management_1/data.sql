INSERT INTO can VALUES ('Perrier', 40, 250, DEFAULT);
INSERT INTO can VALUES ('Coca-Cola', 200, 330, DEFAULT);
INSERT INTO can VALUES ('Redbull', 50, 350, 1.70);
INSERT INTO can VALUES ('Monster', 30, 500, 1.40);
INSERT INTO can VALUES ('Oasis', 100, 330, DEFAULT);
INSERT INTO can VALUES ('Canada Dry', 10, 330, 0.85);
INSERT INTO can VALUES ('Orangina', 125, 330, DEFAULT);
INSERT INTO can VALUES ('Fanta', 130, 330, DEFAULT);
INSERT INTO can VALUES ('CandyUp', 100, 330, 0.50);


INSERT INTO assistant VALUES ('hoppy', 'Hoppy', 'Cat', 'ronron');
INSERT INTO assistant VALUES ('login_x', 'Xavier', 'Loginard', 'thelegend27');
INSERT INTO assistant VALUES ('julien.clement', 'Julien', 'Clément', 'deLaConfJulien');
INSERT INTO assistant VALUES ('helene.chelin', 'Hélène', 'Chélin', ':peeposip:');
INSERT INTO assistant VALUES ('nicolas.guerguadj', 'Nicolas', 'Guerguadj', 'xXperfctProgXx');
INSERT INTO assistant VALUES ('thomas.joubert', 'Thomas', 'Joubert', 'chef');


INSERT INTO transaction(assistant, can, timestamp)  VALUES ('julien.clement', 'Oasis', '2021-12-14 17:56:45');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('julien.clement', 'Orangina', '2021-12-16 18:42:01');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('julien.clement', 'Perrier', '2021-12-21 14:16:00');

INSERT INTO transaction(assistant, can, timestamp)  VALUES ('helene.chelin', 'CandyUp', '2021-12-17 14:32:10');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('helene.chelin', 'CandyUp', '2021-12-19 12:23:23');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('helene.chelin', 'CandyUp', '2021-12-22 19:35:48');

INSERT INTO transaction(assistant, can, timestamp)  VALUES ('nicolas.guerguadj', 'Redbull', '2021-12-18 23:34:21');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('nicolas.guerguadj', 'Fanta', '2021-12-23 12:24:07');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('nicolas.guerguadj', 'Coca-Cola', '2021-12-25 13:41:59');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('nicolas.guerguadj', 'Orangina', '2021-12-25 13:41:59');

INSERT INTO transaction(assistant, can, timestamp)  VALUES ('thomas.joubert', 'Coca-Cola', '2021-12-20 11:53:27');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('thomas.joubert', 'Canada Dry', '2021-12-25 13:41:00');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('thomas.joubert', 'Coca-Cola', '2021-12-25 13:46:00');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('thomas.joubert', 'Canada Dry', '2021-12-25 13:51:00');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('thomas.joubert', 'Coca-Cola', '2021-12-25 13:56:00');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('thomas.joubert', 'Canada Dry', '2021-12-25 14:01:00');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('thomas.joubert', 'Coca-Cola', '2021-12-25 14:06:00');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('thomas.joubert', 'Canada Dry', '2021-12-25 14:11:00');
