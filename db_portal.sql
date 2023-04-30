SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

DROP DATABASE IF EXISTS `db_portal`;
CREATE DATABASE IF NOT EXISTS `db_portal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_portal`;

CREATE TABLE `aluno` (
  `codigo_aluno` int(11) NOT NULL,
  `nome_aluno` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `curso` (
  `codigo_curso` int(11) NOT NULL,
  `nome_curso` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `curso` (`codigo_curso`, `nome_curso`) VALUES
(1, 'CIÊNCIA DA COMPUTAÇÃO');

CREATE TABLE `login` (
  `codigo_login` int(11) NOT NULL,
  `nome_completo_login` varchar(100) NOT NULL,
  `nome_login` varchar(50) NOT NULL,
  `senha_login` varchar(32) NOT NULL,
  `tipo_login` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `login` (`codigo_login`, `nome_completo_login`, `nome_login`, `senha_login`, `tipo_login`) VALUES
(1, 'Administrador', 'admin', '202cb962ac59075b964b07152d234b70', 0),
(2, 'Aluno', 'aluno', '202cb962ac59075b964b07152d234b70', 1);


CREATE TABLE `professor` (
  `codigo_professor` int(11) NOT NULL,
  `nome_professor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `aluno`
  ADD PRIMARY KEY (`codigo_aluno`);


ALTER TABLE `curso`
  ADD PRIMARY KEY (`codigo_curso`),
  ADD UNIQUE KEY `nome_curso` (`nome_curso`);

ALTER TABLE `login`
  ADD PRIMARY KEY (`codigo_login`),
  ADD UNIQUE KEY `nome_login` (`nome_login`);

ALTER TABLE `professor`
  ADD PRIMARY KEY (`codigo_professor`);

ALTER TABLE `aluno`
  MODIFY `codigo_aluno` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `curso`
  MODIFY `codigo_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;


ALTER TABLE `login`
  MODIFY `codigo_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `professor`
  MODIFY `codigo_professor` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

