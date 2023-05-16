-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 16, 2023 alle 10:21
-- Versione del server: 10.4.28-MariaDB
-- Versione PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ecommerce`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `ecommerce_carrello`
--

CREATE TABLE `ecommerce_carrello` (
  `IdCarrello` int(11) NOT NULL,
  `IdUtente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `ecommerce_carrello`
--

INSERT INTO `ecommerce_carrello` (`IdCarrello`, `IdUtente`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `ecommerce_commenti`
--

CREATE TABLE `ecommerce_commenti` (
  `IdCommento` int(11) NOT NULL,
  `IdProdotto` int(11) NOT NULL,
  `IdUtente` int(11) DEFAULT NULL,
  `Commento` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `ecommerce_commenti`
--

INSERT INTO `ecommerce_commenti` (`IdCommento`, `IdProdotto`, `IdUtente`, `Commento`) VALUES
(1, 1, 2, 'PRODOTTO VALIDISSIMO');

-- --------------------------------------------------------

--
-- Struttura della tabella `ecommerce_contiene`
--

CREATE TABLE `ecommerce_contiene` (
  `IdProdotto` int(11) NOT NULL,
  `IdCarrello` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `ecommerce_contiene`
--

INSERT INTO `ecommerce_contiene` (`IdProdotto`, `IdCarrello`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `ecommerce_prodotto`
--

CREATE TABLE `ecommerce_prodotto` (
  `IdProdotto` int(11) NOT NULL,
  `IdCategoria` int(11) NOT NULL,
  `Nome` varchar(32) NOT NULL,
  `Descrizione` varchar(255) NOT NULL,
  `Immagine` varchar(32) NOT NULL,
  `Prezzo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `ecommerce_prodotto`
--

INSERT INTO `ecommerce_prodotto` (`IdProdotto`, `IdCategoria`, `Nome`, `Descrizione`, `Immagine`, `Prezzo`) VALUES
(1, 1, 'Iphone 14', '256 gb\r\nfantastico prodotto', 'Iphone14.jpg', 1168),
(2, 1, 'MacBookAir', 'Memoria 1tb\r\nfantastico', 'macbookAir.jpg', 2000),
(3, 1, 'Samsung Galaxy S23 ULTRA', '\r\nMarchio	SAMSUNG\r\nNome modello	SM-S918BZKDEUE\r\nCarrier wireless	Sbloccato\r\nOS	Android 13.0\r\nTecnologia cellulare	5G\r\nCapacità della memoria	256 GB\r\nTecnologie di connettività	Bluetooth, Wi-Fi, NFC\r\nColore	Phantom Black\r\nDimensioni schermo	6.8 Pollici\r\nDi', 'S23Ultra.jpg', 1199),
(4, 1, 'SUPPORTO TELEFONO PER AUTO', 'Colore: Nero\r\nMarchio	Miracase\r\nColore	Nero\r\nDispositivi compatibili	Smartphone\r\nModelli di telefono compatibili	iPhone, Samsung, Tutti Telefoni\r\nTipo di montaggio	Cruscotto, Sfiato, Parabrezza', 'SupportoTelefono,jpg', 20);

-- --------------------------------------------------------

--
-- Struttura della tabella `ecommerce_utenti`
--

CREATE TABLE `ecommerce_utenti` (
  `IdUtente` int(11) NOT NULL,
  `Username` varchar(32) NOT NULL,
  `Password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `ecommerce_utenti`
--

INSERT INTO `ecommerce_utenti` (`IdUtente`, `Username`, `Password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'gabri', 'cbdf1cdb5ce10b2b93d9291ccb937cfe'),
(3, 'lilmarcat', '72cedc646456b9597c2671f230595e79');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `ecommerce_carrello`
--
ALTER TABLE `ecommerce_carrello`
  ADD PRIMARY KEY (`IdCarrello`),
  ADD KEY `IdUtente` (`IdUtente`),
  ADD KEY `IdCarrello` (`IdCarrello`);

--
-- Indici per le tabelle `ecommerce_commenti`
--
ALTER TABLE `ecommerce_commenti`
  ADD PRIMARY KEY (`IdCommento`),
  ADD KEY `FK1` (`IdUtente`);

--
-- Indici per le tabelle `ecommerce_contiene`
--
ALTER TABLE `ecommerce_contiene`
  ADD KEY `IdProdotto` (`IdProdotto`),
  ADD KEY `IdCarrello` (`IdCarrello`);

--
-- Indici per le tabelle `ecommerce_prodotto`
--
ALTER TABLE `ecommerce_prodotto`
  ADD PRIMARY KEY (`IdProdotto`),
  ADD KEY `IdProdotto` (`IdProdotto`);

--
-- Indici per le tabelle `ecommerce_utenti`
--
ALTER TABLE `ecommerce_utenti`
  ADD PRIMARY KEY (`IdUtente`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `ecommerce_commenti`
--
ALTER TABLE `ecommerce_commenti`
  MODIFY `IdCommento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `ecommerce_prodotto`
--
ALTER TABLE `ecommerce_prodotto`
  MODIFY `IdProdotto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `ecommerce_utenti`
--
ALTER TABLE `ecommerce_utenti`
  MODIFY `IdUtente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `ecommerce_carrello`
--
ALTER TABLE `ecommerce_carrello`
  ADD CONSTRAINT `ecommerce_carrello_ibfk_1` FOREIGN KEY (`IdUtente`) REFERENCES `ecommerce_utenti` (`IdUtente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `ecommerce_commenti`
--
ALTER TABLE `ecommerce_commenti`
  ADD CONSTRAINT `FK1` FOREIGN KEY (`IdUtente`) REFERENCES `ecommerce_utenti` (`IdUtente`);

--
-- Limiti per la tabella `ecommerce_contiene`
--
ALTER TABLE `ecommerce_contiene`
  ADD CONSTRAINT `FK2` FOREIGN KEY (`IdProdotto`) REFERENCES `ecommerce_prodotto` (`IdProdotto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ecommerce_contiene_ibfk_2` FOREIGN KEY (`IdCarrello`) REFERENCES `ecommerce_carrello` (`IdCarrello`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
