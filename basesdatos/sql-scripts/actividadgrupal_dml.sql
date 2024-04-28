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


--
-- Dumping data for table `alelo`
--

LOCK TABLES `alelo` WRITE;
/*!40000 ALTER TABLE `alelo` DISABLE KEYS */;
INSERT INTO `alelo` VALUES (1,'wt','ZNF398 - wt','Alelo salvaje del gen ZNF398',1),(2,'mut','ZNF398 - wt','Alelo mutante del gen ZNF398',1);
/*!40000 ALTER TABLE `alelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `anotacion`
--

LOCK TABLES `anotacion` WRITE;
/*!40000 ALTER TABLE `anotacion` DISABLE KEYS */;
INSERT INTO `anotacion` VALUES (1,'funcional','	Molecular Function	DNA-binding transcription repressor activity, RNA polymerase II-specific',1),(2,'expresion','Expressed in buccal mucosa cell and 187 other cell types or tissues',1),(3,'clinica','Relacionada algunos tipos de cancer',1);
/*!40000 ALTER TABLE `anotacion` ENABLE KEYS */;
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
-- Dumping data for table `estudio`
--

LOCK TABLES `estudio` WRITE;
/*!40000 ALTER TABLE `estudio` DISABLE KEYS */;
INSERT INTO `estudio` VALUES (1,'The transcriptional regulator ZNF398 mediates pluripotency and epithelial character downstream of TGF-beta in human PSCs ','2020-05-12','NATC/162'),(3,'p52-ZER6: a determinant of tumor cell sensitivity to MDM2-p53 binding inhibitors ','2022-08-22','APHS/973');
/*!40000 ALTER TABLE `estudio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estudio_has_gen`
--

LOCK TABLES `estudio_has_gen` WRITE;
/*!40000 ALTER TABLE `estudio_has_gen` DISABLE KEYS */;
INSERT INTO `estudio_has_gen` VALUES (1,1);
/*!40000 ALTER TABLE `estudio_has_gen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `gen`
--

LOCK TABLES `gen` WRITE;
/*!40000 ALTER TABLE `gen` DISABLE KEYS */;
INSERT INTO `gen` VALUES (1,'ZNF398','Zinc finger protein 398');
/*!40000 ALTER TABLE `gen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `secuencia`
--

LOCK TABLES `secuencia` WRITE;
/*!40000 ALTER TABLE `secuencia` DISABLE KEYS */;
INSERT INTO `secuencia` VALUES (1,'+',1,'gcactcgctgcccacaaagcgccagctgaggggccgctgcgggtggagtgcggcggagtcggcctcgcgaccccagcttgatccgccgcctgctgcaccgcgcctccgccgcgttcctgcgcgtcccgagccccgacggccgcgtgagtcccgtccgtgcggggaaggcagggccgggtcggcgccgcctgtggagaggacccggcggccgggcctgcttggagccgggcgcggtggcagcggcggcagcggcggcgacttccgaggcccgggctagacagcgcagggccatggctgaggcggccccggccccg',13),(2,'+',2,'acatctgaatgggactccgagtgccttacatccctgcagccccttcctcttcctacacccccagcagcaaatgaggcacacctgcagacagcagctatctctctgtggacagtggtggccgccgtgcaggctatagagaggaaggtggagatccacagccggcgactcctacacctggaaggtcggacagggacagcagagaagaaactagccagctgtgaaaagacagttaccgagcttgggaaccagctggagggcaagtgggccgtgctgggaaccctgctgcaggagtacgggctgctgcagaggcggctggagaacttggagaacctgctgcgcaacaggaacttctggatcctgcggctccctccaggtattaagggagatatcccaaag',13),(3,'+',3,'gtgcctgtggcatttgatgatgtctccatctacttttccactccagagtgggaaaaattagaagaatggcaaaaggaactttacaagaatatcatgaagggcaactacgagtctctcatctccatgg',13),(4,'+',4,'attatgctataaatcaacctgatgtcttatctcagattcaaccagaaggggaacataatacagaggaccaggcagggccagaggaaagtgagattcccacagaccccagtgaag',13),(5,'+',4,'attatgctatGaatcaacctgatgtcttatctcagattcaaccagaaggggaacataatacagaggaccaggcagggccagaggaaagtgagattcccacagaccccagtgaag',13),(6,'+',4,'attatgctatGaatcaacctgatgtcttatctcagattcaaccagaaggggaacataatacagaggaccaggcagggccagaggaaagtgagattcccacagaccccagtgaag',13),(7,'+',4,'attatgctatGaatcaacctgatgtcttatctcagattcaaccagaaggggaacataatacagaggaccaggcagggccagaggaaagtgagattcccacagaccccagtgaag',13),(8,'+',4,'attatgctatGaatcaacctgatgtcttatctcagattcaaccagaaggggaacataatacagaggaccaggcagggccagaggaaagtgagattcccacagaccccagtgaag',13);
/*!40000 ALTER TABLE `secuencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tipo_anotacion`
--

LOCK TABLES `tipo_anotacion` WRITE;
/*!40000 ALTER TABLE `tipo_anotacion` DISABLE KEYS */;
INSERT INTO `tipo_anotacion` VALUES (1,'Funciónal'),(2,'Estructural'),(3,'De expresion'),(4,'De variación'),(5,'De regulación'),(6,'De conservación'),(7,'Clínica'),(8,'De interacción'),(9,'De localización');
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
INSERT INTO `variante` VALUES (1,'exon 1',7,0,1,1),(2,'exon 2',7,0,1,2),(3,'exon 3',7,0,1,3),(4,'exon 4',7,0,1,4),(8,'exon 3 SNP 6 T>G',1,6,2,5),(9,'exon 4 SNP 10 A>G',1,10,2,6);
/*!40000 ALTER TABLE `variante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `variante_has_estudio`
--

LOCK TABLES `variante_has_estudio` WRITE;
/*!40000 ALTER TABLE `variante_has_estudio` DISABLE KEYS */;
INSERT INTO `variante_has_estudio` VALUES (8,1),(9,1);
/*!40000 ALTER TABLE `variante_has_estudio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
