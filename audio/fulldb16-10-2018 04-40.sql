#
# TABLE STRUCTURE FOR: classes
#

DROP TABLE IF EXISTS `classes`;

CREATE TABLE `classes` (
  `code` varchar(7) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `professor_id_fk` int(11) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `classes` (`code`, `name`, `description`, `professor_id_fk`) VALUES ('hes0101', 'chemistry_1', 'Introduction of chemistry', 9);
INSERT INTO `classes` (`code`, `name`, `description`, `professor_id_fk`) VALUES ('hsi0101', 'history_1', 'Introduction of history', 3);
INSERT INTO `classes` (`code`, `name`, `description`, `professor_id_fk`) VALUES ('htm0101', 'html_1', 'Introduction of html', 6);
INSERT INTO `classes` (`code`, `name`, `description`, `professor_id_fk`) VALUES ('jav0101', 'java_1', 'Introduction of java', 10);
INSERT INTO `classes` (`code`, `name`, `description`, `professor_id_fk`) VALUES ('jou0101', 'journalism_1', 'Introduction of journalism', 4);
INSERT INTO `classes` (`code`, `name`, `description`, `professor_id_fk`) VALUES ('math010', 'physics_1', 'Introduction of mathmatics', 5);
INSERT INTO `classes` (`code`, `name`, `description`, `professor_id_fk`) VALUES ('med0101', 'medicine_1', 'Introduction of medicine', 2);
INSERT INTO `classes` (`code`, `name`, `description`, `professor_id_fk`) VALUES ('mus0101', 'music_1', 'Introduction of musical intrument', 7);
INSERT INTO `classes` (`code`, `name`, `description`, `professor_id_fk`) VALUES ('phy0101', 'physics_1', 'Introduction of physics', 1);
INSERT INTO `classes` (`code`, `name`, `description`, `professor_id_fk`) VALUES ('sql0101', 'mysql_1', 'Introduction of sql', 8);


#
# TABLE STRUCTURE FOR: professor
#

DROP TABLE IF EXISTS `professor`;

CREATE TABLE `professor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `department` enum('SCIENCE','HUMANITIES','MUSIC','JOURNALISM','HISTORY','MEDICINE') NOT NULL,
  `tenure` tinyint(1) NOT NULL,
  `date_started_work` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO `professor` (`id`, `name`, `department`, `tenure`, `date_started_work`) VALUES (1, 'Dr. sawkat hasan', 'SCIENCE', 1, '2017-12-01');
INSERT INTO `professor` (`id`, `name`, `department`, `tenure`, `date_started_work`) VALUES (2, 'Dr. matin voiya', 'SCIENCE', 0, '2017-12-11');
INSERT INTO `professor` (`id`, `name`, `department`, `tenure`, `date_started_work`) VALUES (3, 'Dr. john alexis', 'MEDICINE', 1, '2017-12-12');
INSERT INTO `professor` (`id`, `name`, `department`, `tenure`, `date_started_work`) VALUES (4, 'Dr. kamrul hasan', 'MEDICINE', 0, '2017-12-21');
INSERT INTO `professor` (`id`, `name`, `department`, `tenure`, `date_started_work`) VALUES (5, 'Dr. dulal hasan', 'HISTORY', 1, '2017-12-20');
INSERT INTO `professor` (`id`, `name`, `department`, `tenure`, `date_started_work`) VALUES (6, 'Dr. belalayet rahman', 'MUSIC', 1, '2017-12-30');
INSERT INTO `professor` (`id`, `name`, `department`, `tenure`, `date_started_work`) VALUES (7, 'Dr. rabeya aktar', 'HUMANITIES', 0, '2017-12-25');
INSERT INTO `professor` (`id`, `name`, `department`, `tenure`, `date_started_work`) VALUES (8, 'Dr. shetu das', 'JOURNALISM', 1, '2017-12-18');
INSERT INTO `professor` (`id`, `name`, `department`, `tenure`, `date_started_work`) VALUES (9, 'Dr. nila rahman', 'HUMANITIES', 1, '2017-12-13');
INSERT INTO `professor` (`id`, `name`, `department`, `tenure`, `date_started_work`) VALUES (10, 'Dr toma rahman', 'MUSIC', 1, '2017-12-19');


#
# TABLE STRUCTURE FOR: students
#

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('CURRENT','WAITTING','PASSED','FAILED') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (1, 'Kevon', '2001-11-01', '2018-07-04 14:57:34', 'CURRENT');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (2, 'Annalise', '2000-01-12', '2017-12-26 13:30:32', 'PASSED');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (3, 'Lucie', '2002-10-09', '2018-07-31 14:13:56', 'PASSED');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (4, 'Kaley', '2002-11-25', '2017-10-23 23:08:14', 'FAILED');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (5, 'Camille', '2002-12-06', '2018-06-22 07:08:50', 'CURRENT');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (6, 'Stefanie', '2000-04-19', '2017-11-11 20:04:21', 'PASSED');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (7, 'Ferne', '2001-06-28', '2017-10-31 18:00:17', 'CURRENT');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (8, 'Santos', '2001-07-04', '2018-08-17 18:25:34', 'WAITTING');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (9, 'Aurelie', '2002-01-17', '2018-03-19 01:45:41', 'CURRENT');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (10, 'Jana', '2002-09-09', '2018-06-14 14:16:41', 'FAILED');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (11, 'Geraldine', '2001-11-20', '2017-10-17 19:22:00', 'FAILED');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (12, 'Gerald', '2001-01-12', '2018-06-29 07:12:45', 'CURRENT');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (13, 'Janessa', '2001-04-25', '2018-05-06 04:23:01', 'PASSED');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (14, 'Estel', '2000-01-30', '2018-04-08 18:41:41', 'WAITTING');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (15, 'Ewell', '2002-05-14', '2018-06-06 10:50:35', 'WAITTING');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (16, 'Hipolito', '2002-11-18', '2018-03-25 15:46:35', 'WAITTING');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (17, 'Ambrose', '2000-11-24', '2018-07-13 10:40:10', 'WAITTING');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (18, 'Linwood', '2001-07-05', '2018-05-28 07:57:41', 'WAITTING');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (19, 'Kayley', '2001-02-09', '2018-08-01 19:51:26', 'PASSED');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (20, 'Dameon', '2002-12-10', '2018-01-09 10:48:37', 'PASSED');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (21, 'Burnice', '2001-10-20', '2018-03-23 20:11:44', 'FAILED');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (22, 'Daren', '2000-07-07', '2018-08-14 22:29:37', 'CURRENT');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (23, 'Jessyca', '2002-09-07', '2017-12-07 14:16:13', 'FAILED');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (24, 'Bessie', '2000-03-25', '2017-12-04 16:36:18', 'CURRENT');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (25, 'Kathlyn', '2002-02-03', '2018-07-16 00:55:12', 'CURRENT');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (26, 'Natalie', '2002-06-02', '2018-08-01 23:49:41', 'FAILED');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (27, 'Vincenza', '2001-09-19', '2018-03-21 02:06:54', 'CURRENT');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (28, 'Aleen', '2000-11-19', '2017-11-13 16:56:59', 'PASSED');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (29, 'Jairo', '2002-09-16', '2017-12-20 06:51:13', 'FAILED');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (30, 'Matilda', '2001-12-01', '2018-02-26 03:25:51', 'PASSED');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (31, 'Toby', '2000-11-16', '2018-01-14 01:19:59', 'WAITTING');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (32, 'Henri', '2000-03-08', '2018-08-12 11:05:16', 'CURRENT');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (33, 'Kendra', '2002-07-18', '2018-05-18 15:52:21', 'FAILED');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (34, 'Simone', '2002-02-13', '2018-01-27 12:45:36', 'WAITTING');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (35, 'Tyrel', '2002-06-27', '2018-04-03 11:45:37', 'FAILED');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (36, 'Abby', '2000-06-12', '2018-08-04 15:15:29', 'WAITTING');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (37, 'Kristina', '2000-08-18', '2018-06-26 21:02:24', 'CURRENT');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (38, 'Nelson', '2001-03-29', '2018-02-06 01:35:48', 'WAITTING');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (39, 'Arnold', '2002-06-15', '2018-05-08 23:09:39', 'FAILED');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (40, 'Fiona', '2001-08-17', '2018-04-12 07:26:46', 'PASSED');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (41, 'Gloria', '2002-08-22', '2018-06-22 18:31:44', 'PASSED');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (42, 'Eldred', '2001-01-24', '2018-01-07 16:55:36', 'FAILED');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (43, 'Alexis', '2001-11-08', '2018-02-01 22:50:19', 'WAITTING');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (44, 'Betty', '2002-06-28', '2018-08-25 09:31:41', 'FAILED');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (45, 'Heidi', '2000-11-10', '2018-01-06 15:21:53', 'PASSED');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (46, 'Leonora', '2001-01-18', '2018-06-19 09:37:27', 'CURRENT');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (47, 'Abelardo', '2000-02-05', '2018-10-01 20:59:45', 'CURRENT');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (48, 'Jayme', '2000-05-12', '2017-11-06 01:54:34', 'CURRENT');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (49, 'Amos', '2000-11-11', '2018-09-20 09:44:06', 'CURRENT');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (50, 'Bridget', '2000-08-15', '2018-01-19 11:50:23', 'WAITTING');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (51, 'Lionel', '2001-06-17', '2017-11-08 13:02:11', 'FAILED');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (52, 'Ernesto', '2000-11-15', '2018-06-03 19:04:37', 'CURRENT');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (53, 'Nedra', '2001-11-20', '2018-08-07 14:34:15', 'FAILED');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (54, 'Hazle', '2002-02-24', '2018-03-26 07:54:41', 'PASSED');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (55, 'Roxanne', '2001-04-12', '2018-09-16 02:31:47', 'WAITTING');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (56, 'Brady', '2001-12-20', '2018-03-10 23:31:07', 'FAILED');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (57, 'Johathan', '2001-05-16', '2018-03-01 16:31:27', 'CURRENT');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (58, 'Ismael', '2002-09-23', '2018-10-04 12:14:34', 'WAITTING');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (59, 'Maximo', '2002-06-12', '2017-11-25 21:41:56', 'WAITTING');
INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES (60, 'Tremaine', '2001-03-25', '2018-09-24 17:34:57', 'FAILED');


#
# TABLE STRUCTURE FOR: students_classes
#

DROP TABLE IF EXISTS `students_classes`;

CREATE TABLE `students_classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `students_id_fk` int(11) NOT NULL,
  `classes_id_fk` char(7) NOT NULL,
  `professor_id_fk` int(11) NOT NULL,
  `date_class_started` date NOT NULL,
  `date_class_end` date NOT NULL,
  `grade` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (1, 44, 'hes0101', 9, '2018-08-25', '2018-07-18', 87);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (2, 34, 'hsi0101', 7, '2017-12-24', '2017-11-17', 82);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (3, 58, 'htm0101', 7, '2018-01-06', '2018-06-20', 78);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (4, 25, 'jav0101', 4, '2018-04-21', '2018-08-02', 49);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (5, 33, 'jou0101', 6, '2018-03-18', '2018-09-15', 55);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (6, 6, 'math010', 2, '2018-05-25', '2017-12-18', 60);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (7, 40, 'med0101', 10, '2018-03-23', '2018-06-13', 79);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (8, 39, 'mus0101', 3, '2018-03-11', '2018-08-06', 50);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (9, 50, 'phy0101', 1, '2017-12-21', '2018-03-13', 97);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (10, 28, 'sql0101', 3, '2018-04-05', '2018-02-15', 61);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (11, 40, 'hes0101', 7, '2017-11-16', '2018-07-11', 94);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (12, 20, 'hsi0101', 6, '2018-08-20', '2017-12-13', 95);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (13, 57, 'htm0101', 9, '2018-01-19', '2018-01-26', 88);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (14, 24, 'jav0101', 4, '2018-09-06', '2018-03-14', 75);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (15, 1, 'jou0101', 4, '2018-08-14', '2018-03-16', 38);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (16, 57, 'math010', 7, '2018-02-13', '2018-01-19', 98);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (17, 59, 'med0101', 10, '2017-12-15', '2018-09-14', 50);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (18, 55, 'mus0101', 9, '2017-10-19', '2018-07-13', 38);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (19, 32, 'phy0101', 9, '2018-07-05', '2018-01-09', 53);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (20, 51, 'sql0101', 10, '2018-04-02', '2018-01-10', 70);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (21, 2, 'hes0101', 7, '2018-07-19', '2018-08-17', 88);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (22, 57, 'hsi0101', 7, '2018-09-21', '2018-03-18', 67);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (23, 30, 'htm0101', 6, '2018-02-15', '2018-05-19', 38);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (24, 37, 'jav0101', 9, '2018-04-23', '2017-11-10', 45);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (25, 40, 'jou0101', 1, '2018-05-11', '2018-08-03', 57);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (26, 53, 'math010', 5, '2017-11-21', '2018-06-16', 97);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (27, 16, 'med0101', 9, '2018-10-04', '2017-11-22', 49);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (28, 7, 'mus0101', 5, '2018-02-16', '2017-11-20', 73);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (29, 57, 'phy0101', 1, '2018-08-17', '2018-05-07', 67);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (30, 12, 'sql0101', 6, '2018-07-01', '2018-02-08', 45);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (31, 39, 'hes0101', 8, '2018-05-09', '2018-05-31', 53);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (32, 19, 'hsi0101', 10, '2018-04-18', '2018-05-23', 85);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (33, 7, 'htm0101', 3, '2018-04-13', '2018-02-12', 99);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (34, 37, 'jav0101', 9, '2018-07-07', '2018-09-11', 44);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (35, 6, 'jou0101', 3, '2018-10-14', '2018-07-09', 97);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (36, 60, 'math010', 3, '2018-05-07', '2018-05-09', 66);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (37, 13, 'med0101', 4, '2018-09-23', '2018-04-23', 87);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (38, 28, 'mus0101', 1, '2017-10-21', '2018-05-19', 91);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (39, 15, 'phy0101', 8, '2018-03-01', '2017-11-12', 91);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (40, 11, 'sql0101', 8, '2018-08-24', '2018-01-20', 80);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (41, 60, 'hes0101', 6, '2018-01-24', '2018-04-16', 100);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (42, 22, 'hsi0101', 9, '2017-12-23', '2017-12-20', 32);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (43, 12, 'htm0101', 7, '2018-02-06', '2018-04-18', 69);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (44, 48, 'jav0101', 3, '2017-11-07', '2018-03-28', 53);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (45, 9, 'jou0101', 6, '2018-09-17', '2017-12-15', 56);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (46, 57, 'math010', 6, '2018-05-15', '2018-07-25', 78);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (47, 12, 'med0101', 10, '2017-11-27', '2018-01-24', 40);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (48, 52, 'mus0101', 5, '2017-12-09', '2018-06-07', 55);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (49, 24, 'phy0101', 5, '2018-05-20', '2018-05-10', 61);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (50, 9, 'sql0101', 1, '2018-07-15', '2017-11-07', 99);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (51, 58, 'hes0101', 2, '2018-10-09', '2018-07-15', 34);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (52, 47, 'hsi0101', 4, '2018-03-10', '2018-07-01', 60);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (53, 43, 'htm0101', 5, '2018-03-31', '2018-09-02', 37);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (54, 44, 'jav0101', 1, '2018-07-27', '2018-01-21', 75);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (55, 48, 'jou0101', 1, '2018-10-09', '2018-02-13', 99);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (56, 6, 'math010', 3, '2018-06-09', '2018-04-12', 62);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (57, 51, 'med0101', 4, '2018-02-24', '2018-01-22', 50);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (58, 60, 'mus0101', 7, '2017-11-25', '2017-12-06', 61);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (59, 10, 'phy0101', 6, '2018-09-25', '2018-06-21', 30);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (60, 12, 'sql0101', 2, '2018-05-22', '2018-07-24', 65);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (61, 41, 'hes0101', 9, '2018-01-21', '2017-12-26', 55);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (62, 30, 'hsi0101', 10, '2018-05-29', '2018-04-08', 97);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (63, 48, 'htm0101', 9, '2018-08-31', '2018-02-27', 55);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (64, 4, 'jav0101', 8, '2018-02-25', '2018-02-23', 54);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (65, 50, 'jou0101', 6, '2018-02-15', '2018-07-12', 54);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (66, 60, 'math010', 8, '2018-02-10', '2017-12-24', 86);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (67, 38, 'med0101', 9, '2017-10-31', '2018-02-04', 30);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (68, 50, 'mus0101', 3, '2018-09-09', '2017-10-28', 39);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (69, 9, 'phy0101', 4, '2017-12-24', '2017-11-17', 56);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (70, 59, 'sql0101', 4, '2018-05-09', '2018-08-13', 94);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (71, 33, 'hes0101', 3, '2018-02-20', '2018-07-10', 60);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (72, 23, 'hsi0101', 8, '2018-09-12', '2017-11-12', 66);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (73, 10, 'htm0101', 2, '2018-08-03', '2018-01-10', 76);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (74, 12, 'jav0101', 4, '2018-05-03', '2018-01-28', 100);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (75, 55, 'jou0101', 4, '2018-05-30', '2018-07-30', 32);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (76, 53, 'math010', 4, '2018-01-06', '2017-10-16', 53);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (77, 26, 'med0101', 3, '2017-11-18', '2018-09-27', 95);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (78, 12, 'mus0101', 2, '2018-03-09', '2017-12-08', 98);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (79, 23, 'phy0101', 8, '2018-09-14', '2018-08-27', 74);
INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES (80, 13, 'sql0101', 7, '2018-01-06', '2018-10-15', 79);


