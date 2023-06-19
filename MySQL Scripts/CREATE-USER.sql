#drop user 'web-user'@'localhost';
CREATE USER 'web-user'@'localhost' IDENTIFIED BY 'web1234web';
GRANT SELECT ON SQL_MYSTERY.* TO 'web-user'@'localhost';
GRANT INSERT ON SQL_MYSTERY.TB_SOLUCAO TO 'web-user'@'localhost';
