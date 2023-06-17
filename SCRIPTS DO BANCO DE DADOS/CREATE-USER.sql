#CRIAÇÃO DO USUÁRIO
DROP USER 'web-user'@'localhost';
CREATE USER 'web-user'@'localhost' IDENTIFIED BY 'sql_mystery';
GRANT SELECT ON sql_mystery.* to 'web-user'@'localhost';
GRANT INSERT ON sql_mystery.tb_solucao to 'web-user'@'localhost';