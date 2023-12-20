-- TABLE CREATION

CREATE TABLE `students` (
  `id` int NOT NULL,
  `degree_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `fiscal_code` char(16) NOT NULL,
  `enrolment_date` date NOT NULL,
  `registration_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `degrees` (
  `id` int NOT NULL,
  `department_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  PRIMARY KEY(`id`)
);

CREATE TABLE `departments` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `head_of_department` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

-- TABLE UPDATE

ALTER TABLE `degrees`
  ADD FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);


ALTER TABLE `students`
  ADD FOREIGN KEY (`degree_id`) REFERENCES `degrees` (`id`);

-- ENTERING DATAS

INSERT INTO `departments` (`id`, `name`, `address`, `phone`, `email`, `website`, `head_of_department`) VALUES
(1, 'name1', 'address1', 'phone1', 'email1', 'site1', 'tizioCaio1'),
(2, 'name2', 'address2', 'phone2', 'email2', 'site2', 'tizioCaio2'),
(3, 'name3', 'address3', 'phone3', 'email3', 'site3', 'tizioCaio3'),
(4, 'name4', 'address4', 'phone4', 'email4', 'site4', 'tizioCaio4');


INSERT INTO `degrees` (`id`, `department_id`, `name`, `level`, `address`, `email`, `website`) VALUES
(1, 1, 'name1', 'level1', 'address1', 'email1', 'site1'),
(2, 1, 'name2', 'level2', 'address2', 'email2', 'site2'),
(3, 2, 'name3', 'level3', 'address3', 'email3', 'site3');

INSERT INTO `students` (`id`, `degree_id`, `name`, `surname`, `date_of_birth`, `fiscal_code`, `enrolment_date`, `registration_number`, `email`) VALUES
(1, 1, 'name1', 'surname1', '2000-01-01', '0123456789ABCDEF', '2020-01-01', 'regCode1', 'email1'),
(2, 2, 'name2', 'surname2', '2000-01-01', '0123456789ABCDEF', '2020-01-01', 'regCode2', 'email2'),
(3, 2, 'name3', 'surname3', '2000-01-01', '0123456789ABCDEF', '2020-01-01', 'regCode3', 'email3'),
(4, 3, 'name4', 'surname4', '2000-01-01', '0123456789ABCDEF', '2020-01-01', 'regCode4', 'email4');


