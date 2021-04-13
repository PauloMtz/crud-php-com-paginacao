-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 13-Abr-2021 às 15:49
-- Versão do servidor: 8.0.23-0ubuntu0.20.04.1
-- versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cadastro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `contatos`
--

CREATE TABLE `contatos` (
  `id` int NOT NULL,
  `nome` varchar(32) NOT NULL,
  `email` varchar(32) DEFAULT NULL,
  `telefone` varchar(14) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `endereco` varchar(65) DEFAULT NULL,
  `bairro` varchar(32) DEFAULT NULL,
  `cidade` varchar(32) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `data_cadastro` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `contatos`
--

INSERT INTO `contatos` (`id`, `nome`, `email`, `telefone`, `cep`, `endereco`, `bairro`, `cidade`, `uf`, `data_cadastro`) VALUES
(1, 'Maria', 'maria@email.com', '(02) 0055-0066', '31.255-900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-08 22:14:40'),
(6, 'Ribamar de Souza', 'ribamar@email.com', '(11) 0011-0022', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-08 18:38:38'),
(7, 'Ribamar Teste', 'ribamar@email.teste', '(02) 0055-0066', '31.255-901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-08 22:22:56'),
(8, 'Maria Rita', 'maria.rita@email.teste', '(00) 0010-0020', '31255900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 18:30:39'),
(9, 'Pedro Teste', 'pedro@email.teste', '(11) 1000-0001', '31255901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-08 21:35:19'),
(11, 'Ana Lúcia', 'ana.lucia@email.com', '(00) 9988-7766', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-09 23:25:46'),
(12, 'Teobaldo', 'teobaldo@email.teste', '(99) 8877-6655', '81170-423', 'Rua 1', 'Cidade Industrial', 'Curitiba', 'PR', '2021-04-09 23:26:48'),
(13, 'Fernanda', 'fernanda@teste.email', '(22) 5566-8877', '45061-812', 'Rua 1', 'Campinhos', 'Vitória da Conquista', 'BA', '2021-04-09 23:27:51'),
(14, 'Fernando', 'fernando@email.teste', '(55) 8877-4445', '78300-000', '', '', 'Tangará da Serra', 'MT', '2021-04-09 23:31:04'),
(15, 'Celso Teste', 'celso@email.com', '(99) 8855-6221', '12238-542', 'Rua 1', 'Rio Comprido', 'São José dos Campos', 'SP', '2021-04-09 23:32:06'),
(16, 'Mário Teste', 'mario@teste.email', '(33) 6655-4452', '29260-000', 'Rua Teste, 101', 'Teste', 'Domingos Martins', 'ES', '2021-04-09 23:33:24'),
(17, 'João Paulo', 'joao@paulo.email', '(88) 7744-1122', '37300-000', 'Rua Teste, 101', 'Teste', 'Andrelândia', 'MG', '2021-04-09 23:34:44'),
(18, 'Rita Teste', 'rita@teste.email', '(00) 1144-7755', '49680-000', 'Rua Teste, 900', 'Teste', 'Nossa Senhora da Glória', 'SE', '2021-04-09 23:35:54'),
(19, 'Paiva e Silva', 'paiva@silva.email', '(00) 2558-9464', '08226-021', 'Rua 18 de Abril', 'Cidade Antônio Estevão de Carval', 'São Paulo', 'SP', '2021-04-09 23:37:12'),
(20, 'Ana Beatriz', 'ana.beatriz@email.com', '(32) 1465-4679', '04180-112', 'Travessa 19 de Agosto', 'Jardim Maria Estela', 'São Paulo', 'SP', '2021-04-09 23:37:59'),
(21, 'José Pacheco', 'pacheco@email.com', '(31) 9717-4211', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-09 23:35:01'),
(22, 'Carlos Teste', 'carlos@teste.email', '(22) 2222-2222', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-09 23:37:09'),
(23, 'Maria', 'maria@email.com', '(02) 0055-0066', '31.255-900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 01:14:40'),
(24, 'Ribamar de Souza', 'ribamar@email.com', '(11) 0011-0022', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-08 21:38:38'),
(25, 'Ribamar Teste', 'ribamar@email.teste', '(02) 0055-0066', '31.255-901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 01:22:56'),
(26, 'Maria Rita', 'maria.rita@email.teste', '(00) 0010-0020', '31255900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 21:30:39'),
(27, 'Pedro Teste', 'pedro@email.teste', '(11) 1000-0001', '31255901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 00:35:19'),
(28, 'Ana Lúcia', 'ana.lucia@email.com', '(00) 9988-7766', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-10 02:25:46'),
(29, 'Teobaldo', 'teobaldo@email.teste', '(99) 8877-6655', '81170-423', 'Rua 1', 'Cidade Industrial', 'Curitiba', 'PR', '2021-04-10 02:26:48'),
(30, 'Fernanda', 'fernanda@teste.email', '(22) 5566-8877', '45061-812', 'Rua 1', 'Campinhos', 'Vitória da Conquista', 'BA', '2021-04-10 02:27:51'),
(31, 'Fernando', 'fernando@email.teste', '(55) 8877-4445', '78300-000', '', '', 'Tangará da Serra', 'MT', '2021-04-10 02:31:04'),
(32, 'Celso Teste', 'celso@email.com', '(99) 8855-6221', '12238-542', 'Rua 1', 'Rio Comprido', 'São José dos Campos', 'SP', '2021-04-10 02:32:06'),
(33, 'Mário Teste', 'mario@teste.email', '(33) 6655-4452', '29260-000', 'Rua Teste, 101', 'Teste', 'Domingos Martins', 'ES', '2021-04-10 02:33:24'),
(34, 'João Paulo', 'joao@paulo.email', '(88) 7744-1122', '37300-000', 'Rua Teste, 101', 'Teste', 'Andrelândia', 'MG', '2021-04-10 02:34:44'),
(35, 'Rita Teste', 'rita@teste.email', '(00) 1144-7755', '49680-000', 'Rua Teste, 900', 'Teste', 'Nossa Senhora da Glória', 'SE', '2021-04-10 02:35:54'),
(36, 'Paiva e Silva', 'paiva@silva.email', '(00) 2558-9464', '08226-021', 'Rua 18 de Abril', 'Cidade Antônio Estevão de Carval', 'São Paulo', 'SP', '2021-04-10 02:37:12'),
(37, 'Ana Beatriz', 'ana.beatriz@email.com', '(32) 1465-4679', '04180-112', 'Travessa 19 de Agosto', 'Jardim Maria Estela', 'São Paulo', 'SP', '2021-04-10 02:37:59'),
(38, 'José Pacheco', 'pacheco@email.com', '(31) 9717-4211', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 02:35:01'),
(39, 'Carlos Teste', 'carlos@teste.email', '(22) 2222-2222', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 02:37:09'),
(40, 'Maria', 'maria@email.com', '(02) 0055-0066', '31.255-900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 01:14:40'),
(41, 'Ribamar de Souza', 'ribamar@email.com', '(11) 0011-0022', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-08 21:38:38'),
(42, 'Ribamar Teste', 'ribamar@email.teste', '(02) 0055-0066', '31.255-901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 01:22:56'),
(43, 'Maria Rita', 'maria.rita@email.teste', '(00) 0010-0020', '31255900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 21:30:39'),
(44, 'Pedro Teste', 'pedro@email.teste', '(11) 1000-0001', '31255901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 00:35:19'),
(45, 'Ana Lúcia', 'ana.lucia@email.com', '(00) 9988-7766', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-10 02:25:46'),
(46, 'Teobaldo', 'teobaldo@email.teste', '(99) 8877-6655', '81170-423', 'Rua 1', 'Cidade Industrial', 'Curitiba', 'PR', '2021-04-10 02:26:48'),
(47, 'Fernanda', 'fernanda@teste.email', '(22) 5566-8877', '45061-812', 'Rua 1', 'Campinhos', 'Vitória da Conquista', 'BA', '2021-04-10 02:27:51'),
(48, 'Fernando', 'fernando@email.teste', '(55) 8877-4445', '78300-000', '', '', 'Tangará da Serra', 'MT', '2021-04-10 02:31:04'),
(49, 'Celso Teste', 'celso@email.com', '(99) 8855-6221', '12238-542', 'Rua 1', 'Rio Comprido', 'São José dos Campos', 'SP', '2021-04-10 02:32:06'),
(50, 'Mário Teste', 'mario@teste.email', '(33) 6655-4452', '29260-000', 'Rua Teste, 101', 'Teste', 'Domingos Martins', 'ES', '2021-04-10 02:33:24'),
(51, 'João Paulo', 'joao@paulo.email', '(88) 7744-1122', '37300-000', 'Rua Teste, 101', 'Teste', 'Andrelândia', 'MG', '2021-04-10 02:34:44'),
(52, 'Rita Teste', 'rita@teste.email', '(00) 1144-7755', '49680-000', 'Rua Teste, 900', 'Teste', 'Nossa Senhora da Glória', 'SE', '2021-04-10 02:35:54'),
(53, 'Paiva e Silva', 'paiva@silva.email', '(00) 2558-9464', '08226-021', 'Rua 18 de Abril', 'Cidade Antônio Estevão de Carval', 'São Paulo', 'SP', '2021-04-10 02:37:12'),
(54, 'Ana Beatriz', 'ana.beatriz@email.com', '(32) 1465-4679', '04180-112', 'Travessa 19 de Agosto', 'Jardim Maria Estela', 'São Paulo', 'SP', '2021-04-10 02:37:59'),
(55, 'José Pacheco', 'pacheco@email.com', '(31) 9717-4211', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 02:35:01'),
(56, 'Carlos Teste', 'carlos@teste.email', '(22) 2222-2222', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 02:37:09'),
(57, 'Maria', 'maria@email.com', '(02) 0055-0066', '31.255-900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 01:14:40'),
(58, 'Ribamar de Souza', 'ribamar@email.com', '(11) 0011-0022', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-08 21:38:38'),
(59, 'Ribamar Teste', 'ribamar@email.teste', '(02) 0055-0066', '31.255-901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 01:22:56'),
(60, 'Maria Rita', 'maria.rita@email.teste', '(00) 0010-0020', '31255900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 21:30:39'),
(61, 'Pedro Teste', 'pedro@email.teste', '(11) 1000-0001', '31255901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 00:35:19'),
(62, 'Ana Lúcia', 'ana.lucia@email.com', '(00) 9988-7766', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-10 02:25:46'),
(63, 'Teobaldo', 'teobaldo@email.teste', '(99) 8877-6655', '81170-423', 'Rua 1', 'Cidade Industrial', 'Curitiba', 'PR', '2021-04-10 02:26:48'),
(64, 'Fernanda', 'fernanda@teste.email', '(22) 5566-8877', '45061-812', 'Rua 1', 'Campinhos', 'Vitória da Conquista', 'BA', '2021-04-10 02:27:51'),
(65, 'Fernando', 'fernando@email.teste', '(55) 8877-4445', '78300-000', '', '', 'Tangará da Serra', 'MT', '2021-04-10 02:31:04'),
(66, 'Celso Teste', 'celso@email.com', '(99) 8855-6221', '12238-542', 'Rua 1', 'Rio Comprido', 'São José dos Campos', 'SP', '2021-04-10 02:32:06'),
(67, 'Mário Teste', 'mario@teste.email', '(33) 6655-4452', '29260-000', 'Rua Teste, 101', 'Teste', 'Domingos Martins', 'ES', '2021-04-10 02:33:24'),
(68, 'João Paulo', 'joao@paulo.email', '(88) 7744-1122', '37300-000', 'Rua Teste, 101', 'Teste', 'Andrelândia', 'MG', '2021-04-10 02:34:44'),
(69, 'Rita Teste', 'rita@teste.email', '(00) 1144-7755', '49680-000', 'Rua Teste, 900', 'Teste', 'Nossa Senhora da Glória', 'SE', '2021-04-10 02:35:54'),
(70, 'Paiva e Silva', 'paiva@silva.email', '(00) 2558-9464', '08226-021', 'Rua 18 de Abril', 'Cidade Antônio Estevão de Carval', 'São Paulo', 'SP', '2021-04-10 02:37:12'),
(71, 'Ana Beatriz', 'ana.beatriz@email.com', '(32) 1465-4679', '04180-112', 'Travessa 19 de Agosto', 'Jardim Maria Estela', 'São Paulo', 'SP', '2021-04-10 02:37:59'),
(72, 'José Pacheco', 'pacheco@email.com', '(31) 9717-4211', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 02:35:01'),
(73, 'Carlos Teste', 'carlos@teste.email', '(22) 2222-2222', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 02:37:09'),
(74, 'Maria', 'maria@email.com', '(02) 0055-0066', '31.255-900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 01:14:40'),
(75, 'Ribamar de Souza', 'ribamar@email.com', '(11) 0011-0022', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-08 21:38:38'),
(76, 'Ribamar Teste', 'ribamar@email.teste', '(02) 0055-0066', '31.255-901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 01:22:56'),
(77, 'Maria Rita', 'maria.rita@email.teste', '(00) 0010-0020', '31255900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 21:30:39'),
(78, 'Pedro Teste', 'pedro@email.teste', '(11) 1000-0001', '31255901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 00:35:19'),
(79, 'Ana Lúcia', 'ana.lucia@email.com', '(00) 9988-7766', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-10 02:25:46'),
(80, 'Teobaldo', 'teobaldo@email.teste', '(99) 8877-6655', '81170-423', 'Rua 1', 'Cidade Industrial', 'Curitiba', 'PR', '2021-04-10 02:26:48'),
(81, 'Fernanda', 'fernanda@teste.email', '(22) 5566-8877', '45061-812', 'Rua 1', 'Campinhos', 'Vitória da Conquista', 'BA', '2021-04-10 02:27:51'),
(82, 'Fernando', 'fernando@email.teste', '(55) 8877-4445', '78300-000', '', '', 'Tangará da Serra', 'MT', '2021-04-10 02:31:04'),
(83, 'Celso Teste', 'celso@email.com', '(99) 8855-6221', '12238-542', 'Rua 1', 'Rio Comprido', 'São José dos Campos', 'SP', '2021-04-10 02:32:06'),
(84, 'Mário Teste', 'mario@teste.email', '(33) 6655-4452', '29260-000', 'Rua Teste, 101', 'Teste', 'Domingos Martins', 'ES', '2021-04-10 02:33:24'),
(85, 'João Paulo', 'joao@paulo.email', '(88) 7744-1122', '37300-000', 'Rua Teste, 101', 'Teste', 'Andrelândia', 'MG', '2021-04-10 02:34:44'),
(86, 'Rita Teste', 'rita@teste.email', '(00) 1144-7755', '49680-000', 'Rua Teste, 900', 'Teste', 'Nossa Senhora da Glória', 'SE', '2021-04-10 02:35:54'),
(87, 'Paiva e Silva', 'paiva@silva.email', '(00) 2558-9464', '08226-021', 'Rua 18 de Abril', 'Cidade Antônio Estevão de Carval', 'São Paulo', 'SP', '2021-04-10 02:37:12'),
(88, 'Ana Beatriz', 'ana.beatriz@email.com', '(32) 1465-4679', '04180-112', 'Travessa 19 de Agosto', 'Jardim Maria Estela', 'São Paulo', 'SP', '2021-04-10 02:37:59'),
(89, 'José Pacheco', 'pacheco@email.com', '(31) 9717-4211', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 02:35:01'),
(90, 'Carlos Teste', 'carlos@teste.email', '(22) 2222-2222', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 02:37:09'),
(91, 'Maria', 'maria@email.com', '(02) 0055-0066', '31.255-900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 01:14:40'),
(92, 'Ribamar de Souza', 'ribamar@email.com', '(11) 0011-0022', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-08 21:38:38'),
(93, 'Ribamar Teste', 'ribamar@email.teste', '(02) 0055-0066', '31.255-901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 01:22:56'),
(94, 'Maria Rita', 'maria.rita@email.teste', '(00) 0010-0020', '31255900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 21:30:39'),
(95, 'Pedro Teste', 'pedro@email.teste', '(11) 1000-0001', '31255901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 00:35:19'),
(96, 'Ana Lúcia', 'ana.lucia@email.com', '(00) 9988-7766', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-10 02:25:46'),
(97, 'Teobaldo', 'teobaldo@email.teste', '(99) 8877-6655', '81170-423', 'Rua 1', 'Cidade Industrial', 'Curitiba', 'PR', '2021-04-10 02:26:48'),
(98, 'Fernanda', 'fernanda@teste.email', '(22) 5566-8877', '45061-812', 'Rua 1', 'Campinhos', 'Vitória da Conquista', 'BA', '2021-04-10 02:27:51'),
(99, 'Fernando', 'fernando@email.teste', '(55) 8877-4445', '78300-000', '', '', 'Tangará da Serra', 'MT', '2021-04-10 02:31:04'),
(100, 'Celso Teste', 'celso@email.com', '(99) 8855-6221', '12238-542', 'Rua 1', 'Rio Comprido', 'São José dos Campos', 'SP', '2021-04-10 02:32:06'),
(101, 'Mário Teste', 'mario@teste.email', '(33) 6655-4452', '29260-000', 'Rua Teste, 101', 'Teste', 'Domingos Martins', 'ES', '2021-04-10 02:33:24'),
(102, 'João Paulo', 'joao@paulo.email', '(88) 7744-1122', '37300-000', 'Rua Teste, 101', 'Teste', 'Andrelândia', 'MG', '2021-04-10 02:34:44'),
(103, 'Rita Teste', 'rita@teste.email', '(00) 1144-7755', '49680-000', 'Rua Teste, 900', 'Teste', 'Nossa Senhora da Glória', 'SE', '2021-04-10 02:35:54'),
(104, 'Paiva e Silva', 'paiva@silva.email', '(00) 2558-9464', '08226-021', 'Rua 18 de Abril', 'Cidade Antônio Estevão de Carval', 'São Paulo', 'SP', '2021-04-10 02:37:12'),
(105, 'Ana Beatriz', 'ana.beatriz@email.com', '(32) 1465-4679', '04180-112', 'Travessa 19 de Agosto', 'Jardim Maria Estela', 'São Paulo', 'SP', '2021-04-10 02:37:59'),
(106, 'José Pacheco', 'pacheco@email.com', '(31) 9717-4211', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 02:35:01'),
(107, 'Carlos Teste', 'carlos@teste.email', '(22) 2222-2222', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 02:37:09'),
(108, 'Maria', 'maria@email.com', '(02) 0055-0066', '31.255-900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 01:14:40'),
(109, 'Ribamar de Souza', 'ribamar@email.com', '(11) 0011-0022', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-08 21:38:38'),
(110, 'Ribamar Teste', 'ribamar@email.teste', '(02) 0055-0066', '31.255-901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 01:22:56'),
(111, 'Maria Rita', 'maria.rita@email.teste', '(00) 0010-0020', '31255900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 21:30:39'),
(112, 'Pedro Teste', 'pedro@email.teste', '(11) 1000-0001', '31255901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 00:35:19'),
(113, 'Ana Lúcia', 'ana.lucia@email.com', '(00) 9988-7766', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-10 02:25:46'),
(114, 'Teobaldo', 'teobaldo@email.teste', '(99) 8877-6655', '81170-423', 'Rua 1', 'Cidade Industrial', 'Curitiba', 'PR', '2021-04-10 02:26:48'),
(115, 'Fernanda', 'fernanda@teste.email', '(22) 5566-8877', '45061-812', 'Rua 1', 'Campinhos', 'Vitória da Conquista', 'BA', '2021-04-10 02:27:51'),
(116, 'Fernando', 'fernando@email.teste', '(55) 8877-4445', '78300-000', '', '', 'Tangará da Serra', 'MT', '2021-04-10 02:31:04'),
(117, 'Celso Teste', 'celso@email.com', '(99) 8855-6221', '12238-542', 'Rua 1', 'Rio Comprido', 'São José dos Campos', 'SP', '2021-04-10 02:32:06'),
(118, 'Mário Teste', 'mario@teste.email', '(33) 6655-4452', '29260-000', 'Rua Teste, 101', 'Teste', 'Domingos Martins', 'ES', '2021-04-10 02:33:24'),
(119, 'João Paulo', 'joao@paulo.email', '(88) 7744-1122', '37300-000', 'Rua Teste, 101', 'Teste', 'Andrelândia', 'MG', '2021-04-10 02:34:44'),
(120, 'Rita Teste', 'rita@teste.email', '(00) 1144-7755', '49680-000', 'Rua Teste, 900', 'Teste', 'Nossa Senhora da Glória', 'SE', '2021-04-10 02:35:54'),
(121, 'Paiva e Silva', 'paiva@silva.email', '(00) 2558-9464', '08226-021', 'Rua 18 de Abril', 'Cidade Antônio Estevão de Carval', 'São Paulo', 'SP', '2021-04-10 02:37:12'),
(122, 'Ana Beatriz', 'ana.beatriz@email.com', '(32) 1465-4679', '04180-112', 'Travessa 19 de Agosto', 'Jardim Maria Estela', 'São Paulo', 'SP', '2021-04-10 02:37:59'),
(123, 'José Pacheco', 'pacheco@email.com', '(31) 9717-4211', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 02:35:01'),
(124, 'Carlos Teste', 'carlos@teste.email', '(22) 2222-2222', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 02:37:09'),
(125, 'Maria', 'maria@email.com', '(02) 0055-0066', '31.255-900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 01:14:40'),
(126, 'Ribamar de Souza', 'ribamar@email.com', '(11) 0011-0022', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-08 21:38:38'),
(127, 'Ribamar Teste', 'ribamar@email.teste', '(02) 0055-0066', '31.255-901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 01:22:56'),
(128, 'Maria Rita', 'maria.rita@email.teste', '(00) 0010-0020', '31255900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 21:30:39'),
(129, 'Pedro Teste', 'pedro@email.teste', '(11) 1000-0001', '31255901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 00:35:19'),
(130, 'Ana Lúcia', 'ana.lucia@email.com', '(00) 9988-7766', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-10 02:25:46'),
(131, 'Teobaldo', 'teobaldo@email.teste', '(99) 8877-6655', '81170-423', 'Rua 1', 'Cidade Industrial', 'Curitiba', 'PR', '2021-04-10 02:26:48'),
(132, 'Fernanda', 'fernanda@teste.email', '(22) 5566-8877', '45061-812', 'Rua 1', 'Campinhos', 'Vitória da Conquista', 'BA', '2021-04-10 02:27:51'),
(133, 'Fernando', 'fernando@email.teste', '(55) 8877-4445', '78300-000', '', '', 'Tangará da Serra', 'MT', '2021-04-10 02:31:04'),
(134, 'Celso Teste', 'celso@email.com', '(99) 8855-6221', '12238-542', 'Rua 1', 'Rio Comprido', 'São José dos Campos', 'SP', '2021-04-10 02:32:06'),
(135, 'Mário Teste', 'mario@teste.email', '(33) 6655-4452', '29260-000', 'Rua Teste, 101', 'Teste', 'Domingos Martins', 'ES', '2021-04-10 02:33:24'),
(136, 'João Paulo', 'joao@paulo.email', '(88) 7744-1122', '37300-000', 'Rua Teste, 101', 'Teste', 'Andrelândia', 'MG', '2021-04-10 02:34:44'),
(137, 'Rita Teste', 'rita@teste.email', '(00) 1144-7755', '49680-000', 'Rua Teste, 900', 'Teste', 'Nossa Senhora da Glória', 'SE', '2021-04-10 02:35:54'),
(138, 'Paiva e Silva', 'paiva@silva.email', '(00) 2558-9464', '08226-021', 'Rua 18 de Abril', 'Cidade Antônio Estevão de Carval', 'São Paulo', 'SP', '2021-04-10 02:37:12'),
(139, 'Ana Beatriz', 'ana.beatriz@email.com', '(32) 1465-4679', '04180-112', 'Travessa 19 de Agosto', 'Jardim Maria Estela', 'São Paulo', 'SP', '2021-04-10 02:37:59'),
(140, 'José Pacheco', 'pacheco@email.com', '(31) 9717-4211', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 02:35:01'),
(141, 'Carlos Teste', 'carlos@teste.email', '(22) 2222-2222', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 02:37:09'),
(142, 'Maria', 'maria@email.com', '(02) 0055-0066', '31.255-900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 01:14:40'),
(143, 'Ribamar de Souza', 'ribamar@email.com', '(11) 0011-0022', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-08 21:38:38'),
(144, 'Ribamar Teste', 'ribamar@email.teste', '(02) 0055-0066', '31.255-901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 01:22:56'),
(145, 'Maria Rita', 'maria.rita@email.teste', '(00) 0010-0020', '31255900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 21:30:39'),
(146, 'Pedro Teste', 'pedro@email.teste', '(11) 1000-0001', '31255901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 00:35:19'),
(147, 'Ana Lúcia', 'ana.lucia@email.com', '(00) 9988-7766', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-10 02:25:46'),
(148, 'Teobaldo', 'teobaldo@email.teste', '(99) 8877-6655', '81170-423', 'Rua 1', 'Cidade Industrial', 'Curitiba', 'PR', '2021-04-10 02:26:48'),
(149, 'Fernanda', 'fernanda@teste.email', '(22) 5566-8877', '45061-812', 'Rua 1', 'Campinhos', 'Vitória da Conquista', 'BA', '2021-04-10 02:27:51'),
(150, 'Fernando', 'fernando@email.teste', '(55) 8877-4445', '78300-000', '', '', 'Tangará da Serra', 'MT', '2021-04-10 02:31:04'),
(151, 'Celso Teste', 'celso@email.com', '(99) 8855-6221', '12238-542', 'Rua 1', 'Rio Comprido', 'São José dos Campos', 'SP', '2021-04-10 02:32:06'),
(152, 'Mário Teste', 'mario@teste.email', '(33) 6655-4452', '29260-000', 'Rua Teste, 101', 'Teste', 'Domingos Martins', 'ES', '2021-04-10 02:33:24'),
(153, 'João Paulo', 'joao@paulo.email', '(88) 7744-1122', '37300-000', 'Rua Teste, 101', 'Teste', 'Andrelândia', 'MG', '2021-04-10 02:34:44'),
(154, 'Rita Teste', 'rita@teste.email', '(00) 1144-7755', '49680-000', 'Rua Teste, 900', 'Teste', 'Nossa Senhora da Glória', 'SE', '2021-04-10 02:35:54'),
(155, 'Paiva e Silva', 'paiva@silva.email', '(00) 2558-9464', '08226-021', 'Rua 18 de Abril', 'Cidade Antônio Estevão de Carval', 'São Paulo', 'SP', '2021-04-10 02:37:12'),
(156, 'Ana Beatriz', 'ana.beatriz@email.com', '(32) 1465-4679', '04180-112', 'Travessa 19 de Agosto', 'Jardim Maria Estela', 'São Paulo', 'SP', '2021-04-10 02:37:59'),
(157, 'José Pacheco', 'pacheco@email.com', '(31) 9717-4211', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 02:35:01'),
(158, 'Carlos Teste', 'carlos@teste.email', '(22) 2222-2222', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 02:37:09'),
(159, 'Maria', 'maria@email.com', '(02) 0055-0066', '31.255-900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 01:14:40'),
(160, 'Ribamar de Souza', 'ribamar@email.com', '(11) 0011-0022', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-08 21:38:38'),
(161, 'Ribamar Teste', 'ribamar@email.teste', '(02) 0055-0066', '31.255-901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 01:22:56'),
(162, 'Maria Rita', 'maria.rita@email.teste', '(00) 0010-0020', '31255900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 21:30:39'),
(163, 'Pedro Teste', 'pedro@email.teste', '(11) 1000-0001', '31255901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 00:35:19'),
(164, 'Ana Lúcia', 'ana.lucia@email.com', '(00) 9988-7766', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-10 02:25:46'),
(165, 'Teobaldo', 'teobaldo@email.teste', '(99) 8877-6655', '81170-423', 'Rua 1', 'Cidade Industrial', 'Curitiba', 'PR', '2021-04-10 02:26:48'),
(166, 'Fernanda', 'fernanda@teste.email', '(22) 5566-8877', '45061-812', 'Rua 1', 'Campinhos', 'Vitória da Conquista', 'BA', '2021-04-10 02:27:51'),
(167, 'Fernando', 'fernando@email.teste', '(55) 8877-4445', '78300-000', '', '', 'Tangará da Serra', 'MT', '2021-04-10 02:31:04'),
(168, 'Celso Teste', 'celso@email.com', '(99) 8855-6221', '12238-542', 'Rua 1', 'Rio Comprido', 'São José dos Campos', 'SP', '2021-04-10 02:32:06'),
(169, 'Mário Teste', 'mario@teste.email', '(33) 6655-4452', '29260-000', 'Rua Teste, 101', 'Teste', 'Domingos Martins', 'ES', '2021-04-10 02:33:24'),
(170, 'João Paulo', 'joao@paulo.email', '(88) 7744-1122', '37300-000', 'Rua Teste, 101', 'Teste', 'Andrelândia', 'MG', '2021-04-10 02:34:44'),
(171, 'Rita Teste', 'rita@teste.email', '(00) 1144-7755', '49680-000', 'Rua Teste, 900', 'Teste', 'Nossa Senhora da Glória', 'SE', '2021-04-10 02:35:54'),
(172, 'Paiva e Silva', 'paiva@silva.email', '(00) 2558-9464', '08226-021', 'Rua 18 de Abril', 'Cidade Antônio Estevão de Carval', 'São Paulo', 'SP', '2021-04-10 02:37:12'),
(173, 'Ana Beatriz', 'ana.beatriz@email.com', '(32) 1465-4679', '04180-112', 'Travessa 19 de Agosto', 'Jardim Maria Estela', 'São Paulo', 'SP', '2021-04-10 02:37:59'),
(174, 'José Pacheco', 'pacheco@email.com', '(31) 9717-4211', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 02:35:01'),
(175, 'Carlos Teste', 'carlos@teste.email', '(22) 2222-2222', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 02:37:09'),
(176, 'Maria', 'maria@email.com', '(02) 0055-0066', '31.255-900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 01:14:40'),
(177, 'Ribamar de Souza', 'ribamar@email.com', '(11) 0011-0022', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-08 21:38:38'),
(178, 'Ribamar Teste', 'ribamar@email.teste', '(02) 0055-0066', '31.255-901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 01:22:56'),
(179, 'Maria Rita', 'maria.rita@email.teste', '(00) 0010-0020', '31255900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 21:30:39'),
(180, 'Pedro Teste', 'pedro@email.teste', '(11) 1000-0001', '31255901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 00:35:19'),
(181, 'Ana Lúcia', 'ana.lucia@email.com', '(00) 9988-7766', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-10 02:25:46'),
(182, 'Teobaldo', 'teobaldo@email.teste', '(99) 8877-6655', '81170-423', 'Rua 1', 'Cidade Industrial', 'Curitiba', 'PR', '2021-04-10 02:26:48'),
(183, 'Fernanda', 'fernanda@teste.email', '(22) 5566-8877', '45061-812', 'Rua 1', 'Campinhos', 'Vitória da Conquista', 'BA', '2021-04-10 02:27:51'),
(184, 'Fernando', 'fernando@email.teste', '(55) 8877-4445', '78300-000', '', '', 'Tangará da Serra', 'MT', '2021-04-10 02:31:04'),
(185, 'Celso Teste', 'celso@email.com', '(99) 8855-6221', '12238-542', 'Rua 1', 'Rio Comprido', 'São José dos Campos', 'SP', '2021-04-10 02:32:06'),
(186, 'Mário Teste', 'mario@teste.email', '(33) 6655-4452', '29260-000', 'Rua Teste, 101', 'Teste', 'Domingos Martins', 'ES', '2021-04-10 02:33:24'),
(187, 'João Paulo', 'joao@paulo.email', '(88) 7744-1122', '37300-000', 'Rua Teste, 101', 'Teste', 'Andrelândia', 'MG', '2021-04-10 02:34:44'),
(188, 'Rita Teste', 'rita@teste.email', '(00) 1144-7755', '49680-000', 'Rua Teste, 900', 'Teste', 'Nossa Senhora da Glória', 'SE', '2021-04-10 02:35:54'),
(189, 'Paiva e Silva', 'paiva@silva.email', '(00) 2558-9464', '08226-021', 'Rua 18 de Abril', 'Cidade Antônio Estevão de Carval', 'São Paulo', 'SP', '2021-04-10 02:37:12'),
(190, 'Ana Beatriz', 'ana.beatriz@email.com', '(32) 1465-4679', '04180-112', 'Travessa 19 de Agosto', 'Jardim Maria Estela', 'São Paulo', 'SP', '2021-04-10 02:37:59'),
(191, 'José Pacheco', 'pacheco@email.com', '(31) 9717-4211', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 02:35:01'),
(192, 'Carlos Teste', 'carlos@teste.email', '(22) 2222-2222', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 02:37:09'),
(193, 'Maria', 'maria@email.com', '(02) 0055-0066', '31.255-900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 01:14:40'),
(194, 'Ribamar de Souza', 'ribamar@email.com', '(11) 0011-0022', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-08 21:38:38'),
(195, 'Ribamar Teste', 'ribamar@email.teste', '(02) 0055-0066', '31.255-901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 01:22:56'),
(196, 'Maria Rita', 'maria.rita@email.teste', '(00) 0010-0020', '31255900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 21:30:39'),
(197, 'Pedro Teste', 'pedro@email.teste', '(11) 1000-0001', '31255901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 00:35:19'),
(198, 'Ana Lúcia', 'ana.lucia@email.com', '(00) 9988-7766', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-10 02:25:46'),
(199, 'Teobaldo', 'teobaldo@email.teste', '(99) 8877-6655', '81170-423', 'Rua 1', 'Cidade Industrial', 'Curitiba', 'PR', '2021-04-10 02:26:48'),
(200, 'Fernanda', 'fernanda@teste.email', '(22) 5566-8877', '45061-812', 'Rua 1', 'Campinhos', 'Vitória da Conquista', 'BA', '2021-04-10 02:27:51'),
(201, 'Fernando', 'fernando@email.teste', '(55) 8877-4445', '78300-000', '', '', 'Tangará da Serra', 'MT', '2021-04-10 02:31:04'),
(202, 'Celso Teste', 'celso@email.com', '(99) 8855-6221', '12238-542', 'Rua 1', 'Rio Comprido', 'São José dos Campos', 'SP', '2021-04-10 02:32:06'),
(203, 'Mário Teste', 'mario@teste.email', '(33) 6655-4452', '29260-000', 'Rua Teste, 101', 'Teste', 'Domingos Martins', 'ES', '2021-04-10 02:33:24'),
(204, 'João Paulo', 'joao@paulo.email', '(88) 7744-1122', '37300-000', 'Rua Teste, 101', 'Teste', 'Andrelândia', 'MG', '2021-04-10 02:34:44'),
(205, 'Rita Teste', 'rita@teste.email', '(00) 1144-7755', '49680-000', 'Rua Teste, 900', 'Teste', 'Nossa Senhora da Glória', 'SE', '2021-04-10 02:35:54'),
(206, 'Paiva e Silva', 'paiva@silva.email', '(00) 2558-9464', '08226-021', 'Rua 18 de Abril', 'Cidade Antônio Estevão de Carval', 'São Paulo', 'SP', '2021-04-10 02:37:12'),
(207, 'Ana Beatriz', 'ana.beatriz@email.com', '(32) 1465-4679', '04180-112', 'Travessa 19 de Agosto', 'Jardim Maria Estela', 'São Paulo', 'SP', '2021-04-10 02:37:59'),
(208, 'José Pacheco', 'pacheco@email.com', '(31) 9717-4211', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 02:35:01'),
(209, 'Carlos Teste', 'carlos@teste.email', '(22) 2222-2222', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 02:37:09'),
(210, 'Maria', 'maria@email.com', '(02) 0055-0066', '31.255-900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 01:14:40'),
(211, 'Ribamar de Souza', 'ribamar@email.com', '(11) 0011-0022', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-08 21:38:38'),
(212, 'Ribamar Teste', 'ribamar@email.teste', '(02) 0055-0066', '31.255-901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 01:22:56'),
(213, 'Maria Rita', 'maria.rita@email.teste', '(00) 0010-0020', '31255900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 21:30:39'),
(214, 'Pedro Teste', 'pedro@email.teste', '(11) 1000-0001', '31255901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 00:35:19'),
(215, 'Ana Lúcia', 'ana.lucia@email.com', '(00) 9988-7766', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-10 02:25:46'),
(216, 'Teobaldo', 'teobaldo@email.teste', '(99) 8877-6655', '81170-423', 'Rua 1', 'Cidade Industrial', 'Curitiba', 'PR', '2021-04-10 02:26:48'),
(217, 'Fernanda', 'fernanda@teste.email', '(22) 5566-8877', '45061-812', 'Rua 1', 'Campinhos', 'Vitória da Conquista', 'BA', '2021-04-10 02:27:51'),
(218, 'Fernando', 'fernando@email.teste', '(55) 8877-4445', '78300-000', '', '', 'Tangará da Serra', 'MT', '2021-04-10 02:31:04'),
(219, 'Celso Teste', 'celso@email.com', '(99) 8855-6221', '12238-542', 'Rua 1', 'Rio Comprido', 'São José dos Campos', 'SP', '2021-04-10 02:32:06'),
(220, 'Mário Teste', 'mario@teste.email', '(33) 6655-4452', '29260-000', 'Rua Teste, 101', 'Teste', 'Domingos Martins', 'ES', '2021-04-10 02:33:24'),
(221, 'João Paulo', 'joao@paulo.email', '(88) 7744-1122', '37300-000', 'Rua Teste, 101', 'Teste', 'Andrelândia', 'MG', '2021-04-10 02:34:44'),
(222, 'Rita Teste', 'rita@teste.email', '(00) 1144-7755', '49680-000', 'Rua Teste, 900', 'Teste', 'Nossa Senhora da Glória', 'SE', '2021-04-10 02:35:54'),
(223, 'Paiva e Silva', 'paiva@silva.email', '(00) 2558-9464', '08226-021', 'Rua 18 de Abril', 'Cidade Antônio Estevão de Carval', 'São Paulo', 'SP', '2021-04-10 02:37:12'),
(224, 'Ana Beatriz', 'ana.beatriz@email.com', '(32) 1465-4679', '04180-112', 'Travessa 19 de Agosto', 'Jardim Maria Estela', 'São Paulo', 'SP', '2021-04-10 02:37:59'),
(225, 'José Pacheco', 'pacheco@email.com', '(31) 9717-4211', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 02:35:01'),
(226, 'Carlos Teste', 'carlos@teste.email', '(22) 2222-2222', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 02:37:09'),
(227, 'Aderbal Teste', 'aderbal@teste.email', '(00) 9812-7271', '86020-908', 'Avenida Higienópolis 174', 'Centro', 'Londrina', 'PR', '2021-04-11 23:27:03');

-- --------------------------------------------------------

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contatos`
--
ALTER TABLE `contatos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
