USE sql_mystery;

DELIMITER $

#YOU CAN ONLY ADD TO INVITE THE CHARACTERS THAT ARE GUEST AT CHAR_PROFILE
CREATE TRIGGER invite_character
BEFORE INSERT
ON invite
FOR EACH ROW
BEGIN
	DECLARE vProfile TEXT;
    SET vProfile = (
		SELECT
			p.profile_name
		FROM
			character_info c
		INNER JOIN
			char_profile p
		ON
			p.profile_id = c.profile_id
		WHERE
			c.character_id = NEW.character_id
    );
    
    IF UPPER(vProfile) != 'GUEST' THEN
		SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = 'This character is an employee';     
   END IF;
END;

#YOU CAN ONLY ADD TO CONTRACT THE CHARACTERS THAT ARE EMPLOYEE AT CHAR_PROFILE
CREATE TRIGGER contract_character
BEFORE INSERT
ON contract
FOR EACH ROW
BEGIN
	DECLARE vProfile TEXT;
    SET vProfile = (
		SELECT
			p.profile_name
		FROM
			character_info c
		INNER JOIN
			char_profile p
		ON
			p.profile_id = c.profile_id
		WHERE
			c.character_id = NEW.character_id
    );
    
    IF UPPER(vProfile) != 'EMPLOYEE' THEN
		SIGNAL SQLSTATE '45002' SET MESSAGE_TEXT = 'This character is a guest';     
   END IF;
END;

$ DELIMITER ;