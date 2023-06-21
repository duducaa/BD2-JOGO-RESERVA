#INSERT DOS TIPOS DE PERFIS DA FESTA
INSERT INTO TB_PERFIL VALUES
    (1, 'CONVIDADO'),
    (2, 'FUNCIONÁRIO'),
    (3, 'DETETIVE'),
    (4, 'OFICIAIL');
 
#INSERT DAS ESPECIES DO REINO
INSERT INTO TB_ESPECIE VALUES
	(1, 'ONÇA-PINTADA'),
	(2, 'ARARA-AZUL'),
	(3, 'TAMANDUÁ-BANDEIRA'),
	(4, 'TUCANO'),
	(5, 'JAGUATIRICA'),
	(6, 'MICO-LEÃO-DOURADO'),
	(7, 'ANTA'),
	(8, 'PAPAGAIO-VERDADEIRO'),
	(9, 'PIRANHA'),
	(10, 'JABUTI'),
	(11, 'CAPIVARA'),
	(12, 'SAGUI'),
	(13, 'TAMANDUÁ-MIRIM'),
	(14, 'SUÇUARANA'),
	(15, 'JACARÉ-AÇU'),
	(16, 'BOTO-COR-DE-ROSA'),
	(17, 'TATU-CANASTRA'),
	(18, 'GAVIÃO-REAL'),
	(19, 'VEADO-CATINGUEIRO'),
	(20, 'TATU-BOLA'),
	(21, 'SAPO-CURURU'),
	(22, 'MICO-ESTRELA'),
	(23, 'COBRA-CORAL'),
	(24, 'LOBO-GUARÁ'),
	(25, 'PAVÃOZINHO-DO-PARÁ'),
	(26, 'BICHO-PREGUIÇA'),
	(27, 'CACHORRO-VINAGRE'),
	(28, 'PEIXE-BOI'),
	(29, 'CARCARÁ'),
	(30, 'SABIÁ-LARANJEIRA'),
	(31, 'HARPIA'),
	(32, 'RATO-DO-MATO'),
	(33, 'PIRARUCU'),
    (34, 'TOURO'),
	(35, 'PANDA'), #ANDRÉ
	(36, 'PORQUINHO DA INDIA'),#DUDU
	(37, 'FOCA'),#ALFAYA
	(38, 'COALA')#RODRIGO
	(39, 'CORUJA');#JOHN
    
#INSERT DE MAGIAS
INSERT INTO TB_MAGIA VALUES
    (1, 'AR'),
	(2, 'ÁGUA'),
	(3, 'TERRA'),
	(4, 'FOGO'),
	(5, 'TREVAS'),
	(6, 'FLORESTA'),
	(7, 'LUZ'),
	(8, 'ALQUIMÍA'),
	(9, 'GELO');
    
#INSERT DOS TITULOS DE NOBRESA
INSERT INTO TB_TITULO VALUES
    (1, 'BARÃO'),
	(2, 'VISCONDE'),
	(3, 'FAMÍLIA REAL'),
	(4, 'DUQUE'),
	(5, 'MARQUÊS'),
	(6, 'CONDE'),
	(7, 'BARONETE'),
	(8, 'CAVALEIRO'),
	(9, 'EMBAIXADORA'),
    (10, 'NENHUM');
    
INSERT INTO TB_REGIAO VALUES
    (1, 'NORTE'),
	(2, 'SUL'),
	(3, 'LESTE'),
	(4, 'OESTE'),
	(5, 'CENTRO');
    
INSERT INTO TB_AFILIACAO VALUES
    (1, 'PIRATAS SUL'), ## ATENÇÃO
	(2, 'ALQUIMISTAS DO OESTE'),
	(3, 'SEGUIDORES DE SERPENTIUM'), #LESTE
	(4, 'REINO DE PANDORA'), #CENTRO
    (5, 'PROTETORES DE AMASSUNU'), #NORTE
    (6, 'ANDARILHOS DO NORTE'),
	(7, 'SOCIEDADE SECRETA'),
    (8, 'NENHUMA');

#ID, NOME, CAF, DATA, AFILIACAO, ESPECIE, TITULO, MAGIA, REGIAO, PERFIL
INSERT INTO TB_PERSONAGEM VALUES
    (1, 'ISABEL MONTENEGRO', '49276912933', '1953-12-09', 1, 1, 9, 9, 2, 1),
	(2, 'MÁRCIO RENE BRANDÃO SOUSSA', '98164621632', '1965-07-11', 6, 31, 6, 1, 5, 1),
    (3, 'THOMAS JERRY', '13984141544', '1996-08-21', 5, 32, 10, 6, 1, 1),
    (4, 'FERDINANDO GONZÁLEZ', '74859645859', '1972-05-21', 4, 34, 7, 3, 5, 1),
    (5, 'CHARLES BACON', '95753813137', '1995-11-30', 6, 27, 10, 2, 1, 2),
    (6, 'IRACEBETH QUEEN', '65132984653', '1956-02-19', 4, 23, 3, 9, 5, 1),
    (7, 'ARSENE LUPIN', '68348465112', '1980-09-09', 3, 15, 1, 7, 3, 1),
    (8, 'ROBERTO D. XAVIER', '54127896156', '1950-03-14', 1, 18, 4, 7, 2, 1),
	(9, 'EDUARDO FISCINA MENEZES MORAES', '14568974563', '2002-09-01', 2, 36, 10, 4, 2, 2),
	(10, 'JOHN VITOR NUNES DE CARVALHO', '963852456459','2002-10-08', 7, 39, 10, 5, 1, 1),
	(11, 'ANDRE LUCAS DO NASCIMENTO DOS SANTOS', '36521986457', '2003-02-06', 7, 35, 10, 3, 3, 3),
	(12, 'IAGO SANTANA ALFAYA', '85245696341','2002-05-10', 7, 37, 10, 9, 4, 2),
	(13, 'RODRIGO DE JESUS MACEDO', '556321576849', '1999-07-12', 7, 38, 10, 6, 5, 2),
	(14, 'CLEBER ARADO MONTEZ', '85245693178', '1970-05-20' 4, 24, 5, 5, 3, 1),
	(15, 'PABLO SILVA', '8529984653', '1950-03-06', 5, 22, 7, 4, 1, 1),
	(16, 'BIA PEREIRA', '8529974653', '2002-02-01', 3, 30, 9, 6, 3, 1),
	(17, 'CELESTE CRUZ', '74563218957', '1964-04-07', 4, 12, 5, 3, 2, 1),
	(18, 'FERNANDO BENER', '652341897452', '1960-06-02', 6, 13, 10, 4, 2, 2),
	(19, 'CARLOS JUNIOR NANIS', '1254639875', '1960-06-02', 6, 7, 10, 5, 2, 3),

#INSERT DOS NOMES DAS SALAS
INSERT INTO TB_SALA VALUES
	(1, 'HALL DE ENTRADA', 20),
	(2, 'SALA DE ESTAR', 25),
	(3, 'SALA DE JANTAR', 18),
	(4, 'COZINHA', 10),
	(5, 'ESCRITÓRIO', 8),
	(6, 'BIBLIOTECA', 30),
	(7, 'SALA DE MÚSICA', 15),
	(8, 'SALA DE JOGOS', 20),
	(9, 'SALÃO DE FESTAS', 100),
	(10, 'QUARTO PRINCIPAL', 2),
	(11, 'QUARTO DE HÓSPEDES', 4),
	(12, 'BANHEIRO PRINCIPAL', 1),
	(13, 'BANHEIRO DE HÓSPEDES', 1),
	(14, 'SÓTÃO', 10),
	(15, 'JARDIM DE INVERNO', 15),
	(16, 'CAPELA', 50);

#INSERT DOS ITENS DAS SALAS
INSERT INTO TB_ITEM VALUES
	(1, 'TAPETES VOADORES', 1),
	(2, 'ESPELHO DO ESQUECIMENTO', 1),
	(3, 'L MPADA DA ILUSÃO', 1),
	(4, 'SOFÁ DOS SONHOS', 2),
	(5, 'POLTRONAS ENCANTADAS', 2),
	(6, 'TELA DA TRANSFORMAÇÃO', 2),
	(7, 'MESA BANQUETEIRA', 3),
	(8, 'TAÇAS ENVENENADAS', 3),
	(9, 'TALHERES HIPNÓTICOS', 3),
	(10, 'PANELA DE DESEJOS', 4),
	(11, 'FACA DO DESTINO', 4),
	(12, 'FRIGIDEIRA DA PETRIFICAÇÃO', 4),
	(13, 'CANETA DA CRIATIVIDADE', 5),
	(14, 'LIVRO DOS FEITIÇOS PROIBIDOS', 5),
	(15, 'CADEIRA DA DESTRUIÇÃO', 5),
	(16, 'PERGAMINHO DA SABEDORIA', 6),
	(17, 'LIVRO DAS SOMBRAS', 6),
	(18, 'ESTANTE ARMADILHA', 6),
	(19, 'FLAUTA ENCANTADORA', 7),
	(20, 'TROMPETE DO TROVÃO', 7),
	(21, 'BATERIA EXPLOSIVA', 7),
	(22, 'TABULEIRO DA ILUSÃO', 8),
	(23, 'DARDOS ENVENENADOS', 8),
	(24, 'BARALHO MALDITO', 8),
	(25, 'BOLA DE DISCOTECA HIPNÓTICA', 9),
	(26, 'COQUETEL DE VENENO', 9),
	(27, 'FOGOS DE ARTIFÍCIO MÁGICOS', 9),
	(28, 'CAMA DO DESCANSO ETERNO', 10),
	(29, 'ESPELHO DA ILUSÃO MORTAL', 10),
	(30, 'ABAJUR DA ESCURIDÃO', 10),
	(31, 'TRAVESSEIRO DO SONO PROFUNDO', 11),
	(32, 'TAPETE VOADOR ASSASSINO', 11),
	(33, 'RELÓGIO DO TEMPO DESCONTROLADO', 11),
	(34, 'TAPETE DE BANHO AQUECIDO', 12),
	(35, 'SABONETE EXPLOSIVO', 12),
	(36, 'ESCOVA DE DENTES DO AZAR', 12),
	(37, 'TOALHA DE BANHO TRANSFORMADORA', 13),
	(38, 'BANHEIRA DO AFOGAMENTO ILUSÓRIO', 13),
	(39, 'VASO SANITÁRIO EXPLOSIVO', 13),
	(40, 'BAÚ DOS SEGREDOS', 14),
	(41, 'ARANHAS DA MALDIÇÃO', 14),
	(42, 'VASSOURA VOADORA DA DESTRUIÇÃO', 14),
	(43, 'PLANTAS CANTANTES', 15),
	(44, 'ROSA DO SONO PROFUNDO', 15),
	(45, 'ESTÁTUA DO GELO ETERNO', 15),
	(46, 'VELAS DO ENCANTAMENTO', 16),
	(47, 'LIVRO SAGRADO DA CONDENAÇÃO', 16),
	(48, 'ÓRGÃO DAS ALMAS PERDIDAS', 16);

#INSERT DO CASAMENTO NA TABELA CASAMENTO
INSERT INTO TB_EVENTO VALUES
    (1, 'CASAMENTO');

#INSERT DA PROGRAMAÇÃO DO CASAMENTO
INSERT INTO TB_PROGRAMACAO VALUES
	(1, 'PREPARAÇÃO DA NOIVA', 10, 1, '09:00', '11:40'),
	(2, 'PREPARAÇÃO DO NOIVO', 10, 1, '12:00', '12:30'),
	(3, 'ALMOÇO', 3, 1, '13:00', '14:00'),
	(4, 'CERIMÔNIA DE CASAMENTO', 16, 1, '15:00', '16:00'),
	(5, 'SESSÃO DE FOTOS DOS NOIVOS', 15, 1, '16:00', '16:30'),
	(6, 'JANTAR DE CASAMENTO', 3, 1, '16:30', '17:30'),
	(7, 'BRINDE DE CASAMENTO', 3, 1, '17:30', '18:00'),
	(9, 'CORTE DO BOLO', 9, 1, '17:30', '18:00'),
	(10, 'DISCURSO DOS PADRINHOS', 9, 1, '18:00', '18:30'),
	(11, 'PRIMEIRA DANÇA DOS NOIVOS', 9, 1, '18:00', '19:00'),
	(12, 'BANDA', 9, 1, '19:00', '20:00'),
	(13, 'BAILE DE CASAMENTO', 9, 1, '20:00', '21:00'),
	(14, 'LANÇAMENTO DO BUQUÊ', 9, 1, '21:00', '21:30'),
	(15, 'FESTA DE CASAMENTO', 16, 1, '21:30', '00:00'),
	(16, 'ENTREGA DOS PRESENTES', 9, 1, '00:00', '01:30'),
	(17, 'DESPEDIDA DOS NOIVOS', 1, 1, '01:40', '02:30');

INSERT INTO TB_FUNCAO VALUES
    (1, 'MORDOMO'),
    (2, 'CERIMONIALISTA'),
    (3, 'SEGURANÇA'),
    (4, 'FLORISTA'),
    (5, 'ESTILISTA'),
    (6, 'MÚSICO'),
    (7, 'FOTÓGRAFO'),
    (8, 'VIDEÓGRAFO'),
    (9, 'CHEFE DE COZINHA'),
    (10, 'GARÇOM'),
    (11, 'MOTORISTA'),
    (12, 'COORDENADOR DE EVENTOS'),
    (13, 'MAÎTRE'),
    (14, 'BARTENDER'),
    (15, 'CAMAREIRO'),
    (16, 'COPEIRO'),
    (17, 'PADEIRO'),
    (18, 'CHEF DE CONFEITARIA'),
    (19, 'RECEPCIONISTA'),
    (20, 'LIMPEZA');

INSERT INTO TB_CONVITE VALUES
	(1, 1, 10, 1)
	(2, 1, 14, 1)
	(3, 1, 11, 1)
	(4, 1, 4, 1)
	(5, 1, 2, 1);

#ID, EVENTO, PERSONAGEM, FUNCAO
INSERT INTO TB_CONTRATO VALUES
	(1, 1, 9, 11), #DUDU
	(2, 1, 13, 20), #RODRIGO
	(3, 1, 12, 10), #ALFAYA
	(4, 1, 18, 1),
	(5, 1, 5, 10);

#ID, PERSONAGEM, PELO, OLHOS, ALTURA
INSERT INTO TB_MORFOLOGIA VALUES
	(1, 9, 'PRETO',  )

INSERT INTO TB_PELE VALUES
	(1, 'AMARELO'),#ONÇA, JAGUATIRICA, JABUTI, COBRA-CORAL, PAVÃOZINHO-DO-PARÁ
	(2, 'PRETO'),#ONÇA, TUCANO, JAGUATIRICA,CARCARÁ, JABUTI, TAMANDUÁ-MIRIM, GAVIÃO-REAL, TATU-BOLA, COBRA-CORAL, HARPIA, PIRARUCU, TOURO, PANDA
	(3, 'AZUL'), ARARA-AZUL
	(4, 'DOURADO') #MICO-LEÃO-DOURADO
	(5, 'MARROM'),#ANTA,  CAPIVARA, SUÇUARANA, TATU CANASTRA, VEADO-CATINGUEIRO, SAPO-CURURU, LOBO-GUARÁ, PAVÃOZINHO-DO-PARÁ, CACHORRO-VINAGRE, SABIÁ-LARANJEIRA, PORQUIIENHO-DA-INDIA
	(6, 'VERDE'),#PAPAGAIO-VERDADEIRO, JACARÉ-AÇU
	(7, 'CINZA'), #PIRANHA, SAGUI,MICO-ESTRELA, BICHO-PREGUIÇA, PEIXE-BOI, RATO-DO-MATO, FOCA, COALA, CORUJA,
	(8, 'LARANJA'), #PIRANHA
	(9, 'BRANCO'), #TAMANDUÁ-MIRIM, GAVIÃO-REAL, CARCARÁ, HARPIA, PANDA, PORQUINHO DA INDIA
	(10, 'ROSA'), #BOTO COR DE ROSA
	(11, 'VERMELHO'); #COBRA CORA, PAVÃOZINHO-DO-PARÁ

INSERT INTO TB_DICA VALUES
	(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
	(2, 'Duis finibus turpis urna, non auctor diam tempor at.'),
	(3, 'Maecenas ac eleifend leo, vehicula tincidunt augue.'),
	(4, 'Aenean vulputate consectetur massa in egestas.'),
	(5, 'Etiam commodo orci quis mollis tristique.'),
	(6, 'Duis in lacinia nulla. Integer sed eleifend turpis.'),
	(7, 'Donec ut pellentesque enim. Aliquam erat volutpat.'),
	(8, 'Maecenas nec maximus tellus, id vulputate massa.'),
	(9, 'Nunc imperdiet dolor vitae luctus consectetur.'),
	(10, 'Nullam id massa bibendum, ultricies diam et, rhoncus augue.'),
	(11, 'Mauris lorem urna, dapibus ut felis id, dictum egestas massa.'),
	(12, 'Mauris placerat nec ipsum non faucibus.'),
	(13, 'Mauris feugiat sapien non felis egestas tempus.'),
	(14, 'In vel rhoncus nisi. Nunc sodales, ipsum quis ultricies lobortis,'),
	(15, 'turpis tellus tristique felis, quis ornare lacus tellus eget leo.'),
	(16, 'In volutpat mi vitae pulvinar sagittis.'),
	(17, 'In hac habitasse platea dictumst.'),
	(18, 'Sed fringilla, ante sit amet faucibus finibus, tortor orci sodales metus,'),
	(19, 'quis viverra lacus tellus id turpis. Nullam hendrerit lobortis tincidunt.'),
	(20, 'Praesent scelerisque tellus sit amet magna interdum, eget consectetur sapien porta.'),
	(21, 'Cras porttitor egestas ipsum non mattis. Nam vitae dolor hendrerit,'),
	(22, 'cursus felis vitae, lacinia ipsum.'),
	(23, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;'),
	(24, 'Vishhh... esse tá doido que nem pedra | HARLEY: Mas olha, parece que..., lá do departamento encontrou algo próximo ao corpo'),#HARLEY
	(25, 'Suspendisse ac urna sed sem elementum viverra placerat in urna.'),
	(26, 'Sed elit augue, efficitur et condimentum eget, luctus eget erat.'),
	(27, 'Aenean malesuada accumsan sem. Nullam at nibh semper,'),
	(28, 'condimentum elit pellentesque, laoreet libero.'),
	(29, 'Quisque non sodales mi, tempus ornare arcu.'),
	(30, 'In quis convallis risus. In euismod eros finibus metus pellentesque,'),
	(31, 'nec gravida velit rhoncus. Aliquam in tincidunt nulla, nec consectetur elit.'),
	(32, 'Quisque vehicula non mauris et euismod.'),
	(33, 'Sed blandit pellentesque est, eget fermentum ligula sollicitudin eget.'),
	(34, 'Donec tristique egestas diam sit amet malesuada.'),
	(35, 'Praesent vitae volutpat purus, at porta magna.'),
	(36, 'Cras venenatis lobortis dapibus. Mauris at aliquam orci.'),
	(37, 'Nam sodales nisl at est finibus porta. Vivamus sed sollicitudin turpis.'),
	(38, 'Nulla semper lobortis quam, quis hendrerit massa faucibus aliquet.'),
	(39, 'Curabitur varius arcu iaculis ipsum luctus, vel pulvinar nunc scelerisque.'),
	(40, ' MEUS PARÁBENS!!!! VOCÊ CHEGOU AO CHECKPOINT'),##HARLEY
	(41, 'Pellentesque faucibus, quam at condimentum semper, ex metus consequat quam,'),
	(42, 'ac lobortis magna mi sit amet eros. Vivamus non neque feugiat,'),
	(43, 'luctus mauris in, finibus nibh. Integer ac bibendum eros.'),
	(44, 'Integer dolor dolor, porta'),
	(45, 'sollicitudin molestie ac, suscipit non dolor.'),
	(46, 'Phasellus auctor mollis risus, vel efficitur dolor posuere a.'),
	(47, 'Proin et erat ut urna consectetur vulputate ac vel metus.'),
	(48, 'Cras efficitur dictum imperdiet. Nullam imperdiet ex elit,'),
	(49, 'eget aliquam elit accumsan in.'),
	(50, 'Cras a enim et ipsum lacinia vulputate. Mauris tincidunt vel est non placerat.'),
	(51, 'Sed imperdiet dui at ante ultricies pretium. Quisque commodo tortor a pellentesque varius.'),
	(52, 'Praesent in laoreet erat. Duis gravida velit quis neque posuere hendrerit at a nunc.'),
	(53, 'Proin sit amet consectetur nisl. Phasellus condimentum aliquet sem, sit amet ornare diam sagittis et.'),
	(54, 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.'),
	(55, 'Quisque id venenatis ante, a bibendum nisl. Suspendisse vestibulum in turpis eu')
	(56, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
	(55, 'Duis finibus turpis urna, non auctor diam tempor at.'),
	(56, 'Maecenas ac eleifend leo, vehicula tincidunt augue.'),
	(57, 'Aenean vulputate consectetur massa in egestas.'),
	(58, 'Etiam commodo orci quis mollis tristique.'),
	(59, 'Duis in lacinia nulla. Integer sed eleifend turpis.'),
	(60, 'Donec ut pellentesque enim. Aliquam erat volutpat.'),
	(61, 'Maecenas nec maximus tellus, id vulputate massa.'),
	(62, 'Nunc imperdiet dolor vitae luctus consectetur.'),
	(63, 'Nullam id massa bibendum, ultricies diam et, rhoncus augue.'),
	(64, 'Mauris lorem urna, dapibus ut felis id, dictum egestas massa.'),
	(65, 'Mauris placerat nec ipsum non faucibus.'),
	(66, 'Mauris feugiat sapien non felis egestas tempus.'),
	(67, 'In vel rhoncus nisi. Nunc sodales, ipsum quis ultricies lobortis,'),
	(68, 'turpis tellus tristique felis, quis ornare lacus tellus eget leo.'),
	(69, 'In volutpat mi vitae pulvinar sagittis.'),
	(70, 'In hac habitasse platea dictumst.'),
	(71, 'Sed fringilla, ante sit amet faucibus finibus, tortor orci sodales metus,'),
	(72, 'quis viverra lacus tellus id turpis. Nullam hendrerit lobortis tincidunt.'),
	(73, 'Praesent scelerisque tellus sit amet magna interdum, eget consectetur sapien porta.'),
	(74, 'Cras porttitor egestas ipsum non mattis. Nam vitae dolor hendrerit,'),
	(75, 'cursus felis vitae, lacinia ipsum.'),
	(76, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;'),
	(77, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
	(78, 'Duis finibus turpis urna, non auctor diam tempor at.'),
	(79, 'Maecenas ac eleifend leo, vehicula tincidunt augue.'),
	(80, 'Aenean vulputate consectetur massa in egestas.'),
	(81, 'Etiam commodo orci quis mollis tristique.'),
	(82, 'Duis in lacinia nulla. Integer sed eleifend turpis.'),
	(83, 'Donec ut pellentesque enim. Aliquam erat volutpat.'),
	(84, 'Maecenas nec maximus tellus, id vulputate massa.'),
	(85, 'Nunc imperdiet dolor vitae luctus consectetur.'),
	(86, 'Nullam id massa bibendum, ultricies diam et, rhoncus augue.'),
	(87, 'Mauris lorem urna, dapibus ut felis id, dictum egestas massa.'),
	(88, 'Mauris placerat nec ipsum non faucibus.'),
	(89, 'Mauris feugiat sapien non felis egestas tempus.'),
	(90, 'In vel rhoncus nisi. Nunc sodales, ipsum quis ultricies lobortis,'),
	(91, 'turpis tellus tristique felis, quis ornare lacus tellus eget leo.'),
	(92, 'In volutpat mi vitae pulvinar sagittis.'),
	(93, 'In hac habitasse platea dictumst.'),
	(94, 'Sed fringilla, ante sit amet faucibus finibus, tortor orci sodales metus,'),
	(95, 'quis viverra lacus tellus id turpis. Nullam hendrerit lobortis tincidunt.'),
	(96, 'Praesent scelerisque tellus sit amet magna interdum, eget consectetur sapien porta.'),
	(97, 'Cras porttitor egestas ipsum non mattis. Nam vitae dolor hendrerit,'),
	(98, 'cursus felis vitae, lacinia ipsum.'),
	(99, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;'),
	(100, 'In volutpat mi vitae pulvinar sagittis.');

INSERT INTO TB_DEPOIMENTO VALUES
	(1, 2, 'Eu estava voando depois de ter pego o Buquê e a vi lá em baixo, no precipício. Realmente estou perplexo uma mulher tão poderosa como ela... que estranho!! Enfim, não sei muita coisa, mas vi Thomy, o rato, muito atormentado, ele parece ter visto algo...'),
	(2, 3, 'Eu não vi nada, EU JURO!!! Eu só estava indo dar uma caminhada quando escutei algo atrás do mato. Como sou curioso fui dar uma olhadinha. Parecia a embaixadora gritando com um MACHO como se tivesse com medo. Ela dizia para se afastar, mas eu não escutei mais ninguém... então ouvi um rugido e um grito distancaindo. Foi ai que saí correndo'),
	(3, 14, 'Não vi muita coisa, maas se bem que vi FERDINANDO GONZÁLEZ, passando rápido por lá, meia hora antes do que você está dizendo ter sido a hora do assassinato. Mas foi rápido mesmo, não daria tempo nem de conversar'),
	(4, 4, 'Pela Cobra Norato, o que tá acontecendo? Quem é você? Não por favor, não me machuque!!!! Socorro... Não me mate monstro. Alguém me salvaaaaaaa  | Dica: 24'),
	(5, 19, 'Eu estava vasculho a área e encontrei essa carta. Parece ser uma carta de amor... e parece que tem uma sigla do nomem do seu amante: "F.G". E também tem esse lírio estranho junto, bem cheiroso por sinal...  ...Arghh...  ...arrrgh... An? Que? Não!!! Por favor se afastem!!! Não me matem seus monstros. Nãooooooo!! (Ele no surto escorrega e bate a cabeça, com isso vem a falecer)  | Dica: 40'),
	(6, 12, 'Eu não sei o que houve. Em um minuto ela tá aqui sendo grossa e ranzinza... e do nada... puff.   Isso deve ser algo relacionado a politica. Fiquei sabendo que ela tinha richa com...');
	(7, 13, 'Ela bem que mereceu depois das coisas horriveis que ja fez'),
	(8, 15 , 'Soube que ela deu um golpe no ultimo lider do cla dos piratas e agora é embaixadora do clã'),
	(9, 17, ' Não sei nada que possa ajudar, só vi o CLEBER ARADO MONTEZ vigiando algum a coisa'),
	(10, 8, 'já Imaginava que isso iá acontecer a uma pessoa tão desprezível. Agora, seu eu fiz isso? Obvio que não mas ia se pudesse. Enfim ouvi mordominho falando, com um funcionário, um papo suspeito'),
	(11, 18,'Sabia que isso não ia acabar bem. Veja, senhor. eu estava aconselhando o funcionário Charles Bacon a não deixar sua raiva pela embaixadora estragar a noite. parece que o seu pai foi feito de refém por corta de suas dividas'),
	(12, 5,'Veja, senhor. É verdade devo a ela, e ela esta com o meu pai preso, mas não fiz nada. Passei a noite servindo os embaixadores e ela nem bebeu nada. Mas posso falar uma coisa acho que se tem alguém que poderia querer matar ela, é  Arsene lupin. Parece que ela humilhou ele'),
	(13, 16, 'Olha o homenzinho não saiu em momento nenhum. Ficou ali o tempo todo, Já não aguentava mais. Queria privacidade.'), 
	(14, 7, 'Olha, não tive nada com isso, e além disso não tinha como eu ter feito nada. Estava bêbado na mesa dos barões. Agora, quem claramente tem motivos é a corna da Iracebeth Queen.'),
	(15, 6, 'Aquele safado estava me traindo com ela? Bem feito. Queria muito ter feito isso, mas esteva mito preocupada organizando o casamento de minha filha. Mas aquele verme me paga!!');

##________________________________________________________________________
##  							INSERT LIXO
DELIMITER //

DROP FUNCTION GERAR_CPF;
CREATE FUNCTION gerar_cpf() RETURNS CHAR(11)  READS SQL DATA
BEGIN
    DECLARE cpf CHAR(11);
    DECLARE digitos_verificadores CHAR(2);
    DECLARE soma_digitos1 INT;
    DECLARE soma_digitos2 INT;
    DECLARE digito_verificador1 INT;
    DECLARE digito_verificador2 INT;

    -- Gera 9 dígitos aleatórios para o CPF
    SET cpf = '';
    SET @i = 1;

    WHILE @i <= 9 DO
        SET cpf = CONCAT(cpf, FLOOR(RAND() * 9));
        SET @i = @i + 1;
    END WHILE;

    -- Calcula os dígitos verificadores
    SET soma_digitos1 = (
        SELECT
            (SUBSTRING(cpf, 1, 1) * 10) +
            (SUBSTRING(cpf, 2, 1) * 9) +
            (SUBSTRING(cpf, 3, 1) * 8) +
            (SUBSTRING(cpf, 4, 1) * 7) +
            (SUBSTRING(cpf, 5, 1) * 6) +
            (SUBSTRING(cpf, 6, 1) * 5) +
            (SUBSTRING(cpf, 7, 1) * 4) +
            (SUBSTRING(cpf, 8, 1) * 3) +
            (SUBSTRING(cpf, 9, 1) * 2)
    ) % 11;

    IF soma_digitos1 < 2 THEN
        SET digito_verificador1 = 0;
    ELSE
        SET digito_verificador1 = 11 - soma_digitos1;
    END IF;

    SET soma_digitos2 = (
        SELECT
            (SUBSTRING(cpf, 1, 1) * 11) +
            (SUBSTRING(cpf, 2, 1) * 10) +
            (SUBSTRING(cpf, 3, 1) * 9) +
            (SUBSTRING(cpf, 4, 1) * 8) +
            (SUBSTRING(cpf, 5, 1) * 7) +
            (SUBSTRING(cpf, 6, 1) * 6) +
            (SUBSTRING(cpf, 7, 1) * 5) +
            (SUBSTRING(cpf, 8, 1) * 4) +
            (SUBSTRING(cpf, 9, 1) * 3) +
            (digito_verificador1 * 2)
    ) % 11;

    IF soma_digitos2 < 2 THEN
        SET digito_verificador2 = 0;
    ELSE
        SET digito_verificador2 = 11 - soma_digitos2;
    END IF;
  
    SET cpf = CONCAT(cpf, CAST(digito_verificador1 AS CHAR), CAST(digito_verificador2 AS CHAR));
    
    RETURN cpf;
END;

// DELIMITER ;


DELIMITER //
DROP FUNCTION ESCOLHER_NOME;
CREATE FUNCTION escolher_nome()
RETURNS VARCHAR(255) DETERMINISTIC 
BEGIN
    DECLARE indice INT;
    DECLARE nome VARCHAR(255);
    DECLARE nomes_array TEXT;
    
    -- Definir o array de nomes
    SET nomes_array = '[
    "João Silva",
    "Maria Santos",
    "Pedro Almeida",
    "Ana Oliveira",
    "Luiza Fernandes",
    "Carlos Lima",
    "Juliana Pereira",
    "Rafael Sousa",
    "Gabriela Costa",
    "Lucas Gonçalves",
    "Laura Rodrigues",
    "Fernando Cardoso",
    "Mariana Mendes",
    "Gustavo Castro",
    "Camila Carvalho",
    "Ricardo Santos",
    "Isabela Fernandes",
    "Diego Oliveira",
    "Bianca Pereira",
    "Eduardo Alves",
    "Amanda Ribeiro",
    "Antônio Rodrigues",
    "Carolina Lima",
    "Marcelo Castro",
    "Helena Carvalho",
    "Rodrigo Sousa",
    "Letícia Costa",
    "José Gonçalves",
    "Fernanda Rodrigues",
    "Marcos Santos",
    "Larissa Oliveira",
    "Sérgio Pereira",
    "Patrícia Almeida",
    "Roberto Cardoso",
    "Natália Mendes",
    "André Castro",
    "Vitória Carvalho",
    "Fábio Alves",
    "Júlia Ribeiro",
    "Renato Rodrigues",
    "Bruna Lima",
    "Paulo Castro",
    "Tatiana Carvalho",
    "Cristiano Sousa",
    "Vanessa Costa",
    "Hugo Gonçalves",
    "Lorena Rodrigues",
    "Geraldo Santos",
    "Priscila Oliveira",
    "Alexandre Pereira",
    "Fátima Ribeiro",
    "Wagner Carvalho",
    "Mariana Alves",
    "Roberto Rodrigues",
    "Carla Lima",
    "Daniel Castro",
    "Cláudia Carvalho",
    "Sandro Sousa",
    "Silvana Costa",
    "Rafael Gonçalves",
    "Daniela Rodrigues",
    "Henrique Santos",
    "Talita Oliveira",
    "Rodrigo Pereira",
    "Bárbara Almeida",
    "Luciano Cardoso",
    "Cintia Mendes",
    "Guilherme Castro",
    "Natalia Carvalho",
    "Raul Alves",
    "Sabrina Ribeiro",
    "André Rodrigues",
    "Cristina Lima",
    "Leandro Castro",
    "Michele Carvalho",
    "Marcelo Sousa",
    "Aline Costa",
    "Bruno Gonçalves",
    "Márcia Rodrigues",
    "Vitor Santos",
    "Camila Oliveira",
    "Felipe Pereira",
    "Lívia Almeida",
    "Ricardo Rodrigues",
    "Ana Lima",
    "Renan Castro",
    "Fernanda Carvalho",
    "Rafael Sousa",
    "Letícia Costa",
    "José Gonçalves",
    "Fernanda Rodrigues",
    "Marcos Santos",
    "Larissa Oliveira",
    "Sérgio Pereira",
    "Patrícia Almeida",
    "Roberto Cardoso",
    "Natália Mendes",
    "André Castro",
    "Vitória Carvalho",
    "Fábio Alves",
    "Júlia Ribeiro",
    "Renato Rodrigues",
    "Bruna Lima",
    "Paulo Castro",
    "Tatiana Carvalho",
    "Cristiano Sousa",
    "Vanessa Costa",
    "Hugo Gonçalves",
    "Lorena Rodrigues",
    "Geraldo Santos",
    "Priscila Oliveira",
    "Alexandre Pereira",
    "Fátima Ribeiro",
    "Wagner Carvalho",
    "Mariana Alves",
    "Roberto Rodrigues",
    "Carla Lima",
    "Daniel Castro",
    "Cláudia Carvalho",
    "Sandro Sousa",
    "Silvana Costa",
    "Rafael Gonçalves",
    "Daniela Rodrigues",
    "Henrique Santos",
    "Talita Oliveira",
    "Rodrigo Pereira",
    "Bárbara Almeida",
    "Luciano Cardoso",
    "Cintia Mendes",
    "Guilherme Castro",
    "Natalia Carvalho",
    "Raul Alves",
    "Sabrina Ribeiro",
    "André Rodrigues",
    "Cristina Lima",
    "Leandro Castro",
    "Michele Carvalho",
    "Marcelo Sousa",
    "Aline Costa",
    "Bruno Gonçalves",
    "Márcia Rodrigues",
    "Vitor Santos",
    "Camila Oliveira",
    "Felipe Pereira",
    "Lívia Almeida",
    "Ricardo Rodrigues",
    "Ana Lima",
    "Renan Castro",
    "Fernanda Carvalho"
]';
    
    -- Gerar um índice aleatório
    SET indice = FLOOR(RAND() * 100) + 1;
    
    -- Obter o nome correspondente ao índice
    SET nome = JSON_EXTRACT(nomes_array, CONCAT('$[', indice - 1, ']'));
    
    RETURN nome;
END //

DELIMITER ;

DELIMITER $$
DROP PROCEDURE INSERTDATA;
CREATE PROCEDURE InsertData()
BEGIN
  DECLARE i INT DEFAULT 15;
  WHILE i <= 85 DO
    INSERT INTO TB_PERSONAGEM VALUES (i, escolher_nome(), gerar_cpf() , DATE_ADD('1950-01-01', INTERVAL FLOOR( (DATEDIFF('2004-12-31', '1950-01-01') + 1) * RAND() ) DAY), RAND()*7 + 1, RAND()*39 + 1, RAND()*10 + 1, RAND()*9 + 1, RAND()*5 + 1, RAND()*4 + 1);
    SET i = i + 1;
  END WHILE;
END$$
DELIMITER ;

CALL InsertData();

SELECT * FROM TB_PERSONAGEM;