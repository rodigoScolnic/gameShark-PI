-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: gameshark_db
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_category_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Deportes',NULL,NULL),(2,'Accion',NULL,NULL),(3,'Aventura',NULL,NULL),(4,'Accesorios',NULL,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platforms`
--

DROP TABLE IF EXISTS `platforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platforms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platforms`
--

LOCK TABLES `platforms` WRITE;
/*!40000 ALTER TABLE `platforms` DISABLE KEYS */;
INSERT INTO `platforms` VALUES (1,'PS',NULL,NULL),(2,'XBOX',NULL,NULL),(3,'PC',NULL,NULL),(4,'SWITCH',NULL,NULL);
/*!40000 ALTER TABLE `platforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `platform_id` int DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_category_idx` (`category_id`),
  KEY `product_platform_idx` (`platform_id`),
  CONSTRAINT `product_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `product_platform` FOREIGN KEY (`platform_id`) REFERENCES `platforms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'F1 2020',1,1,'F1 2020: El juego oficial del campeonato de F??rmula 1 regresa con su aclamado modo carrera, partidas en pantalla dividida, la temporada de la F2 2019 al completo y un mont??n de novedades con el modo Mi Equipo, que permite crear una escuder??a de la F1 desde cero, y desarrollarla a lo largo de las temporadas',6099,'product-1.jpg',NULL,'2021-05-17 17:08:28'),(2,'Cyberpunk 2077',2,1,'Cyberpunk 2077 es una historia de acci??n y aventuras en mundo abierto ambientada en Night City, una megal??polis obsesionada con el poder, el glamur y la modificaci??n corporal. Te pondr??s en la piel de V, un mercenario que persigue un implante ??nico: el secreto de la inmortalidad. Podr??s personalizar las mejoras, las habilidades y el estilo del personaje mientras exploras una vasta ciudad en donde tus decisiones afectan la historia y el mundo que te rodea.',5499,'product-2.jpg',NULL,'2021-05-17 17:02:09'),(3,'Spiderman Miles Morales',2,1,'Con este juego de Hombre Ara??a vas a disfrutar de horas de diversi??n y de nuevos desaf??os que te permitir??n mejorar como gamer.',4999,'product-3.jpg',NULL,'2021-05-17 16:40:09'),(4,'Fortnite',3,1,'Abraza tu lado oscuro, intensifica la batalla y desl??zate en las sombras con el lote Fuego oscuro. Incluye atuendos y mochilas retro legendarios, papeles ??picos, picos dobles raros y un gesto (s??lo en Batalla campal y el modo Creativo)',5099,'product-4.jpg',NULL,'2021-05-17 16:42:03'),(5,'Prey',2,3,'La investigaci??n de una extra??a raza alien??gena nos lleva a la estaci??n espacial Talos 1, donde la experimentaci??n con los Tif??n ha avanzado hasta el punto de crear el neuromod, un implante capaz de mejorar las habilidades de la humanidad e incluso ampliar su vida. Al final ocurre lo evidente al intentar controlar a una raza desconocida y, como el cient??fico Morgan Yu, tendremos que averiguar qu?? ha sucedido y c??mo evitar el desastre',3599,'product-5.jpg',NULL,'2021-05-17 16:37:40'),(6,'Tomb Raider',3,3,'Armada solo con su puro instinto y su habilidad f??sica casi sobrehumana, Lara Croft, la protagonista de Tomb Raider, nos embarca en una aventura sobre sus or??genes y de c??mo pas?? de ser una joven normal a una superviviente.\r\n',5199,'product-6.jpg',NULL,'2021-05-17 16:42:55'),(7,'Dishonored 2',2,3,'Segunda entrega del videojuego Dishonored creado por Arkane Studios, que apuesta por dos protagonistas y una ambientaci??n en Karnaka que tiene lugar 15 a??os despu??s del original. Su f??rmula de juego combina acci??n en primera persona, asesinatos, sigilo, movilidad y el brutal sistema de combate que vimos en Dishonored, pero mejorado.\r\n',2499,'product-7.jpg',NULL,'2021-04-30 21:10:34'),(8,'Call of Duty (Black Ops)',2,3,'Call of Duty??: Black Ops??? te lleva tras las l??neas enemigas como miembro de una unidad de fuerzas especiales de ??lite que participa en guerras encubiertas, operaciones clasificadas y conflictos explosivos por todo el planeta. Con acceso a armas y equipo exclusivos, tus acciones servir??n para inclinar la balanza en la ??poca m??s peligrosa que la humanidad jam??s haya conocido.',5399,'product-8.jpg',NULL,'2021-05-17 17:00:33'),(9,'Fifa 2021',1,2,'Fifa es el videojuego de f??tbol m??s vendido de la actualidad y con m??s de 25 a??os de desarrollo. Vas a poder jugar con tus equipos y futbolistas preferidos en diversos modos. ??Preparate para convertirte en campe??n de todas las copas y torneos!',4399,'product-9.jpg',NULL,NULL),(10,'Minecraft',3,2,'Minecraft es un videojuego l??der dentro del g??nero de la aventura y la acci??n, donde quien juega puede elegir entre supervivencia, creatividad y dificultad extrema. Gracias al casi infinito mundo de terrenos que presenta, es posible jugar durante horas y encontrar m??ltiples desaf??os.',3599,'product-10.jpg',NULL,NULL),(11,'Pes 2020',1,1,'Con este juego de Pro Evolution Soccer vas a disfrutar de horas de diversi??n y de nuevos desaf??os que te permitir??n mejorar como gamer.\r\n\r\nInteractu?? con otros jugadores\r\nPodr??s disfrutar de una experiencia inigualable, ya que te permite jugar con tus amistades y compartir momentos inolvidables.',5550,'product-11.jpg',NULL,'2021-05-17 17:03:29'),(12,'Mortal Kombat X',2,2,'Desde su primera edici??n, Mortal Kombat, revolucion?? el g??nero de pelea. Cada luchador tiene su historia de vida, sus trucos especiales y su estilo de combatir al rival, lo que convierte a esta franquicia en una de las m??s completas del g??nero.',3999,'product-12.jpg',NULL,'2021-05-17 16:38:51'),(18,'Zelda: Breath of the Wild',3,4,'Los juegos de la franquicia The Legend of Zelda marcaron un antes y despu??s en el g??nero de aventura. Convertite en Link para vencer a los villanos que hicieron de un pac??fico reino un lugar inmerso en las tinieblas.',5700,'product-1619816386935.jpg','2021-04-20 19:47:02','2021-04-30 20:59:47'),(20,'Joystick inal??mbrico Sony Dualshock 4',4,1,'Con Sony no solo podr??s ver y o??r todo con m??s detalle; tambi??n sentir??s vibraciones mucho m??s intensas.\r\nTom?? el control con m??s comodidad, disfrut?? de un sonido de alta fidelidad y gan?? precisi??n en el juego gracias a las mejoras en su dise??o y botones.\r\n',8799,'product-1619842269059.jpg','2021-04-30 19:26:45','2021-05-01 04:11:09'),(22,'Super Mario Party',3,4,'Con este juego de Mario podr??s disfrutar de una experiencia inigualable, ya que te permite jugar con tus amistades y compartir momentos inolvidables.',6500,'product-1619816077296.jpg','2021-04-30 19:48:17','2021-04-30 20:54:37'),(23,'Lego Jurassic World',3,4,'Excelente juego. Muy entretenido. En el vas a encontrar toda la saga de jurassic park',3999,'product-1619816918195.jpg','2021-04-30 19:49:24','2021-04-30 21:08:38'),(24,'Kit Vr Original + Gran Turismo',4,1,'PlayStation VR es un dispositivo de realidad virtual compatible tanto con PlayStation 4 como con los nuevos modelos PS4 Slim y PS4 Pro. Una nueva forma de jugar con la que los jugadores se sentir??n una mayor sensaci??n de inmersi??n que nunca.',74599,'product-1619817888160.jpg','2021-04-30 20:24:25','2021-04-30 21:24:48'),(29,'Auriculares gamer Logitech G Series G332',4,2,'Los auriculares Logitech G332 para gaming permiten o??r m??s de lo que pasa en el juego, con transductores grandes de 50 mm que ofrecen una reproducci??n de sonido completa. Disfruta de la experiencia completa de todos tus juegos favoritos.   ',5989,'product-1621274767216.jpg','2021-05-12 20:25:17','2021-05-17 18:06:07'),(36,'Nintendo Switch Joystick Inalambrico',4,4,'Joystick compatible Nintendo Switch, color negro azul tira decorativa en rojo y azul.',4789,'product-1621275314184.jpg','2021-05-16 19:34:20','2021-05-17 18:15:14'),(37,'Conector Auricular Bluetooth',4,4,'Es capaz de alcanzar una latencia inferior a 40 ms, lo que b??sicamente significa que sus o??dos no pueden distinguir el retraso de audio. (Aviso: el SBC est??ndar se usar?? cuando se usen auriculares / parlantes).\r\nUSB TYPE C y USB A: Plug and play, no se necesitan controladores adicionales. Con el puerto de entrega de energ??a tipo C 2.0, puede cargar mientras juega.',3700,'product-1621275442860.jpg','2021-05-16 19:37:23','2021-05-17 18:17:22');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `image` varchar(300) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Ragnar','Lodbrok','a@a.com','$2a$10$JGGJx1mfFkS3TTHFMk9w4uMyU6cHvY9DJ5BGIvhqbZ31pbIlKm8.C','user-1621279246978.jpg','2021-03-25 21:14:42','2021-05-17 19:20:47'),(14,'Seba','Rigeiro','seba_rigeiro@yahoo.com.ar','$2a$10$JGGJx1mfFkS3TTHFMk9w4uMyU6cHvY9DJ5BGIvhqbZ31pbIlKm8.C',NULL,'2021-04-13 19:12:10','2021-05-17 19:29:20'),(30,'Walter','White','walter@white.com','$2a$10$OVKFy/aIp4LFtQlCAnbUzON13qvbvBfLuPyl1fimL4s7GW3wcWbg.','user-1621045287124.jpg','2021-05-12 19:27:07','2021-05-17 19:26:11'),(31,'Saul','Goodman','saul@goodman.com','$2a$10$LaBX8LRrI1N81rje8aX7r.xl3rVBncIobNyNCShVjHJHEEPgLbU/S','user-1621050696798.jpg','2021-05-15 03:51:37','2021-05-17 19:26:44');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-17 16:31:50
