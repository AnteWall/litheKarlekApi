PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
INSERT INTO "schema_migrations" VALUES('20150218002913');
INSERT INTO "schema_migrations" VALUES('20150218142734');
INSERT INTO "schema_migrations" VALUES('20150218185418');
INSERT INTO "schema_migrations" VALUES('20150218192736');
INSERT INTO "schema_migrations" VALUES('20150219123516');
INSERT INTO "schema_migrations" VALUES('20150219123552');
INSERT INTO "schema_migrations" VALUES('20150220090918');
INSERT INTO "schema_migrations" VALUES('20150220091705');
INSERT INTO "schema_migrations" VALUES('20150220101335');
INSERT INTO "schema_migrations" VALUES('20150220101423');
INSERT INTO "schema_migrations" VALUES('20150220101952');
CREATE TABLE "educations" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "image_path" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO "educations" VALUES(1,'Affärsjuridik',NULL,'2015-02-18 19:00:22.296846','2015-02-18 19:00:22.296846');
INSERT INTO "educations" VALUES(2,'Affärsjuridik med Europainriktning',NULL,'2015-02-18 19:00:22.420664','2015-02-18 19:00:22.420664');
INSERT INTO "educations" VALUES(3,'Arbetsterapeutprogrammet',NULL,'2015-02-18 19:00:22.554081','2015-02-18 19:00:22.554081');
INSERT INTO "educations" VALUES(4,'Asienkunskap - inriktning Japan',NULL,'2015-02-18 19:00:22.720882','2015-02-18 19:00:22.720882');
INSERT INTO "educations" VALUES(5,'Asienkunskap - inriktning Kina',NULL,'2015-02-18 19:00:22.887468','2015-02-18 19:00:22.887468');
INSERT INTO "educations" VALUES(6,'Basår',NULL,'2015-02-18 19:00:23.032059','2015-02-18 19:00:23.032059');
INSERT INTO "educations" VALUES(7,'Biologi',NULL,'2015-02-18 19:00:23.198798','2015-02-18 19:00:23.198798');
INSERT INTO "educations" VALUES(8,'Biomedicinska analytikerprogrammet',NULL,'2015-02-18 19:00:23.343495','2015-02-18 19:00:23.343495');
INSERT INTO "educations" VALUES(9,'Civilekonom',NULL,'2015-02-18 19:00:23.487974','2015-02-18 19:00:23.487974');
INSERT INTO "educations" VALUES(10,'Civilekonom, internationell',NULL,'2015-02-18 19:00:23.632581','2015-02-18 19:00:23.632581');
INSERT INTO "educations" VALUES(11,'Civilingenjör i datateknik','img/sections/d_sek.png','2015-02-18 19:00:23.766244','2015-02-19 17:31:34.502187');
INSERT INTO "educations" VALUES(12,'Civilingenjör i design och produktutveckling',NULL,'2015-02-18 19:00:23.899728','2015-02-18 19:00:23.899728');
INSERT INTO "educations" VALUES(13,'Civilingenjör i elektronikdesign',NULL,'2015-02-18 19:00:24.033303','2015-02-18 19:00:24.033303');
INSERT INTO "educations" VALUES(14,'Civilingenjör i energi - miljö - management',NULL,'2015-02-18 19:00:24.166902','2015-02-18 19:00:24.166902');
INSERT INTO "educations" VALUES(15,'Civilingenjör i industriell ekonomi','img/sections/i_sek.png','2015-02-18 19:00:24.300394','2015-02-19 17:28:37.919090');
INSERT INTO "educations" VALUES(16,'Civilingenjör i industriell ekonomi, internationell','img/sections/i_sek.png','2015-02-18 19:00:24.434887','2015-02-19 17:29:01.426683');
INSERT INTO "educations" VALUES(17,'Civilingenjör i informationsteknologi','img/sections/d_sek.png','2015-02-18 19:00:24.568550','2015-02-19 17:31:25.754545');
INSERT INTO "educations" VALUES(18,'Civilingenjör i kemisk biologi','img/sections/tbi_sek.png','2015-02-18 19:00:24.702194','2015-02-19 17:31:19.939844');
INSERT INTO "educations" VALUES(19,'Civilingenjör i kommunikation, transport och samhälle',NULL,'2015-02-18 19:00:24.868902','2015-02-18 19:00:24.868902');
INSERT INTO "educations" VALUES(20,'Civilingenjör i maskinteknik',NULL,'2015-02-18 19:00:25.013519','2015-02-18 19:00:25.013519');
INSERT INTO "educations" VALUES(21,'Civilingenjör i medicinsk teknik','img/sections/y_sek.png','2015-02-18 19:00:25.157905','2015-02-19 17:31:15.153297');
INSERT INTO "educations" VALUES(22,'Civilingenjör i medieteknik',NULL,'2015-02-18 19:00:25.336100','2015-02-18 19:00:25.336100');
INSERT INTO "educations" VALUES(23,'Civilingenjör i mjukvaruteknik','img/sections/d_sek.png','2015-02-18 19:00:25.491750','2015-02-19 17:31:10.982026');
INSERT INTO "educations" VALUES(24,'Civilingenjör i teknisk biologi','img/sections/tbi_sek.png','2015-02-18 19:00:25.647389','2015-02-19 17:31:03.215867');
INSERT INTO "educations" VALUES(25,'Civilingenjör i teknisk fysik och elektroteknik','img/sections/y_sek.png','2015-02-18 19:00:25.802989','2015-02-19 17:30:58.618030');
INSERT INTO "educations" VALUES(26,'Civilingenjör i teknisk fysik och elektroteknik, internationell','img/sections/y_sek.png','2015-02-18 19:00:25.947591','2015-02-19 17:30:54.003264');
INSERT INTO "educations" VALUES(27,'Flygtransport och logistik',NULL,'2015-02-18 19:00:26.091860','2015-02-18 19:00:26.091860');
INSERT INTO "educations" VALUES(28,'Folkhögskollärare',NULL,'2015-02-18 19:00:26.236845','2015-02-18 19:00:26.236845');
INSERT INTO "educations" VALUES(29,'Fysik och nanovetenskap',NULL,'2015-02-18 19:00:26.381315','2015-02-18 19:00:26.381315');
INSERT INTO "educations" VALUES(30,'Fysioterapeutprogrammet',NULL,'2015-02-18 19:00:26.526030','2015-02-18 19:00:26.526030');
INSERT INTO "educations" VALUES(31,'Förskollärare',NULL,'2015-02-18 19:00:26.670512','2015-02-18 19:00:26.670512');
INSERT INTO "educations" VALUES(32,'Grafisk design och kommunikation',NULL,'2015-02-18 19:00:26.838370','2015-02-18 19:00:26.838370');
INSERT INTO "educations" VALUES(33,'Högskoleingenjör i byggnadsteknik','img/sections/n_sek.png','2015-02-18 19:00:27.015897','2015-02-19 17:32:05.939624');
INSERT INTO "educations" VALUES(34,'Högskoleingenjör i datateknik','img/sections/ling_sek.png','2015-02-18 19:00:27.171886','2015-02-19 17:32:01.563008');
INSERT INTO "educations" VALUES(35,'Högskoleingenjör i elektronik','img/sections/ling_sek.png','2015-02-18 19:00:27.383588','2015-02-19 17:31:57.121086');
INSERT INTO "educations" VALUES(36,'Högskoleingenjör i kemisk analysteknik','img/sections/ling_sek.png','2015-02-18 19:00:27.539473','2015-02-19 17:31:51.909344');
INSERT INTO "educations" VALUES(37,'Högskoleingenjör i maskinteknik','img/sections/ling_sek.png','2015-02-18 19:00:27.694914','2015-02-19 17:31:41.651384');
INSERT INTO "educations" VALUES(38,'Innovativ programmering','img/sections/d_sek.png','2015-02-18 19:00:27.850951','2015-02-19 17:31:46.626138');
INSERT INTO "educations" VALUES(39,'Kemi - molekylär design',NULL,'2015-02-18 19:00:27.995359','2015-02-18 19:00:27.995359');
INSERT INTO "educations" VALUES(40,'Kognitionsvetenskap',NULL,'2015-02-18 19:00:28.139675','2015-02-18 19:00:28.139675');
INSERT INTO "educations" VALUES(41,'Kultur, samhälle, mediegestaltning',NULL,'2015-02-18 19:00:28.284570','2015-02-18 19:00:28.284570');
INSERT INTO "educations" VALUES(42,'Kulturvetenskap',NULL,'2015-02-18 19:00:28.429086','2015-02-18 19:00:28.429086');
INSERT INTO "educations" VALUES(43,'Logopedprogrammet',NULL,'2015-02-18 19:00:28.573070','2015-02-18 19:00:28.573070');
INSERT INTO "educations" VALUES(44,'Läkarprogrammet',NULL,'2015-02-18 19:00:28.763009','2015-02-18 19:00:28.763009');
INSERT INTO "educations" VALUES(45,'Lärare i fritidshem',NULL,'2015-02-18 19:00:28.907622','2015-02-18 19:00:28.907622');
INSERT INTO "educations" VALUES(46,'Lärare i årskurs F-3',NULL,'2015-02-18 19:00:29.086602','2015-02-18 19:00:29.086602');
INSERT INTO "educations" VALUES(47,'Lärare i årskurs 4-6',NULL,'2015-02-18 19:00:29.264313','2015-02-18 19:00:29.264313');
INSERT INTO "educations" VALUES(48,'Matematik',NULL,'2015-02-18 19:00:29.419974','2015-02-18 19:00:29.419974');
INSERT INTO "educations" VALUES(49,'Medicinsk biologi',NULL,'2015-02-18 19:00:29.597967','2015-02-18 19:00:29.597967');
INSERT INTO "educations" VALUES(50,'Miljövetare',NULL,'2015-02-18 19:00:29.753710','2015-02-18 19:00:29.753710');
INSERT INTO "educations" VALUES(51,'Möbeldesign - Carl Malmsten Furniture Studies',NULL,'2015-02-18 19:00:29.909361','2015-02-18 19:00:29.909361');
INSERT INTO "educations" VALUES(52,'Möbelkonservering - Carl Malmsten Furniture Studies',NULL,'2015-02-18 19:00:30.064973','2015-02-18 19:00:30.064973');
INSERT INTO "educations" VALUES(53,'Möbelsnickeri - Carl Malmsten Furniture Studies',NULL,'2015-02-18 19:00:30.209657','2015-02-18 19:00:30.209657');
INSERT INTO "educations" VALUES(54,'Möbeltapetsering - Carl Malmsten Furniture Studies',NULL,'2015-02-18 19:00:30.353524','2015-02-18 19:00:30.353524');
INSERT INTO "educations" VALUES(55,'Personal- och arbetsvetenskap',NULL,'2015-02-18 19:00:30.498875','2015-02-18 19:00:30.498875');
INSERT INTO "educations" VALUES(56,'Politices kandidat',NULL,'2015-02-18 19:00:30.643500','2015-02-18 19:00:30.643500');
INSERT INTO "educations" VALUES(57,'Psykolog',NULL,'2015-02-18 19:00:30.787128','2015-02-18 19:00:30.787128');
INSERT INTO "educations" VALUES(58,'Samhällets logistik',NULL,'2015-02-18 19:00:31.131602','2015-02-18 19:00:31.131602');
INSERT INTO "educations" VALUES(59,'Samhälls- och kulturanalys',NULL,'2015-02-18 19:00:31.420540','2015-02-18 19:00:31.420540');
INSERT INTO "educations" VALUES(60,'Sjuksköterskeprogrammet',NULL,'2015-02-18 19:00:31.653637','2015-02-18 19:00:31.653637');
INSERT INTO "educations" VALUES(61,'Slöjd, hantverk och formgivning',NULL,'2015-02-18 19:00:31.897911','2015-02-18 19:00:31.897911');
INSERT INTO "educations" VALUES(62,'Socionom',NULL,'2015-02-18 19:00:32.087539','2015-02-18 19:00:32.087539');
INSERT INTO "educations" VALUES(63,'Statistik- och dataanalys',NULL,'2015-02-18 19:00:32.243423','2015-02-18 19:00:32.243423');
INSERT INTO "educations" VALUES(64,'Systemvetenskap',NULL,'2015-02-18 19:00:32.399100','2015-02-18 19:00:32.399100');
INSERT INTO "educations" VALUES(65,'Turism - Inriktning mot kulturarv och naturmiljö',NULL,'2015-02-18 19:00:32.554713','2015-02-18 19:00:32.554713');
INSERT INTO "educations" VALUES(66,'Yrkeslärare',NULL,'2015-02-18 19:00:32.710473','2015-02-18 19:00:32.710473');
INSERT INTO "educations" VALUES(67,'Ämneslärare i gymnasieskolan',NULL,'2015-02-18 19:00:32.854953','2015-02-18 19:00:32.854953');
INSERT INTO "educations" VALUES(68,'Ämneslärare i årskurs 7-9',NULL,'2015-02-18 19:00:32.999487','2015-02-18 19:00:32.999487');
INSERT INTO "educations" VALUES(69,'Applied Ethics',NULL,'2015-02-18 19:00:33.144052','2015-02-18 19:00:33.144052');
INSERT INTO "educations" VALUES(70,'Applied Ethology and Animal Biology',NULL,'2015-02-18 19:00:33.288638','2015-02-18 19:00:33.288638');
INSERT INTO "educations" VALUES(71,'Avancerad specialistsjuksköterska, inriktning kirurgisk vård',NULL,'2015-02-18 19:00:33.566152','2015-02-18 19:00:33.566152');
INSERT INTO "educations" VALUES(72,'Biomedical Engineering',NULL,'2015-02-18 19:00:33.766022','2015-02-18 19:00:33.766022');
INSERT INTO "educations" VALUES(73,'Business Administration - Strategy and Management in International Organisations',NULL,'2015-02-18 19:00:34.020863','2015-02-18 19:00:34.020863');
INSERT INTO "educations" VALUES(74,'Child Studies',NULL,'2015-02-18 19:00:34.176700','2015-02-18 19:00:34.176700');
INSERT INTO "educations" VALUES(75,'Communication Systems',NULL,'2015-02-18 19:00:34.321471','2015-02-18 19:00:34.321471');
INSERT INTO "educations" VALUES(76,'Computer Science',NULL,'2015-02-18 19:00:34.465974','2015-02-18 19:00:34.465974');
INSERT INTO "educations" VALUES(77,'Datavetenskap','img/sections/d_sek.pn','2015-02-18 19:00:34.643659','2015-02-19 17:30:40.929300');
INSERT INTO "educations" VALUES(78,'Ecology and the Environment',NULL,'2015-02-18 19:00:34.821532','2015-02-18 19:00:34.821532');
INSERT INTO "educations" VALUES(88,'Kognitionsvetenskap',NULL,'2015-02-18 19:00:36.500821','2015-02-18 19:00:36.500821');
INSERT INTO "educations" VALUES(91,'Matematik',NULL,'2015-02-18 19:00:36.978795','2015-02-18 19:00:36.978795');
INSERT INTO "educations" VALUES(93,'Mechanical Engineering',NULL,'2015-02-18 19:00:37.611933','2015-02-18 19:00:37.611933');
INSERT INTO "educations" VALUES(94,'Nationalekonomi',NULL,'2015-02-18 19:00:37.856073','2015-02-18 19:00:37.856073');
INSERT INTO "educations" VALUES(97,'Samhälls- och välfärdsstudier',NULL,'2015-02-18 19:00:38.324106','2015-02-18 19:00:38.324106');
INSERT INTO "educations" VALUES(100,'Statsvetenskap',NULL,'2015-02-18 19:00:38.757982','2015-02-18 19:00:38.757982');
INSERT INTO "educations" VALUES(101,'Aspirantutbildning - allmän inriktning',NULL,'2015-02-18 19:00:38.902476','2015-02-18 19:00:38.902476');
INSERT INTO "educations" VALUES(103,'Biomedicinsk analytiker',NULL,'2015-02-18 19:00:39.191573','2015-02-18 19:00:39.191573');
INSERT INTO "educations" VALUES(104,'Psykoterapeut',NULL,'2015-02-18 19:00:39.336149','2015-02-18 19:00:39.336149');
CREATE TABLE "images" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer, "created_at" datetime, "updated_at" datetime, "file_file_name" varchar(255), "file_content_type" varchar(255), "file_file_size" integer, "file_updated_at" datetime);
INSERT INTO "images" VALUES(17,2,'2015-02-20 10:32:56.827045','2015-02-20 10:32:56.827045','150108_Skoltrojor_0388_copy.jpg','image/jpeg',129951,'2015-02-20 10:32:56.747008');
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_token" varchar(255), "description" text(255), "created_at" datetime, "updated_at" datetime, "name" varchar(255), "education_id" integer, "frozen_account" boolean DEFAULT 'f', "gender" varchar(255) DEFAULT 'Man');
INSERT INTO "users" VALUES(1,'facebook|10205251807389886','Ante heter jag och här en en  kort presentation som visar att man kan uppdatera sin profil vilket är så sjuuuuuukt coolt eller hur?!','2015-02-18 00:35:45.283827','2015-02-20 10:23:12.179592','Ante Wall',38,'f','Man');
INSERT INTO "users" VALUES(2,'','Jag är testtjej nummer 1','2015-02-20 10:31:41.339983','2015-02-20 10:31:41.339983','Klara Andersson',24,'f','Kvinna');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('educations',114);
INSERT INTO "sqlite_sequence" VALUES('images',17);
INSERT INTO "sqlite_sequence" VALUES('users',2);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
COMMIT;
