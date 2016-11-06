-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 06-Nov-2016 às 17:16
-- Versão do servidor: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sis`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `atividade`
--

CREATE TABLE `atividade` (
  `id` int(11) NOT NULL,
  `idade` int(11) NOT NULL,
  `nome` text NOT NULL,
  `doses` varchar(250) NOT NULL,
  `combate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `atividade`
--

INSERT INTO `atividade` (`id`, `idade`, `nome`, `doses`, `combate`) VALUES
(1, 0, 'BCG', 'Dose única', 'Formas graves de tuberculose'),
(2, 0, 'Hepatite B (recombinante)', 'dose ao nascer', 'Hepatite B'),
(3, 2, 'Penta: Vacina adsorvida DTP + Hib (conjugada) + HB (recombinante).', '1ª dose', 'Difteria, tétano, coqueluche, meningite e outras infecções causadas pelo Haemophilus influenzae tipo b, Hepatite B.'),
(4, 2, 'VIP 1, 2 e 3 (vacina inativada contra pólio - injetável)', '1ª dose', 'Poliomielite (paralisia infantil)'),
(5, 2, 'Vacina Pneumocócica 10-valente (conjugada)', '1ª dose', 'Pneumonia, otite, meningite e outras doenças causadas pelo Pneumococo'),
(7, 2, 'VORH G1P1 [8] atenuada (Vacina Oral de Rotavírus Humano)', '1ª dose', 'Diarreia e desidratação causada por rotavírus'),
(8, 3, 'Vacina Meningocócica C (conjugada)', '1ª dose', 'Doença invasiva causada por Neisseria meningitidis do sorogrupo C'),
(10, 4, 'Penta: Vacina adsorvida DTP + Hib (conjugada) + HB (recombinante).', '2ª dose', 'Difteria, tétano, coqueluche, meningite e outras infecções causadas pelo Haemophilus influenzae tipo b, Hepatite B.'),
(11, 4, 'VIP 1, 2 e 3 (vacina inativada contra pólio - injetável)', '2ª dose', 'Poliomielite (paralisia infantil)'),
(12, 4, 'Vacina Pneumocócica 10-valente (conjugada)', '2ª dose', 'Pneumonia, otite, meningite e outras doenças causadas pelo Pneumococo'),
(13, 4, 'VORH G1P1 [8] atenuada (Vacina Oral de Rotavírus Humano)', '2ª dose', 'Diarreia e desidratação causada por rotavírus'),
(14, 5, 'Vacina Meningocócica C (conjugada)', '2ª dose', 'Doença invasiva causada por Neisseria meningitidis do sorogrupo C'),
(15, 6, 'Penta: Vacina adsorvida DTP + Hib (conjugada) + HB (recombinante)', '3ª dose', 'Difteria, tétano, coqueluche, meningite e outras infecções causadas pelo Haemophilus influenzae tipo b, Hepatite B'),
(16, 6, 'VIP 1, 2 e 3 (vacina inativada contra pólio - injetável)', '3ª dose', 'Poliomielite (paralisia infantil)'),
(17, 9, 'Febre amarela (atenuada)', 'dose inicial', 'Febre amarela (em áreas endêmicas)'),
(18, 12, 'Vacina Pneumocócica 10 (conjugada)', 'reforço', 'Pneumonia, otite, meningite e outras doenças causadas pelo Pneumococo'),
(19, 12, 'Vacina Pneumocócica 10 (conjugada)', 'reforço', 'Pneumonia, otite, meningite e outras doenças causadas pelo Pneumococo'),
(20, 12, 'Vacina Meningocócica C (conjugada)', 'reforço', 'Doença invasiva causada por Neisseria meningitidis do sorogrupo C'),
(21, 12, 'Vacina Tríplice Viral (SRC)', '1ª dose', 'Sarampo, rubéola e caxumba'),
(22, 15, 'Vacina Tríplice Bacteriana (DTP)', '1º reforço', 'Difteria, tétano e coqueluche'),
(23, 15, 'VOP 1, 2 e 3 (vacina atenuada oral contra pólio - gotas)', '1º reforço', 'Poliomielite (paralisia infantil)'),
(24, 15, 'Vacina Hepatite A', 'dose única', 'Hepatite A'),
(25, 15, 'Vacina Tetra Viral', 'dose única combinada (*)', 'Sarampo, rubéola, caxumba e varicela (catapora). (*) dose única para Varicela (catapora) e segunda dose para as demais.'),
(26, 48, 'Vacina Tríplice Bacteriana (DTP)', '2ª reforço', 'Difteria, tétano e coqueluche'),
(27, 48, 'VOP 1, 2 e 3 (vacina atenuada oral contra pólio - gotas)', '2ª reforço', 'Poliomielite (paralisia infantil)'),
(28, 48, 'Febre amarela (atenuada)', 'reforço', 'Febre amarela (em áreas endêmicas)');

-- --------------------------------------------------------

--
-- Estrutura da tabela `campanhas`
--

CREATE TABLE `campanhas` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `imagem` text NOT NULL,
  `descricao` text NOT NULL,
  `link` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `campanhas`
--

INSERT INTO `campanhas` (`id`, `titulo`, `imagem`, `descricao`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Combate à Sífilis Congênita', 'http://portalsaude.saude.gov.br/images/PNG/2016/outubro/20/tumb-sifilis.PNG', '					Combate à Sífilis Congênita   Período de veiculação: 2016     Peças da campanha: Logo Visualizar...						', 'http://portalsaude.saude.gov.br/index.php/cidadao/principal/campanhas-publicitarias/26104-combate-a-sifilis-congenita', '2016-11-06 04:13:49', '2016-11-06 04:15:00'),
(2, 'Outubro Rosa 2016', 'http://portalsaude.saude.gov.br/images/jpg/2016/setembro/27/outubro-rosa.jpg', 'Outubro Rosa 2016   Período de veiculação:     Peças da campanha: Filipeta - 210x150cm ', 'http://portalsaude.saude.gov.br/index.php/cidadao/principal/campanhas-publicitarias/25842-outubro-rosa-2016', '2016-11-06 04:16:34', '2016-11-06 04:16:34'),
(3, 'Doação de Órgãos - 2015/2016', 'http://portalsaude.saude.gov.br/images/jpg/2015/novembro/10/campanha-doacao-capa-secundaria.jpg', 'Campanha de Doação de Órgãos | 2015/2016   Período de veiculação: 2015/2016', 'http://portalsaude.saude.gov.br/index.php/cidadao/principal/campanhas-publicitarias/20583-campanha-de-doacao-de-orgaos-2015-2016', '2016-11-06 04:16:34', '2016-11-06 04:16:34'),
(4, 'Vacinação - Atualize a caderneta', 'http://portalsaude.saude.gov.br/images/campanhas/vacinacao-2016/capa-vacinacao.jpg', 'Campanha | Vacinação - Atualize a caderneta - 2016         Peças da campanha: Cartaz - 64x64cm...', 'http://portalsaude.saude.gov.br/index.php/cidadao/principal/campanhas-publicitarias/25527-vacinacao-atualize-a-caderneta', '2016-11-06 04:17:43', '2016-11-06 04:17:43'),
(5, '#MostreAtitude: sem o cigarro, sua vida ganha mais saúde', 'http://portalsaude.saude.gov.br/images/jpg/2016/agosto/29/img-mostre-atitude.jpg', 'Campanha | #MostreAtitude - 2016         Peças da campanha: Cartaz - 64x64cm Visualizar |...', 'http://portalsaude.saude.gov.br/index.php/cidadao/principal/campanhas-publicitarias/25357-mostreatitude-sem-o-cigarro-sua-vida-ganha-mais-saude', '2016-11-06 04:17:43', '2016-11-06 04:17:43'),
(6, 'Amamentação - 2016', 'http://portalsaude.saude.gov.br/images/campanhas/amamentacao_2016/amamentacao-pqn.jpg', 'Faz bem para o seu filho, para você e para o planeta.   Período de veiculação: Peças da campanha:...', 'http://portalsaude.saude.gov.br/index.php/cidadao/principal/campanhas-publicitarias/24743-amamentacao-2016', '2016-11-06 04:18:27', '2016-11-06 04:18:27');

-- --------------------------------------------------------

--
-- Estrutura da tabela `consulta`
--

CREATE TABLE `consulta` (
  `id` int(11) NOT NULL,
  `expediente_id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `numero_sus` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `consulta`
--

INSERT INTO `consulta` (`id`, `expediente_id`, `nome`, `numero_sus`, `created_at`, `updated_at`) VALUES
(1, 1, 'Fainer Carneiro Nogueira', '43221312', '2016-11-06 00:17:17', '2016-11-06 01:37:41'),
(2, 1, '31231231', '2312', '2016-11-06 00:19:26', '2016-11-06 00:19:26'),
(3, 1, 'Resolver problemas com Gerenciamento de Projetos', '3232', '2016-11-06 00:19:54', '2016-11-06 00:19:54'),
(4, 9, '321323', '3123123', '2016-11-06 00:22:10', '2016-11-06 00:22:10'),
(5, 3, 'dsadasd', 'asdasd', '2016-11-06 00:25:58', '2016-11-06 00:25:58'),
(6, 3, 'dsadasd', 'asdasd', '2016-11-06 00:26:21', '2016-11-06 00:26:21'),
(7, 9, 'Fainer Carneiro Nogueira', '43221312', '2016-11-06 01:41:48', '2016-11-06 01:41:48'),
(8, 13, 'Fainer Carneiro Nogueira', '43221312', '2016-11-06 01:42:17', '2016-11-06 09:09:22'),
(9, 2, 'Fainer Carneiro Nogueira', '43221312', '2016-11-06 03:04:04', '2016-11-06 03:04:04'),
(10, 7, 'Fainer Carneiro Nogueira', '43221312', '2016-11-06 07:44:49', '2016-11-06 07:44:49'),
(11, 34, 'Fainer Carneiro Nogueira', '43243423423', '2016-11-06 12:33:19', '2016-11-06 12:33:19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `expediente`
--

CREATE TABLE `expediente` (
  `id` int(11) NOT NULL,
  `unidade_saude_id` int(11) NOT NULL,
  `tipo_medico_id` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `vaga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `expediente`
--

INSERT INTO `expediente` (`id`, `unidade_saude_id`, `tipo_medico_id`, `data`, `vaga`) VALUES
(1, 1, 1, '2016-11-07 07:00:00', 50),
(2, 1, 1, '2016-11-08 07:00:00', 48),
(3, 1, 2, '2016-11-07 07:00:00', 49),
(4, 1, 2, '2016-11-08 07:00:00', 50),
(5, 1, 3, '2016-11-07 07:00:00', 50),
(6, 1, 3, '2016-11-08 07:00:00', 50),
(7, 2, 1, '2016-11-07 07:00:00', 49),
(8, 2, 1, '2016-11-07 07:00:00', 50),
(9, 2, 2, '2016-11-07 07:00:00', 49),
(10, 2, 2, '2016-11-08 07:00:00', 50),
(11, 2, 3, '2016-11-07 07:00:00', 50),
(12, 2, 3, '2016-11-08 07:00:00', 50),
(13, 3, 1, '2016-11-07 07:00:00', 50),
(14, 3, 1, '2016-11-08 07:00:00', 50),
(15, 3, 2, '2016-11-07 07:00:00', 50),
(16, 3, 2, '2016-11-08 07:00:00', 50),
(17, 3, 3, '2016-11-07 07:00:00', 50),
(18, 3, 3, '2016-11-08 07:00:00', 50),
(19, 4, 1, '2016-11-07 07:00:00', 50),
(20, 4, 1, '2016-11-08 07:00:00', 50),
(21, 4, 2, '2016-11-07 07:00:00', 50),
(22, 4, 2, '2016-11-08 07:00:00', 50),
(23, 4, 3, '2016-11-07 07:00:00', 50),
(24, 4, 3, '2016-11-08 07:00:00', 50),
(25, 5, 1, '2016-11-07 07:00:00', 50),
(26, 5, 1, '2016-11-08 07:00:00', 50),
(27, 5, 2, '2016-11-07 07:00:00', 50),
(28, 5, 2, '2016-11-08 07:00:00', 50),
(29, 5, 3, '2016-11-07 07:00:00', 50),
(30, 5, 3, '2016-11-08 07:00:00', 50),
(31, 6, 1, '2016-11-07 07:00:00', 50),
(32, 6, 1, '2016-11-08 07:00:00', 50),
(33, 6, 2, '2016-11-07 07:00:00', 50),
(34, 6, 2, '2016-11-08 07:00:00', 49),
(35, 6, 3, '2016-11-07 07:00:00', 50),
(36, 6, 3, '2016-11-08 07:00:00', 50),
(37, 7, 1, '2016-11-07 07:00:00', 50),
(38, 7, 1, '2016-11-08 07:00:00', 50),
(39, 7, 2, '2016-11-07 07:00:00', 50),
(40, 7, 2, '2016-11-08 07:00:00', 50),
(41, 7, 3, '2016-11-07 07:00:00', 50),
(42, 7, 3, '2016-11-08 07:00:00', 50);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `id` int(11) NOT NULL,
  `nome` varchar(250) NOT NULL,
  `data_nascimento` datetime NOT NULL,
  `numero_sus` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`id`, `nome`, `data_nascimento`, `numero_sus`) VALUES
(1, 'João Augusto', '2016-10-05 00:00:00', '123456789'),
(2, 'Maria de Lourdes ', '2013-11-06 00:00:00', '123456');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa_atividade`
--

CREATE TABLE `pessoa_atividade` (
  `id` int(11) NOT NULL,
  `pessoa_id` int(11) NOT NULL,
  `atividade_id` int(11) NOT NULL,
  `data_concluido` datetime DEFAULT NULL,
  `concluido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pessoa_atividade`
--

INSERT INTO `pessoa_atividade` (`id`, `pessoa_id`, `atividade_id`, `data_concluido`, `concluido`) VALUES
(1, 1, 1, '2016-11-06 00:00:00', 1),
(2, 1, 2, NULL, 0),
(3, 1, 3, NULL, 0),
(4, 1, 4, NULL, 0),
(5, 1, 5, NULL, 0),
(6, 1, 7, NULL, 0),
(7, 1, 8, NULL, 0),
(8, 1, 10, NULL, 0),
(9, 1, 11, NULL, 0),
(10, 1, 12, NULL, 0),
(11, 1, 13, NULL, 0),
(12, 1, 14, NULL, 0),
(13, 1, 15, NULL, 0),
(14, 1, 16, NULL, 0),
(15, 1, 17, NULL, 0),
(16, 1, 18, NULL, 0),
(17, 1, 19, NULL, 0),
(18, 1, 20, NULL, 0),
(19, 1, 21, NULL, 0),
(20, 1, 22, NULL, 0),
(21, 1, 23, NULL, 0),
(22, 1, 24, NULL, 0),
(23, 1, 25, NULL, 0),
(24, 1, 26, NULL, 0),
(25, 1, 27, NULL, 0),
(26, 1, 28, NULL, 0),
(32, 2, 1, NULL, 0),
(33, 2, 2, NULL, 0),
(34, 2, 3, NULL, 0),
(35, 2, 4, NULL, 0),
(36, 2, 5, NULL, 0),
(37, 2, 7, NULL, 0),
(38, 2, 8, NULL, 0),
(39, 2, 10, NULL, 0),
(40, 2, 11, NULL, 0),
(41, 2, 12, NULL, 0),
(42, 2, 13, NULL, 0),
(43, 2, 14, NULL, 0),
(44, 2, 15, NULL, 0),
(45, 2, 16, NULL, 0),
(46, 2, 17, NULL, 0),
(47, 2, 18, NULL, 0),
(48, 2, 19, NULL, 0),
(49, 2, 20, NULL, 0),
(50, 2, 21, NULL, 0),
(51, 2, 22, NULL, 0),
(52, 2, 23, NULL, 0),
(53, 2, 24, NULL, 0),
(54, 2, 25, NULL, 0),
(55, 2, 26, NULL, 0),
(56, 2, 27, NULL, 0),
(57, 2, 28, NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_medico`
--

CREATE TABLE `tipo_medico` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo_medico`
--

INSERT INTO `tipo_medico` (`id`, `nome`) VALUES
(1, 'Pediatra'),
(2, 'Clinico Geral'),
(3, 'Ginecologista');

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidade_saude`
--

CREATE TABLE `unidade_saude` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `logradouro` varchar(250) NOT NULL,
  `bairro` varchar(250) NOT NULL,
  `coordenador` varchar(250) NOT NULL,
  `descricao` text NOT NULL,
  `telefone` text,
  `horario_inicial` time NOT NULL,
  `horario_final` time NOT NULL,
  `dia_inicio` int(11) NOT NULL,
  `dia_fim` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `unidade_saude`
--

INSERT INTO `unidade_saude` (`id`, `nome`, `latitude`, `longitude`, `logradouro`, `bairro`, `coordenador`, `descricao`, `telefone`, `horario_inicial`, `horario_final`, `dia_inicio`, `dia_fim`) VALUES
(1, 'POLICLÍNICA DO VERDÃO:"DR.º JOSÉ FARIA DE VINAGRE"', '', '', 'AV. Agrícola Paes de Barros S/N', 'Verdão', 'Silvinha Gomes', 'PA atendimento 24 horas Ambulatório', '3617-1459(PA) /3634-9308(FAX)', '07:00:00', '17:00:00', 1, 5),
(2, 'POLICLÍNICA DO PEDRA 90 "ANÍZIO SABO MENDES"', '', '', 'Av. Newton Rabelo de Castro', 'Pedra 90', '', 'PA atendimento 24 horas', '(065) 3617-1955/3617-1956(FAX)', '07:00:00', '17:00:00', 1, 5),
(3, 'POLICLÍNICA DO COXIPÓ "Dr.º JOSÉ EDUARDO VAZ CURVO"', '', '', 'Rua 24 de agosto S/N', 'Vista Alegre', '', 'PA atendimento 24 horas Ambulatorio', '(065) 3617-1441/3617-1631/3617-1440/3617-1443', '07:00:00', '17:00:00', 1, 5),
(4, 'POLICLÍNICA DO PASCOAL RAMOS "DR.º SILVIO CURVO"', '', '', 'Rua Benedito Antonio S/N', 'Pascoal Ramos', '', 'PA atendimento 24 horas Ambulatório', '3617-1306/3617-1302', '07:00:00', '17:00:00', 1, 5),
(5, 'POLICLÍNICA DO PLANALTO "DR.º CLOVIS PITALUGA DE MOURA"', '', '', 'AV. Dos Trabalhadores', 'Planalto', '', 'PA atendimento 24 horas Ambulatório', '(65)3617-1415', '07:00:00', '17:00:00', 1, 5),
(6, 'UPA Norte', '', '', 'Avenida Trancredo Neves,s/nº, Qd. 26, Rua: 15, 16 e 17', 'Morada do Ouro II', '', 'UPA Norte -  Morada do Ouro II (Atendimento 24 horas)', '(65) 3645-5713 / 3645-5711 / 3645- 5702', '07:00:00', '17:00:00', 1, 5),
(7, 'UPA Sul', '', '', 'Avenida Brasil, s/n', 'Pascoal Ramos', '', 'UPA Sul – Pascoal Ramos (Atendimento 24 horas)', '65) 3667 4129 (provisório)', '07:00:00', '17:00:00', 1, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atividade`
--
ALTER TABLE `atividade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campanhas`
--
ALTER TABLE `campanhas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expediente_id` (`expediente_id`);

--
-- Indexes for table `expediente`
--
ALTER TABLE `expediente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unidade_saude_id` (`unidade_saude_id`),
  ADD KEY `tipo_medico_id` (`tipo_medico_id`);

--
-- Indexes for table `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pessoa_atividade`
--
ALTER TABLE `pessoa_atividade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `atividade_id` (`atividade_id`),
  ADD KEY `pessoa_id` (`pessoa_id`);

--
-- Indexes for table `tipo_medico`
--
ALTER TABLE `tipo_medico`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unidade_saude`
--
ALTER TABLE `unidade_saude`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atividade`
--
ALTER TABLE `atividade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `campanhas`
--
ALTER TABLE `campanhas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `consulta`
--
ALTER TABLE `consulta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `expediente`
--
ALTER TABLE `expediente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pessoa_atividade`
--
ALTER TABLE `pessoa_atividade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `tipo_medico`
--
ALTER TABLE `tipo_medico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `unidade_saude`
--
ALTER TABLE `unidade_saude`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`expediente_id`) REFERENCES `expediente` (`id`);

--
-- Limitadores para a tabela `expediente`
--
ALTER TABLE `expediente`
  ADD CONSTRAINT `expediente_ibfk_1` FOREIGN KEY (`unidade_saude_id`) REFERENCES `unidade_saude` (`id`),
  ADD CONSTRAINT `expediente_ibfk_2` FOREIGN KEY (`tipo_medico_id`) REFERENCES `tipo_medico` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
