INSERT INTO char_profile VALUES
	(1, 'Guest'),
	(2, 'Employee'),
	(3, 'Detective'),
	(4, 'Police Officer');
 
INSERT INTO specie VALUES
    (1, 'Jaguar'),
    (2, 'Blue macaw'),
    (3, 'Anteater flag'),
    (4, 'Toucan'),
    (5, 'Ocelot'),
    (6, 'Golden lion tamarin'),
    (7, 'Tapirus'),
    (8, 'Parrot'),
    (9, 'Piranha'),
    (10, 'Red-footed tortoise'),
    (11, 'Capybara'),
    (12, 'Marmoset'),
    (13, 'Collared anteater'),
    (14, 'Cougar'),
    (15, 'Black caiman'),
    (16, 'Amazon river dolphin'),
    (17, 'Giant armadillo'),
    (18, 'Harpy eagle'),
    (19, 'Brocket deer'),
    (20, 'Three-banded armadillo'),
    (21, 'Giant toad'),
    (22, 'Black-tufted marmoset'),
    (23, 'Coral snake'),
    (24, 'Maned wolf'),
    (25, 'Sunbittern'),
    (26, 'Sloth'),
    (27, 'Bush dog'),
    (28, 'Manatee'),
    (29, 'Caracara'),
    (30, 'Rufous-bellied thrush'),
    (31, 'Forest rat'),
    (32, 'Arapaima'),
	(33, 'Bull'),
    (34, 'Panda'), #ANDRÉ
    (35, 'Guinea pig'),#DUDU
    (36, 'Seal'),#ALFAYA
    (37, 'Koala'),#RODRIGO
    (38, 'Owl');#JOHN

INSERT INTO magic VALUES
	(1, 'Air'),
    (2, 'Water'),
    (3, 'Earth'),
    (4, 'Fire'),
    (5, 'Darkness'),
    (6, 'Florest'),
    (7, 'Light'),
    (8, 'Alchemy'),
    (9, 'Ice');

INSERT INTO title VALUES
	(1, 'Baron'),
    (2, 'Viscount'),
    (3, 'Royal family'),
    (4, 'Duke'),
    (5, 'Marquess'),
    (6, 'Count'),
    (7, 'Baronet'),
    (8, 'Knight'),
    (9, 'Ambassador'),
	(10, 'None');
    
INSERT INTO region VALUES
	(1, 'North'),
    (2, 'South'),
    (3, 'East'),
    (4, 'West'),
    (5, 'Center');
    
INSERT INTO afiliation VALUES
	(1, 'South Pirates'), ## ATENÇÃO
    (2, 'West Alchemists'),
    (3, 'Serpentium followers'), #LESTE
    (4, 'Pandora Kingdom'), #CENTRO
	(5, 'Amassunu protectors'), #NORTE
	(6, 'North wanderers'),
    (7, 'Secret society'),
	(8, 'None');

#id, name, ppf, birth, afiliation, specie, title, magic, region, profile
INSERT INTO character_info VALUES
	(1, 'Isabel Montenegro', '49276912933', '1953-12-09', 1, 1, 9, 9, 2, 1),
    (2, 'Márcio Rene Brandão Soussa', '98164621632', '1965-07-11', 6, 18, 6, 1, 5, 1),
	(3, 'Thomas Jerry', '13984141544', '1996-08-21', 5, 31, 10, 6, 1, 1),
	(4, 'Ferdinando González', '74859645859', '1972-05-21', 4, 33, 7, 3, 5, 1),
	(5, 'Charles Bacon', '95753813137', '1995-11-30', 6, 27, 10, 2, 1, 2),
	(6, 'Iracebeth Queen', '65132984653', '1956-02-19', 4, 23, 3, 9, 5, 1),
	(7, 'Arsene Lupin', '68348465112', '1980-09-09', 3, 15, 1, 7, 3, 1),
	(8, 'Roberto D. Xavier', '54127896156', '1950-03-14', 1, 18, 4, 7, 2, 1),
    (9, 'Eduardo Fiscina Menezes Moraes', '14568974563', '2002-09-01', 2, 35, 10, 4, 2, 2),
    (10, 'John Vitor Nunes de Carvalho', '963852456459','2002-10-08', 7, 38, 10, 5, 1, 1),
    (11, 'André Lucas do Nascimento dos Santos', '36521986457', '2003-02-06', 7, 34, 10, 3, 3, 3),
    (12, 'Iago Santana Alfaya', '85245696341','2002-05-10', 7, 36, 10, 9, 4, 2),
    (13, 'Rodrio de Jesus Macêdo', '556321576849', '1999-07-12', 7, 37, 10, 6, 5, 2),
    (14, 'Cleber Arado Montez', '85245693178', '1970-05-20', 4, 24, 5, 5, 3, 1);

INSERT INTO room VALUES
    (1, 'Entry hall', 20),
    (2, 'Living room', 25),
    (3, 'Dining room', 18),
    (4, 'Kitchen', 10),
    (5, 'Office', 8),
    (6, 'Library', 30),
    (7, 'Music room', 15),
    (8, 'Game room', 20),
    (9, 'Ballroom', 100),
    (10, 'Master bedroom', 2),
    (11, 'Guest bedroom', 4),
    (12, 'Main bathroom', 1),
    (13, 'Guest bathroom', 1),
    (14, 'Attic', 10),
    (15, 'Winter garden', 15),
    (16, 'Chapel', 50);

INSERT INTO item VALUES
	(1, 'Flying Carpets', 1),
	(2, 'Mirror of Forgetfulness', 1),
	(3, 'Lamp of Illusion', 1),
	(4, 'Dream Sofa', 2),
	(5, 'Enchanted Armchairs', 2),
	(6, 'Transformation Canvas', 2),
	(7, 'Banquet Table', 3),
	(8, 'Poisoned Goblets', 3),
	(9, 'Hypnotic Cutlery', 3),
	(10, 'Wish Pot', 4),
	(11, 'Fate\'s Knife', 4),
	(12, 'Petrifying Frying Pan', 4),
	(13, 'Creativity Pen', 5),
	(14, 'Book of Forbidden Spells', 5),
	(15, 'Chair of Destruction', 5),
	(16, 'Scroll of Wisdom', 6),
	(17, 'Book of Shadows', 6),
	(18, 'Trap Bookshelf', 6),
	(19, 'Enchanting Flute', 7),
	(20, 'Thunder Trumpet', 7),
	(21, 'Explosive Drums', 7),
	(22, 'Illusion Board', 8),
	(23, 'Poisoned Darts', 8),
	(24, 'Cursed Deck of Cards', 8),
	(25, 'Hypnotic Disco Ball', 9),
	(26, 'Poison Cocktail', 9),
	(27, 'Magic Fireworks', 9),
	(28, 'Bed of Eternal Rest', 10),
	(29, 'Mirror of Lethal Illusion', 10),
	(30, 'Lamp of Darkness', 10),
	(31, 'Pillow of Deep Sleep', 11),
	(32, 'Assassin Flying Carpet', 11),
	(33, 'Uncontrollable Time Clock', 11),
	(34, 'Heated Bath Mat', 12),
	(35, 'Explosive Soap', 12),
	(36, 'Toothbrush of Misfortune', 12),
	(37, 'Transforming Bath Towel', 13),
	(38, 'Illusory Drowning Bathtub', 13),
	(39, 'Explosive Toilet Bowl', 13),
	(40, 'Chest of Secrets', 14),
	(41, 'Cursed Spiders', 14),
	(42, 'Destruction Flying Broom', 14),
	(43, 'Singing Plants', 15),
	(44, 'Sleeping Beauty Rose', 15),
	(45, 'Eternal Ice Statue', 15),
	(46, 'Enchantment Candles', 16),
	(47, 'Holy Book of Condemnation', 16),
	(48, 'Organ of Lost Souls', 16);

INSERT INTO mystery_event VALUES
	(1, 'CASAMENTO');

INSERT INTO programming VALUES
	(1, 'Bride\'s Preparation', 10, 1, '09:00', '11:40'),
	(2, 'Groom\'s Preparation', 10, 1, '12:00', '12:30'),
	(3, 'Lunch', 3, 1, '13:00', '14:00'),
	(4, 'Wedding Ceremony', 16, 1, '15:00', '16:00'),
	(5, 'Bride and Groom Photo Session', 15, 1, '16:00', '16:30'),
	(6, 'Wedding Dinner', 3, 1, '16:30', '17:30'),
	(7, 'Wedding Toast', 3, 1, '17:30', '18:00'),
	(9, 'Cake Cutting', 9, 1, '17:30', '18:00'),
	(10, 'Best Man Speech', 9, 1, '18:00', '18:30'),
	(11, 'First Dance', 9, 1, '18:00', '19:00'),
	(12, 'Live Band', 9, 1, '19:00', '20:00'),
	(13, 'Wedding Dance', 9, 1, '20:00', '21:00'),
	(14, 'Bouquet Toss', 9, 1, '21:00', '21:30'),
	(15, 'Wedding Reception', 16, 1, '21:30', '00:00'),
	(16, 'Gift Exchange', 9, 1, '00:00', '01:30'),
	(17, 'Farewell of the Newlyweds', 1, 1, '01:40', '02:30');

INSERT INTO employee_function VALUES
	(1, 'Butler'),
	(2, 'Event Planner'),
	(3, 'Security Guard'),
	(4, 'Florist'),
	(5, 'Stylist'),
	(6, 'Musician'),
	(7, 'Photographer'),
	(8, 'Videographer'),
	(9, 'Head Chef'),
	(10, 'Waiter'),
	(11, 'Driver'),
	(12, 'Event Coordinator'),
	(13, 'Maître d\'Hôtel'),
	(14, 'Bartender'),
	(15, 'Housekeeper'),
	(16, 'Server'),
	(17, 'Baker'),
	(18, 'Pastry Chef'),
	(19, 'Receptionist'),
	(20, 'Cleaning Staff');

INSERT INTO invite VALUES
    (1, 1, 10, 1),
    (2, 1, 14, 1),
    (3, 1, 8, 1),
    (4, 1, 4, 1),
    (5, 1, 2, 1);

INSERT INTO contract VALUES
    (1, 1, 9, 11), #DUDU
    (2, 1, 13, 20), #RODRIGO
    (3, 1, 12, 10); #ALFAYA

INSERT INTO skin VALUES
    (1, 'Yellow'),#ONÇA, JAGUATIRICA, JABUTI, COBRA-CORAL, PAVÃOZINHO-DO-PARÁ
    (2, 'Black'),#ONÇA, TUCANO, JAGUATIRICA,CARCARÁ, JABUTI, TAMANDUÁ-MIRIM, GAVIÃO-REAL, TATU-BOLA, COBRA-CORAL, HARPIA, PIRARUCU, TOURO, PANDA
    (3, 'Blue'), #ARARA-AZUL
    (4, 'Golden'), #MICO-LEÃO-DOURADO
    (5, 'Brown'),#ANTA,  CAPIVARA, SUÇUARANA, TATU CANASTRA, VEADO-CATINGUEIRO, SAPO-CURURU, LOBO-GUARÁ, PAVÃOZINHO-DO-PARÁ, CACHORRO-VINAGRE, SABIÁ-LARANJEIRA, PORQUIIENHO-DA-INDIA
    (6, 'Green'),#PAPAGAIO-VERDADEIRO, JACARÉ-AÇU
    (7, 'Gray'), #PIRANHA, SAGUI,MICO-ESTRELA, BICHO-PREGUIÇA, PEIXE-BOI, RATO-DO-MATO, FOCA, COALA, CORUJA,
    (8, 'Orange'), #PIRANHA
    (9, 'White'), #TAMANDUÁ-MIRIM, GAVIÃO-REAL, CARCARÁ, HARPIA, PANDA, PORQUINHO DA INDIA
    (10, 'Pink'), #BOTO COR DE ROSA
    (11, 'Red'); #COBRA CORA, PAVÃOZINHO-DO-PARÁ

#ID, PERSONAGEM, PELO, OLHOS, ALTURA
INSERT INTO morphology VALUES
    (1, 9, 2, 'VERDE',1 );

INSERT INTO hint VALUES
    (1, 'LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISCING ELIT.'),
    (2, 'DUIS FINIBUS TURPIS URNA, NON AUCTOR DIAM TEMPOR AT.'),
    (3, 'MAECENAS AC ELEIFEND LEO, VEHICULA TINCIDUNT AUGUE.'),
    (4, 'AENEAN VULPUTATE CONSECTETUR MASSA IN EGESTAS.'),
    (5, 'ETIAM COMMODO ORCI QUIS MOLLIS TRISTIQUE.'),
    (6, 'DUIS IN LACINIA NULLA. INTEGER SED ELEIFEND TURPIS.'),
    (7, 'DONEC UT PELLENTESQUE ENIM. ALIQUAM ERAT VOLUTPAT.'),
    (8, 'MAECENAS NEC MAXIMUS TELLUS, ID VULPUTATE MASSA.'),
    (9, 'NUNC IMPERDIET DOLOR VITAE LUCTUS CONSECTETUR.'),
    (10, 'NULLAM ID MASSA BIBENDUM, ULTRICIES DIAM ET, RHONCUS AUGUE.'),
    (11, 'MAURIS LOREM URNA, DAPIBUS UT FELIS ID, DICTUM EGESTAS MASSA.'),
    (12, 'MAURIS PLACERAT NEC IPSUM NON FAUCIBUS.'),
    (13, 'MAURIS FEUGIAT SAPIEN NON FELIS EGESTAS TEMPUS.'),
    (14, 'IN VEL RHONCUS NISI. NUNC SODALES, IPSUM QUIS ULTRICIES LOBORTIS,'),
    (15, 'TURPIS TELLUS TRISTIQUE FELIS, QUIS ORNARE LACUS TELLUS EGET LEO.'),
    (16, 'IN VOLUTPAT MI VITAE PULVINAR SAGITTIS.'),
    (17, 'IN HAC HABITASSE PLATEA DICTUMST.'),
    (18, 'SED FRINGILLA, ANTE SIT AMET FAUCIBUS FINIBUS, TORTOR ORCI SODALES METUS,'),
    (19, 'QUIS VIVERRA LACUS TELLUS ID TURPIS. NULLAM HENDRERIT LOBORTIS TINCIDUNT.'),
    (20, 'PRAESENT SCELERISQUE TELLUS SIT AMET MAGNA INTERDUM, EGET CONSECTETUR SAPIEN PORTA.'),
    (21, 'CRAS PORTTITOR EGESTAS IPSUM NON MATTIS. NAM VITAE DOLOR HENDRERIT,'),
    (22, 'CURSUS FELIS VITAE, LACINIA IPSUM.'),
    (23, 'VESTIBULUM ANTE IPSUM PRIMIS IN FAUCIBUS ORCI LUCTUS ET ULTRICES POSUERE CUBILIA CURAE;'),
    (24, 'VISHHH... This guy is as high as a kite | HARLEY: But look, looks like..., over there in the department, they found something near the body'),#HARLEY
    (25, 'SUSPENDISSE AC URNA SED SEM ELEMENTUM VIVERRA PLACERAT IN URNA.'),
    (26, 'SED ELIT AUGUE, EFFICITUR ET CONDIMENTUM EGET, LUCTUS EGET ERAT.'),
    (27, 'AENEAN MALESUADA ACCUMSAN SEM. NULLAM AT NIBH SEMPER,'),
    (28, 'CONDIMENTUM ELIT PELLENTESQUE, LAOREET LIBERO.'),
    (29, 'QUISQUE NON SODALES MI, TEMPUS ORNARE ARCU.'),
    (30, 'IN QUIS CONVALLIS RISUS. IN EUISMOD EROS FINIBUS METUS PELLENTESQUE,'),
    (31, 'NEC GRAVIDA VELIT RHONCUS. ALIQUAM IN TINCIDUNT NULLA, NEC CONSECTETUR ELIT.'),
    (32, 'QUISQUE VEHICULA NON MAURIS ET EUISMOD.'),
    (33, 'SED BLANDIT PELLENTESQUE EST, EGET FERMENTUM LIGULA SOLLICITUDIN EGET.'),
    (34, 'DONEC TRISTIQUE EGESTAS DIAM SIT AMET MALESUADA.'),
    (35, 'PRAESENT VITAE VOLUTPAT PURUS, AT PORTA MAGNA.'),
    (36, 'CRAS VENENATIS LOBORTIS DAPIBUS. MAURIS AT ALIQUAM ORCI.'),
    (37, 'NAM SODALES NISL AT EST FINIBUS PORTA. VIVAMUS SED SOLLICITUDIN TURPIS.'),
    (38, 'NULLA SEMPER LOBORTIS QUAM, QUIS HENDRERIT MASSA FAUCIBUS ALIQUET.'),
    (39, 'CURABITUR VARIUS ARCU IACULIS IPSUM LUCTUS, VEL PULVINAR NUNC SCELERISQUE.'),
    (40, 'Congratulations!!! You have reached the checkpoint'),##HARLEY
    (41, 'PELLENTESQUE FAUCIBUS, QUAM AT CONDIMENTUM SEMPER, EX METUS CONSEQUAT QUAM,'),
    (42, 'AC LOBORTIS MAGNA MI SIT AMET EROS. VIVAMUS NON NEQUE FEUGIAT,'),
    (43, 'LUCTUS MAURIS IN, FINIBUS NIBH. INTEGER AC BIBENDUM EROS.'),
    (44, 'INTEGER DOLOR DOLOR, PORTA'),
    (45, 'SOLLICITUDIN MOLESTIE AC, SUSCIPIT NON DOLOR.'),
    (46, 'PHASELLUS AUCTOR MOLLIS RISUS, VEL EFFICITUR DOLOR POSUERE A.'),
    (47, 'PROIN ET ERAT UT URNA CONSECTETUR VULPUTATE AC VEL METUS.'),
    (48, 'CRAS EFFICITUR DICTUM IMPERDIET. NULLAM IMPERDIET EX ELIT,'),
    (49, 'EGET ALIQUAM ELIT ACCUMSAN IN.'),
    (50, 'CRAS A ENIM ET IPSUM LACINIA VULPUTATE. MAURIS TINCIDUNT VEL EST NON PLACERAT.'),
    (51, 'SED IMPERDIET DUI AT ANTE ULTRICIES PRETIUM. QUISQUE COMMODO TORTOR A PELLENTESQUE VARIUS.'),
    (52, 'PRAESENT IN LAOREET ERAT. DUIS GRAVIDA VELIT QUIS NEQUE POSUERE HENDRERIT AT A NUNC.'),
    (53, 'PROIN SIT AMET CONSECTETUR NISL. PHASELLUS CONDIMENTUM ALIQUET SEM, SIT AMET ORNARE DIAM SAGITTIS ET.'),
    (54, 'PELLENTESQUE HABITANT MORBI TRISTIQUE SENECTUS ET NETUS ET MALESUADA FAMES AC TURPIS EGESTAS.'),
    (55, 'QUISQUE ID VENENATIS ANTE, A BIBENDUM NISL. SUSPENDISSE VESTIBULUM IN TURPIS EU'),
    (56, 'MAECENAS AC ELEIFEND LEO, VEHICULA TINCIDUNT AUGUE.'),
    (57, 'AENEAN VULPUTATE CONSECTETUR MASSA IN EGESTAS.'),
    (58, 'ETIAM COMMODO ORCI QUIS MOLLIS TRISTIQUE.'),
    (59, 'DUIS IN LACINIA NULLA. INTEGER SED ELEIFEND TURPIS.'),
    (60, 'DONEC UT PELLENTESQUE ENIM. ALIQUAM ERAT VOLUTPAT.'),
    (61, 'MAECENAS NEC MAXIMUS TELLUS, ID VULPUTATE MASSA.'),
    (62, 'NUNC IMPERDIET DOLOR VITAE LUCTUS CONSECTETUR.'),
    (63, 'NULLAM ID MASSA BIBENDUM, ULTRICIES DIAM ET, RHONCUS AUGUE.'),
    (64, 'MAURIS LOREM URNA, DAPIBUS UT FELIS ID, DICTUM EGESTAS MASSA.'),
    (65, 'MAURIS PLACERAT NEC IPSUM NON FAUCIBUS.'),
    (66, 'MAURIS FEUGIAT SAPIEN NON FELIS EGESTAS TEMPUS.'),
    (67, 'IN VEL RHONCUS NISI. NUNC SODALES, IPSUM QUIS ULTRICIES LOBORTIS,'),
    (68, 'TURPIS TELLUS TRISTIQUE FELIS, QUIS ORNARE LACUS TELLUS EGET LEO.'),
    (69, 'IN VOLUTPAT MI VITAE PULVINAR SAGITTIS.'),
    (70, 'IN HAC HABITASSE PLATEA DICTUMST.'),
    (71, 'SED FRINGILLA, ANTE SIT AMET FAUCIBUS FINIBUS, TORTOR ORCI SODALES METUS,'),
    (72, 'QUIS VIVERRA LACUS TELLUS ID TURPIS. NULLAM HENDRERIT LOBORTIS TINCIDUNT.'),
    (73, 'PRAESENT SCELERISQUE TELLUS SIT AMET MAGNA INTERDUM, EGET CONSECTETUR SAPIEN PORTA.'),
    (74, 'CRAS PORTTITOR EGESTAS IPSUM NON MATTIS. NAM VITAE DOLOR HENDRERIT,'),
    (75, 'CURSUS FELIS VITAE, LACINIA IPSUM.'),
    (76, 'VESTIBULUM ANTE IPSUM PRIMIS IN FAUCIBUS ORCI LUCTUS ET ULTRICES POSUERE CUBILIA CURAE;'),
    (77, 'LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISCING ELIT.'),
    (78, 'DUIS FINIBUS TURPIS URNA, NON AUCTOR DIAM TEMPOR AT.'),
    (79, 'MAECENAS AC ELEIFEND LEO, VEHICULA TINCIDUNT AUGUE.'),
    (80, 'AENEAN VULPUTATE CONSECTETUR MASSA IN EGESTAS.'),
    (81, 'ETIAM COMMODO ORCI QUIS MOLLIS TRISTIQUE.'),
    (82, 'DUIS IN LACINIA NULLA. INTEGER SED ELEIFEND TURPIS.'),
    (83, 'DONEC UT PELLENTESQUE ENIM. ALIQUAM ERAT VOLUTPAT.'),
    (84, 'MAECENAS NEC MAXIMUS TELLUS, ID VULPUTATE MASSA.'),
    (85, 'NUNC IMPERDIET DOLOR VITAE LUCTUS CONSECTETUR.'),
    (86, 'NULLAM ID MASSA BIBENDUM, ULTRICIES DIAM ET, RHONCUS AUGUE.'),
    (87, 'MAURIS LOREM URNA, DAPIBUS UT FELIS ID, DICTUM EGESTAS MASSA.'),
    (88, 'MAURIS PLACERAT NEC IPSUM NON FAUCIBUS.'),
    (89, 'MAURIS FEUGIAT SAPIEN NON FELIS EGESTAS TEMPUS.'),
    (90, 'IN VEL RHONCUS NISI. NUNC SODALES, IPSUM QUIS ULTRICIES LOBORTIS,'),
    (91, 'TURPIS TELLUS TRISTIQUE FELIS, QUIS ORNARE LACUS TELLUS EGET LEO.'),
    (92, 'IN VOLUTPAT MI VITAE PULVINAR SAGITTIS.'),
    (93, 'IN HAC HABITASSE PLATEA DICTUMST.'),
    (94, 'SED FRINGILLA, ANTE SIT AMET FAUCIBUS FINIBUS, TORTOR ORCI SODALES METUS,'),
    (95, 'QUIS VIVERRA LACUS TELLUS ID TURPIS. NULLAM HENDRERIT LOBORTIS TINCIDUNT.'),
    (96, 'PRAESENT SCELERISQUE TELLUS SIT AMET MAGNA INTERDUM, EGET CONSECTETUR SAPIEN PORTA.'),
    (97, 'CRAS PORTTITOR EGESTAS IPSUM NON MATTIS. NAM VITAE DOLOR HENDRERIT,'),
    (98, 'CURSUS FELIS VITAE, LACINIA IPSUM.'),
    (99, 'VESTIBULUM ANTE IPSUM PRIMIS IN FAUCIBUS ORCI LUCTUS ET ULTRICES POSUERE CUBILIA CURAE;'),
    (100, 'IN VOLUTPAT MI VITAE PULVINAR SAGITTIS.');

INSERT INTO testimony VALUES
    (1, 2, 'I was flying after catching the bouquet. I\'m truly amazed by such a powerful woman. How strange! Anyway, I don\'t know much, but I saw... He seems very troubled, like he saw something...'),
    (2, 3, 'I didn\'t see anything, I swear!!! I was just going for a walk when I heard something behind the bushes. Being curious, I took a peek. It sounded like the ambassador shouting at a male as if she were scared. She was telling him to stay away, but I didn\'t hear anyone else... Then I heard a roar and a distant scream. That\'s when I ran away.'),
    (3, 14, 'I didn\'t see much. But come to think of it... Ferdinand Gonzalez hurriedly passed by there, half an hour before the alleged time of the murder you\'re talking about. But it was really quick, not even enough time to talk.'),
    (4, 4, 'By the snake Norato, what\'s happening? Who are you? Please, don\'t hurt me!!!! Help... Don\'t kill me, monster. Someone save meeeee | Hint: 24'),
    (5, 11, 'I was scouring the area and found this letter. It seems to be a love letter... and there\'s a initials of your lover\'s name: "F.G." And there\'s also this strange lily accompanying it, quite fragrant by the way... ...ARGHH... ...ARRRGH... What? No!!! Please stay away!!! Don\'t kill me, you monsters. Nooooooo!! (He goes into a frenzy, slips, and hits his head, subsequently passing away) | Hint: 40'),
    (6, 1, 'I don\'t know what happened. One minute she\'s here, being rude and grumpy... and then... poof. This must be something related to politics. I heard she had connections with...');


##___________________________________________________________________________________________________________
## 							 INSERT LIXO
DELIMITER //

CREATE FUNCTION generate_ppf() RETURNS CHAR(11) READS SQL DATA
BEGIN
    DECLARE ppf CHAR(11);
    DECLARE validator_digits CHAR(2);
    DECLARE sum_digits_1 INT;
    DECLARE sum_digits_2 INT;
    DECLARE validator_digit_1 INT;
    DECLARE validator_digit_2 INT;

    SET ppf = '';
    SET @I = 1;

    WHILE @I <= 9 DO
        SET ppf = CONCAT(ppf, FLOOR(RAND() * 9));
        SET @I = @I + 1;
    END WHILE;

    SET sum_digits_1 = (
        SELECT
            (SUBSTRING(ppf, 1, 1) * 10) +
            (SUBSTRING(ppf, 2, 1) * 9) +
            (SUBSTRING(ppf, 3, 1) * 8) +
            (SUBSTRING(ppf, 4, 1) * 7) +
            (SUBSTRING(ppf, 5, 1) * 6) +
            (SUBSTRING(ppf, 6, 1) * 5) +
            (SUBSTRING(ppf, 7, 1) * 4) +
            (SUBSTRING(ppf, 8, 1) * 3) +
            (SUBSTRING(ppf, 9, 1) * 2)
    ) % 11;

    IF sum_digits_1 < 2 THEN
        SET validator_digit_1 = sum_digits_1;
    ELSE
        SET validator_digit_1 = 11 - sum_digits_1;
    END IF;

    SET sum_digits_2 = (
        SELECT
            (SUBSTRING(ppf, 1, 1) * 11) +
            (SUBSTRING(ppf, 2, 1) * 10) +
            (SUBSTRING(ppf, 3, 1) * 9) +
            (SUBSTRING(ppf, 4, 1) * 8) +
            (SUBSTRING(ppf, 5, 1) * 7) +
            (SUBSTRING(ppf, 6, 1) * 6) +
            (SUBSTRING(ppf, 7, 1) * 5) +
            (SUBSTRING(ppf, 8, 1) * 4) +
            (SUBSTRING(ppf, 9, 1) * 3) +
            (validator_digit_1 * 2)
    ) % 11;

    IF sum_digits_2 < 2 THEN
        SET validator_digit_2 = sum_digits_2;
    ELSE
        SET validator_digit_2 = 11 - sum_digits_2;
    END IF;
 
    SET ppf = CONCAT(ppf, CAST(validator_digit_1 AS CHAR), CAST(validator_digit_2 AS CHAR));
    
    RETURN ppf;
END;

// DELIMITER ;


DELIMITER //
CREATE FUNCTION choose_name()
RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
    DECLARE name_index INT;
    DECLARE chosen_name VARCHAR(255);
    DECLARE names_array JSON;
    
    -- DEFINIR O ARRAY DE NOMES
    SET names_array = JSON_ARRAY(
        'João Silva',
        'Maria Santos',
        'Pedro Almeida',
        'Ana Oliveira',
        'Luiza Fernandes',
        'Carlos Lima',
        'Juliana Pereira',
        'Rafael Sousa',
        'Gabriela Costa',
        'Lucas Gonçalves',
        'Laura Rodrigues',
        'Fernando Cardoso',
        'Mariana Mendes',
        'Gustavo Castro',
        'Camila Carvalho',
        'Ricardo Santos',
        'Isabela Fernandes',
        'Diego Oliveira',
        'Bianca Pereira',
        'Eduardo Alves',
        'Amanda Ribeiro',
        'Antônio Rodrigues',
        'Carolina Lima',
        'Marcelo Castro',
        'Helena Carvalho',
        'Rodrigo Sousa',
        'Letícia Costa',
        'José Gonçalves',
        'Fernanda Rodrigues',
        'Marcos Santos',
        'Larissa Oliveira',
        'Sérgio Pereira',
        'Patrícia Almeida',
        'Roberto Cardoso',
        'Natália Mendes',
        'André Castro',
        'Vitória Carvalho',
        'Fábio Alves',
        'Júlia Ribeiro',
        'Renato Rodrigues',
        'Bruna Lima',
        'Paulo Castro',
        'Tatiana Carvalho',
        'Cristiano Sousa',
        'Vanessa Costa',
        'Hugo Gonçalves',
        'Lorena Rodrigues',
        'Geraldo Santos',
        'Priscila Oliveira',
        'Alexandre Pereira',
        'Fátima Ribeiro',
        'Wagner Carvalho',
        'Mariana Alves',
        'Roberto Rodrigues',
        'Carla Lima',
        'Daniel Castro',
        'Cláudia Carvalho',
        'Sandro Sousa',
        'Silvana Costa',
        'Rafael Gonçalves',
        'Daniela Rodrigues',
        'Henrique Santos',
        'Talita Oliveira',
        'Rodrigo Pereira',
        'Bárbara Almeida',
        'Luciano Cardoso',
        'Cintia Mendes',
        'Guilherme Castro',
        'Natália Carvalho',
        'Raul Alves',
        'Sabrina Ribeiro',
        'André Rodrigues',
        'Cristina Lima',
        'Leandro Castro',
        'Michele Carvalho',
        'Marcelo Sousa',
        'Aline Costa',
        'Bruno Gonçalves',
        'Márcia Rodrigues',
        'Vitor Santos',
        'Camila Oliveira',
        'Felipe Pereira',
        'Lívia Almeida',
        'Ricardo Rodrigues',
        'Ana Lima',
        'Renan Castro',
        'Fernanda Carvalho'
    );
    
    SET name_index = FLOOR(RAND() * JSON_LENGTH(names_array));
    SET chosen_name = JSON_UNQUOTE(JSON_EXTRACT(names_array, CONCAT('$[', name_index, ']')));
    
    RETURN chosen_name;
END //

DELIMITER ;

DELIMITER $$
CREATE PROCEDURE insert_character()
BEGIN
  DECLARE I INT DEFAULT 15;
  WHILE I <= 85 DO
	INSERT INTO character_info VALUES (I, choose_name(), generate_ppf() , DATE_ADD('1950-01-01', INTERVAL FLOOR( (DATEDIFF('2004-12-31', '1950-01-01') + 1) * RAND() ) DAY), FLOOR(RAND()*7 + 1), FLOOR(RAND()*38 + 1), FLOOR(RAND()*10 + 1), FLOOR(RAND()*9 + 1), FLOOR(RAND()*5 + 1), FLOOR(RAND()*4 + 1));
	SET I = I + 1;
  END WHILE;
END;


CALL insert_character();

SELECT * FROM character_info;
