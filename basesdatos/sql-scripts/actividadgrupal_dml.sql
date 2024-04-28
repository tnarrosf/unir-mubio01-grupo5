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
('Inversión'),
('Referencia');


LOCK TABLES `alelo` WRITE;
/*!40000 ALTER TABLE `alelo` DISABLE KEYS */;
INSERT INTO `alelo` VALUES (1,'wt','ZNF398 - wt','Alelo salvaje del gen ZNF398',1);
/*!40000 ALTER TABLE `alelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cromosoma`
--

LOCK TABLES `cromosoma` WRITE;
/*!40000 ALTER TABLE `cromosoma` DISABLE KEYS */;
INSERT INTO `cromosoma` VALUES (1,'Cromosoma 7','Homo sapiens');
/*!40000 ALTER TABLE `cromosoma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cromosoma-gen`
--

LOCK TABLES `cromosoma-gen` WRITE;
/*!40000 ALTER TABLE `cromosoma-gen` DISABLE KEYS */;
INSERT INTO `cromosoma-gen` VALUES (1,1,149126408);
/*!40000 ALTER TABLE `cromosoma-gen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `gen`
--

LOCK TABLES `gen` WRITE;
/*!40000 ALTER TABLE `gen` DISABLE KEYS */;
INSERT INTO `gen` VALUES (1,'ZNF398','P51 zinc finger protein 398');
/*!40000 ALTER TABLE `gen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `secuencia`
--

LOCK TABLES `secuencia` WRITE;
/*!40000 ALTER TABLE `secuencia` DISABLE KEYS */;
INSERT INTO `secuencia` VALUES (1,'+',1,'gcactcgctgcccacaaagcgccagctgaggggccgctgcgggtggagtgcggcggagtcggcctcgcgaccccagcttgatccgccgcctgctgcaccgcgcctccgccgcgttcctgcgcgtcccgagccccgacggccgcgtgagtcccgtccgtgcggggaaggcagggccgggtcggcgccgcctgtggagaggacccggcggccgggcctgcttggagccgggcgcggtggcagcggcggcagcggcggcgacttccgaggcccgggctagacagcgcagggccatggctgaggcggccccggccccg',13),(2,'+',2,'acatctgaatgggactccgagtgccttacatccctgcagccccttcctcttcctacacccccagcagcaaatgaggcacacctgcagacagcagctatctctctgtggacagtggtggccgccgtgcaggctatagagaggaaggtggagatccacagccggcgactcctacacctggaaggtcggacagggacagcagagaagaaactagccagctgtgaaaagacagttaccgagcttgggaaccagctggagggcaagtgggccgtgctgggaaccctgctgcaggagtacgggctgctgcagaggcggctggagaacttggagaacctgctgcgcaacaggaacttctggatcctgcggctccctccaggtattaagggagatatcccaaag',13),(3,'+',3,'gtgcctgtggcatttgatgatgtctccatctacttttccactccagagtgggaaaaattagaagaatggcaaaaggaactttacaagaatatcatgaagggcaactacgagtctctcatctccatgg',13),(4,'+',4,'attatgctataaatcaacctgatgtcttatctcagattcaaccagaaggggaacataatacagaggaccaggcagggccagaggaaagtgagattcccacagaccccagtgaag',13);
/*!40000 ALTER TABLE `secuencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tipo_anotacion`
--

LOCK TABLES `tipo_anotacion` WRITE;
/*!40000 ALTER TABLE `tipo_anotacion` DISABLE KEYS */;
INSERT INTO `tipo_anotacion` VALUES (1,'Funcional'),(2,'Estructural'),(3,'De expresion'),(4,'De variación'),(5,'De regulación'),(6,'De conservación'),(7,'Clínica'),(8,'De interacción'),(9,'De localización');
/*!40000 ALTER TABLE `tipo_anotacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tipo_secuencia`
--

LOCK TABLES `tipo_secuencia` WRITE;
/*!40000 ALTER TABLE `tipo_secuencia` DISABLE KEYS */;
INSERT INTO `tipo_secuencia` VALUES (13,'Exón'),(14,'Intrón'),(15,'ARNm'),(16,'miARN'),(17,'snARN'),(18,'snoARN'),(19,'tARN'),(20,'rARN'),(21,'Promotor'),(22,'Terminador'),(23,'Enhancer'),(24,'Silencer');
/*!40000 ALTER TABLE `tipo_secuencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tipo_variante`
--

LOCK TABLES `tipo_variante` WRITE;
/*!40000 ALTER TABLE `tipo_variante` DISABLE KEYS */;
INSERT INTO `tipo_variante` VALUES (1,'SNP'),(2,'Inserción'),(3,'Deleción'),(4,'Duplicación'),(5,'Translocación'),(6,'Inversión'),(7,'Referencia');
/*!40000 ALTER TABLE `tipo_variante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `variante`
--

LOCK TABLES `variante` WRITE;
/*!40000 ALTER TABLE `variante` DISABLE KEYS */;
INSERT INTO `variante` VALUES (1,'exon 1',7,0,1,1),(2,'exon 2',7,0,1,2),(3,'exon 3',7,0,1,3),(4,'exon 4',7,0,1,4);
/*!40000 ALTER TABLE `variante` ENABLE KEYS */;
UNLOCK TABLES;

