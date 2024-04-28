-- -----------------------------------------------------
-- Carga de tablas de tipologías
-- -----------------------------------------------------

INSERT INTO `actividadgrupal_new`.`tipo_anotacion` (`nombre`)
VALUES
('Funciónal'),
('Estructural'),
('De expresion'),
('De variación'),
('De regulación'),
('De conservación'),
('Clínica'),
('De interacción'),
('De localización');

INSERT INTO `actividadgrupal_new`.`tipo_secuencia` (`nombre`)
VALUES
('Exón'),
('Intrón'),
('ARNm'),
('miARN'),
('snARN'),
('snoARN'),
('tARN'),
('rARN'),
('Promotor'),
('Terminador'),
('Enhancer'),
('Silencer');

INSERT INTO `actividadgrupal_new`.`tipo_variante` (`nombre`)
VALUES
('SNP'),
('Inserción'),
('Deleción'),
('Duplicación'),
('Translocación'),
('Inversión');
