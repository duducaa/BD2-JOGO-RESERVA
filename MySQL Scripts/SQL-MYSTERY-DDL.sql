#				        CRIAR BANCO DE DADOS

DROP DATABASE sql_mystery;
CREATE DATABASE sql_mystery;
USE sql_mystery;

#_____________________________________________________
#                 	TABLESPACE

DROP TABLESPACE score; 
CREATE TABLESPACE score 
ADD DATAFILE 'score.ibd' 
ENGINE = InnoDB;

#_____________________________________________________
#			      TABLES OF SQL MYSTERY

#USER TABLE
CREATE TABLE user_data (
    user_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    login VARCHAR(255),
	hash_password VARCHAR(255),
	email VARCHAR (255)
) TABLESPACE score;

#MYSTERY TABLE
CREATE TABLE mystery (
	mystery_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
	mystery_title VARCHAR(255)
) TABLESPACE score;

#TABLE FOR SCORES OF USERS
CREATE TABLE score (
	score_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	mystery_id INT UNSIGNED NOT NULL,
	user_id INT UNSIGNED NOT NULL,
	score INT,
	FOREIGN KEY (mystery_id) REFERENCES mystery(mystery_id),
	FOREIGN KEY (user_id) REFERENCES user_data(user_id)

) TABLESPACE score;


#WEDDING GUESTS
CREATE TABLE char_profile (
  profile_id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  profile_name VARCHAR(255)
) COMMENT "The types of profile that the characters can have";

#CHARACTERS' SPECIES
CREATE TABLE specie (
	specie_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    specie_name VARCHAR(255) NOT NULL
) COMMENT "Characters species";

#MAGICS OF THE KINGDOM
CREATE TABLE magic (
	magic_id INT  UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    magic_type VARCHAR(255)
) COMMENT "The types of characters' magic";

#NOBELTY TITLES
CREATE TABLE title (
	title_id INT  UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    title_type VARCHAR(255)
) COMMENT "The nobelty title that a character can have";

#REGION OF CHARACTERS
CREATE TABLE region (
  region_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  region_name VARCHAR(255)
) COMMENT "The regions where the characters live";

#CHARACTERS' AFILIATION
CREATE TABLE afiliation (
  afiliation_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  afiliation VARCHAR(255) NOT NULL
) COMMENT "The types of afiliations that a character can have";

#ANIMAL WORLD REGISTRY
CREATE TABLE character_info (
  character_id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  character_name VARCHAR(255) NOT NULL,
  ppf VARCHAR(255) NOT NULL UNIQUE, #PPF (PROOF OF PHYSICAL ANIMAL)
  birth_date DATE NOT NULL,
  afiliation_id INT UNSIGNED NOT NULL,
  specie_id INT  UNSIGNED NOT NULL,
  title_id INT  UNSIGNED  NOT NULL,
  magic_id INT  UNSIGNED  NOT NULL,
  region_id INT  UNSIGNED  NOT NULL,
  profile_id INT  UNSIGNED  NOT NULL,
  FOREIGN KEY (afiliation_id) REFERENCES afiliation(afiliation_id),
  FOREIGN KEY (specie_id) REFERENCES specie(specie_id),
  FOREIGN KEY (magic_id) REFERENCES magic(magic_id),
  FOREIGN KEY (title_id) REFERENCES title(title_id), 
  FOREIGN KEY (region_id) REFERENCES region(region_id),
  FOREIGN KEY (profile_id) REFERENCES char_profile(profile_id)
) COMMENT "Characters caracteristics";

#EVENT ROOMS
CREATE TABLE room (
  room_id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  room_name VARCHAR(255) NOT NULL,
  capacity INT NOT NULL
) COMMENT "Castle rooms";

#ITEMS THAT WERE FIND IN THE ROOMS
CREATE TABLE item (
	item_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	item_name VARCHAR(255) NOT NULL,
	room_id INT UNSIGNED NOT NULL,
	FOREIGN KEY (room_id) REFERENCES room(room_id)
) COMMENT "Items that were found in rooms";

#WITNESSES OF MURDER
CREATE TABLE testimony (
  testimony_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  character_id INT UNSIGNED NOT NULL,
  testimony TEXT NOT NULL,
  FOREIGN KEY (character_id) REFERENCES character_info(character_id)
) COMMENT "Testimonials given by the characters";

#SOLUTION TO VALIDATE TH SUSPECT
CREATE TABLE solution (
  solution_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  character_id INT UNSIGNED NOT NULL UNIQUE,
  FOREIGN KEY (character_id) REFERENCES character_info(character_id)
) COMMENT "The murderer";

#secrets to help in solution
CREATE TABLE safe (
  safe_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  hash_password INT NOT NULL,
  track TEXT
) COMMENT "Tracks to help in solution";

#crimes that the characters can commit
CREATE TABLE crime (
	crime_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	crime_name VARCHAR(100)
) COMMENT "Crimes that the characters can commit";

#reign criminal records
CREATE TABLE criminal_record (
  record_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  character_id INT UNSIGNED NOT NULL,
  sentence_start DATE NOT NULL,
  sentence_end DATE NOT NULL,
  crime_id INT UNSIGNED,
  char_STATUS ENUM('Prisoner','Free') NOT NULL,
  FOREIGN KEY (character_id) REFERENCES character_info(character_id),
  FOREIGN KEY (crime_id) REFERENCES crime(crime_id)
) COMMENT "Characters' criminal records";

#Skin color
CREATE TABLE skin (
  skin_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  skin_color VARCHAR(255) NOT NULL
) COMMENT "Characters' skin or hair color";

#Characters' physical caracteristics
CREATE TABLE morphology (
  morphology_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  character_id INT UNSIGNED NOT NULL UNIQUE,
  skin_id INT UNSIGNED NOT NULL,
  eye_color VARCHAR(255) NOT NULL,
  height FLOAT NOT NULL,
  FOREIGN KEY (character_id) REFERENCES character_info(character_id),
  FOREIGN KEY (skin_id) REFERENCES skin(skin_id)
 ) COMMENT "Characters' appearance";

#HINTS OF SECONDARY CHARACTER 
CREATE TABLE hint (
  hint_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  hint TEXT NOT NULL
) COMMENT "Hints that the secondary character can tell";

#EVENTS
CREATE TABLE mystery_event (
	event_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	event_name VARCHAR(255) NOT NULL
) COMMENT "Events that happened";

#EVENT'S PROGRAMMING
CREATE TABLE programming (
  programming_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  programming_name VARCHAR(255) NOT NULL,
  room_id INT UNSIGNED NOT NULL, 
  event_id INT UNSIGNED NOT NULL,
  start_time TIME NOT NULL,
  end_time TIME NOT NULL,
  FOREIGN KEY (room_id) REFERENCES room(room_id),
  FOREIGN KEY (event_id) REFERENCES mystery_event(event_id)
) COMMENT "Event's programming";

#IF A CHARACTER ACCEPTED THE INVITE FOR AN EVENT
CREATE TABLE invite (
	invite_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	event_id INT UNSIGNED NOT NULL,
	character_id INT UNSIGNED NOT NULL,
	confirmation BOOL,
	FOREIGN KEY (event_id) REFERENCES mystery_event(event_id),
	FOREIGN KEY (character_id) REFERENCES character_info(character_id)
) COMMENT "Confirmations from guests to an event";

#EMPLOYEE'S FUNCTION AT AN EVENT
CREATE TABLE employee_function (
	function_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	function_name VARCHAR(255)
) COMMENT "Employee's function at an event";

#Contract between an event and a character as an employee
CREATE TABLE contract (
	contract_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    event_id INT UNSIGNED NOT NULL,
    character_id INT UNSIGNED NOT NULL,
    function_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (event_id) REFERENCES mystery_event(event_id),
    FOREIGN KEY (character_id) REFERENCES character_info(character_id),
    FOREIGN KEY (function_id) REFERENCES employee_function(function_id)
) COMMENT "Contract between an event and a character as an employee";
