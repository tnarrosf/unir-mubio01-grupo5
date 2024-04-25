
# Tabla anotación
# Tipos admitidos: Estructurales, Funcionales, de Expresión Génica, de Variación Genética, 
#                  de Regulación Génica, de Conservación Evolutiva, Clínicas, de Interacciones Proteína-Gen, 
#                  de Localización Subcelular 
CREATE TABLE `anotacion` (
  `identificador` int NOT NULL,
  `tipoanotacion` ENUM('funcional', 'estructural', 'expresion', 'variacion', 'regulacion', 'conservacion', 'clinica', 'interaccion', 'localizacion') NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  PRIMARY KEY (`identificador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci


# Tabla cromosoma

CREATE TABLE `cromosoma` (
  `identificador` int NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `especie` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`identificador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

# Tabla estudio

CREATE TABLE `estudio` (
  `identificador` int NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `fecha` date DEFAULT NULL,
  `referencia` varchar(10) NOT NULL,
  PRIMARY KEY (`identificador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

# Tabla gen

CREATE TABLE `gen` (
  `nombre` varchar(20) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `cromosoma-gen` varchar(200) NOT NULL,
  `estudio-gen` varchar(200) NOT NULL,
  `gen-anotacion` varchar(200) NOT NULL,
  PRIMARY KEY (`nombre`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

# Tabla secuencia
# Tipos de secuencia admitidos:
# Secuencias codificantes - exones
# Secuencias no codificantes - intrones, ARNm, miARN, snARN, snoARN, tARN, rARN
# Elementos reguladores - Promotores, Terminadores, Enhancers, Silencers
#
Secuencias no codificantes
CREATE TABLE `secuencia` (
  `identificador` int NOT NULL,
  `tiposecuencia` ENUM('exon', 'intron', 'ARNm', 'miARN', 'snARN', 'snoARN', 'tARN', 'rARN', 'promotor', 'terminador', 'enhancer', 'silencer') DEFAULT NULL,
  `direccion` enum('+','-') NOT NULL,
  PRIMARY KEY (`identificador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
