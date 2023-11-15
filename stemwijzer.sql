-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 15, 2023 at 03:53 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stemwijzer`
--

DROP DATABASE IF EXISTS `stemwijzer`;
CREATE DATABASE `stemwijzer`;
USE `stemwijzer`;

-- --------------------------------------------------------

--
-- Table structure for table `EU`
--

CREATE TABLE `EU` (
  `id` bigint(20) NOT NULL,
  `partij` varchar(256) NOT NULL,
  `standpunt` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `EU`
--

INSERT INTO `EU` (`id`, `partij`, `standpunt`) VALUES
(1, 'VVD (Volkspartij voor Vrijheid en Democratie)', 'De VVD is over het algemeen pro-Europees, maar ze pleiten voor hervormingen in de EU. Ze willen een efficiëntere EU met focus op kerntaken, zoals de interne markt, en zijn kritisch op verdere Europese integratie.'),
(2, 'CDA (Christen-Democratisch Appèl)', 'Het CDA is voorstander van een sterke en democratische EU. Ze pleiten voor samenwerking op terreinen als veiligheid en migratie, maar willen de nationale soevereiniteit behouden.'),
(3, 'D66 (Democraten 66)', 'D66 is een pro-Europese partij en pleit voor verdere Europese samenwerking. Ze willen een democratischer en transparantere EU en zijn voorstander van verdieping van de Europese integratie.'),
(4, 'GroenLinks', 'GroenLinks is pro-Europees en pleit voor meer samenwerking op het gebied van klimaat, migratie en sociale rechtvaardigheid. Ze willen een Europese Green New Deal en hervormingen in het Europees asielbeleid.'),
(5, 'PvdA (Partij van de Arbeid)', 'De PvdA is pro-Europees en wil samenwerking binnen de EU versterken. Ze pleiten voor sociale hervormingen, een Europese arbeidsautoriteit, en gezamenlijke investeringen in duurzaamheid.'),
(6, 'SP (Socialistische Partij)', 'De SP is kritisch op de huidige EU en pleit voor een socialere en democratischere Unie. Ze zijn tegen verdere Europese centralisatie en willen meer nadruk op solidariteit.'),
(7, 'PVV (Partij voor de Vrijheid)', 'De PVV is kritisch over de EU en pleit voor meer nationale soevereiniteit. Ze willen dat Nederland uit de EU stapt en pleiten voor meer autonomie op het gebied van wetgeving en immigratie.'),
(8, 'Forum voor Democratie', 'FVD is kritisch op de huidige vorm van Europese integratie en pleit voor meer nationale soevereiniteit. Ze willen een andere relatie met de EU, met meer nadruk op samenwerking dan op integratie.');

-- --------------------------------------------------------

--
-- Table structure for table `immigratie`
--

CREATE TABLE `immigratie` (
  `id` bigint(20) NOT NULL,
  `partij` varchar(256) NOT NULL,
  `standpunt` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `immigratie`
--

INSERT INTO `immigratie` (`id`, `partij`, `standpunt`) VALUES
(1, 'VVD (Volkspartij voor Vrijheid en Democratie)', 'De VVD is over het algemeen voor een streng immigratiebeleid. Ze willen de instroom van migranten beheersen, onder meer door het beperken van het aantal asielzoekers en het stellen van hogere eisen aan integratie.'),
(2, 'CDA (Christen-Democratisch Appèl)', 'Het CDA pleit voor een realistisch en rechtvaardig migratiebeleid. Ze willen de instroom reguleren, illegale migratie bestrijden en investeren in integratie om de samenleving samen te binden.'),
(3, 'D66 (Democraten 66)', 'D66 is voor een humaan en rechtvaardig migratiebeleid. Ze willen investeren in snelle en zorgvuldige asielprocedures, pleiten voor opvang in de regio, en staan open voor arbeidsmigratie.'),
(4, 'GroenLinks', 'GroenLinks pleit voor een humaan migratiebeleid en wil de rechten van vluchtelingen beschermen. Ze zijn voorstander van ruimhartiger asielbeleid, investeringen in integratie, en meer samenwerking op Europees niveau.'),
(5, 'PvdA (Partij van de Arbeid)', 'De PvdA staat voor een rechtvaardig en effectief migratiebeleid. Ze willen snelle asielprocedures, bestrijding van mensenhandel, en investeren in integratie en taalonderwijs.'),
(6, 'SP (Socialistische Partij)', 'De SP pleit voor een humaan en solidair migratiebeleid. Ze willen een eerlijk asielbeleid, bestrijden van uitbuiting van arbeidsmigranten, en investeren in integratie.'),
(7, 'PVV (Partij voor de Vrijheid)', 'De PVV is kritisch op immigratie en pleit voor een streng beleid. Ze willen de grenzen sluiten, de immigratie stoppen en strengere eisen stellen aan integratie.'),
(8, 'Forum voor Democratie', 'FVD is kritisch op de huidige vorm van immigratie en wil meer controle. Ze pleiten voor een immigratiemoratorium, strengere eisen aan integratie, en meer inspraak voor burgers.');

-- --------------------------------------------------------

--
-- Table structure for table `Inkomen`
--

CREATE TABLE `Inkomen` (
  `id` bigint(20) NOT NULL,
  `partij` varchar(256) NOT NULL,
  `standpunt` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Inkomen`
--

INSERT INTO `Inkomen` (`id`, `partij`, `standpunt`) VALUES
(1, 'VVD (Volkspartij voor Vrijheid en Democratie)', 'De VVD pleit vaak voor lagere belastingen, vooral voor bedrijven en hogere inkomens, met als doel de economie te stimuleren. Ze benadrukken het belang van individuele verantwoordelijkheid en ondernemerschap.'),
(2, 'CDA (Christen-Democratisch Appèl)', 'Het CDA benadrukt solidariteit en rechtvaardigheid in de inkomensverdeling. Ze kunnen pleiten voor maatregelen om de kloof tussen hogere en lagere inkomens te verkleinen.'),
(3, 'D66 (Democraten 66)', 'D66 pleit vaak voor een progressief belastingstelsel en investeringen in onderwijs en innovatie. Ze hebben aandacht voor sociale rechtvaardigheid en gelijke kansen.'),
(4, 'GroenLinks', 'GroenLinks richt zich op inkomensongelijkheid en pleit voor een eerlijke verdeling van welvaart. Ze kunnen voorstellen doen voor hogere belastingen voor de rijken en meer sociale voorzieningen.'),
(5, 'PvdA (Partij van de Arbeid)', 'De PvdA streeft naar een eerlijke inkomensverdeling en kan pleiten voor hogere lonen en betere arbeidsvoorwaarden. Ze hebben vaak aandacht voor de positie van werknemers.'),
(6, 'SP (Socialistische Partij)', 'De SP is gericht op het verkleinen van inkomensongelijkheid en pleit voor hogere belastingen voor hogere inkomens. Ze zetten zich in voor sociale voorzieningen en arbeidersrechten.'),
(7, 'PVV (Partij voor de Vrijheid)', 'De PVV kan pleiten voor belastingverlagingen en het behoud van koopkracht voor burgers. Ze richten zich vaak op het verminderen van de belastingdruk.'),
(8, 'Forum voor Democratie', 'FVD heeft mogelijk standpunten over het verminderen van overheidsbemoeienis en belastingverlagingen. Ze kunnen zich richten op een meer liberale economische benadering.');

-- --------------------------------------------------------

--
-- Table structure for table `Klimaat_en_milieu`
--

CREATE TABLE `Klimaat_en_milieu` (
  `id` bigint(20) NOT NULL,
  `partij` varchar(256) NOT NULL,
  `standpunt` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Klimaat_en_milieu`
--

INSERT INTO `Klimaat_en_milieu` (`id`, `partij`, `standpunt`) VALUES
(1, 'VVD (Volkspartij voor Vrijheid en Democratie)', 'De VVD erkent de urgentie van klimaatverandering maar benadrukt een evenwicht tussen milieudoelen en economische groei. Ze streven naar duurzaamheid via innovatie en marktwerking, zonder zware belastingen.'),
(2, 'CDA (Christen-Democratisch Appèl)', 'Het CDA zet in op een duurzaam en circulair Nederland. Ze willen investeren in schone energie en een verantwoorde omgang met natuurlijke hulpbronnen, met aandacht voor draagvlak in de samenleving.'),
(3, 'D66 (Democraten 66)', 'D66 pleit voor ambitieuze klimaatdoelen, investeringen in duurzame energie en een overgang naar een circulaire economie. Ze hechten waarde aan internationale samenwerking voor mondiale klimaatoplossingen.'),
(4, 'GroenLinks', 'GroenLinks zet sterk in op klimaat en milieu. Ze willen de uitstoot van broeikasgassen verminderen, investeren in duurzame energie, en streven naar een groene economie met sociale rechtvaardigheid.'),
(5, 'PvdA (Partij van de Arbeid)', 'De PvdA pleit voor een groene en sociale transitie. Ze willen investeren in duurzame energie, vergroening van de economie, en banen creëren in de groene sector.'),
(6, 'SP (Socialistische Partij)', 'De SP streeft naar een rechtvaardige groene transitie. Ze willen investeren in duurzame energie, openbaar vervoer, en betaalbare maatregelen voor burgers.'),
(7, 'PVV (Partij voor de Vrijheid)', 'De PVV heeft kritische standpunten over klimaatbeleid en is voorstander van het verminderen van milieubelastingen. Ze willen geen extra lasten voor burgers.'),
(8, 'Forum voor Democratie', 'FVD heeft kritische standpunten over klimaatbeleid en wil investeren in innovatieve oplossingen. Ze zijn voor een realistisch en economisch verantwoord milieubeleid.');

-- --------------------------------------------------------

--
-- Table structure for table `Onderwijs`
--

CREATE TABLE `Onderwijs` (
  `id` bigint(20) NOT NULL,
  `partij` varchar(256) NOT NULL,
  `standpunt` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Onderwijs`
--

INSERT INTO `Onderwijs` (`id`, `partij`, `standpunt`) VALUES
(1, 'VVD (Volkspartij voor Vrijheid en Democratie)', 'De VVD wil meer autonomie voor scholen en leraren. Ze streven naar excellentie in het onderwijs, meer aandacht voor vakmanschap, en investeringen in digitale vaardigheden.'),
(2, 'CDA (Christen-Democratisch Appèl)', 'Het CDA benadrukt de waarde van goed onderwijs als basis voor persoonlijke ontwikkeling. Ze pleiten voor gelijke kansen, aandacht voor vakmanschap, en investeringen in het lerarentekort.'),
(3, 'D66 (Democraten 66)', 'D66 zet in op vernieuwing van het onderwijs. Ze willen investeren in leraren, verminderen van de werkdruk, aandacht voor digitalisering, en flexibeler onderwijs met maatwerk.'),
(4, 'GroenLinks', 'GroenLinks pleit voor investeringen in onderwijs als motor voor gelijke kansen. Ze willen kleinere klassen, meer ondersteuning voor leraren, en aandacht voor duurzaamheid en burgerschap.'),
(5, 'PvdA (Partij van de Arbeid)', 'De PvdA wil gelijke kansen voor alle kinderen, ongeacht hun achtergrond. Ze pleiten voor investeringen in het onderwijs, verkleinen van klassen, en bestrijden van kansenongelijkheid.'),
(6, 'SP (Socialistische Partij)', 'De SP wil investeren in de kwaliteit van het onderwijs en het verlagen van de werkdruk voor leraren. Ze zijn voorstander van kleinere klassen en gratis schoolboeken.'),
(7, 'PVV (Partij voor de Vrijheid)', 'De PVV wil het Nederlandse onderwijs behouden en versterken. Ze zijn kritisch op invloeden vanuit het buitenland en pleiten voor behoud van Nederlandse normen en waarden.'),
(8, 'Forum voor Democratie', 'FVD pleit voor meer aandacht voor kennisoverdracht in het onderwijs en wil de invloed van de overheid verminderen. Ze zijn voorstander van klassikaal onderwijs en strengere eisen voor leraren.');

-- --------------------------------------------------------

--
-- Table structure for table `Pensioen`
--

CREATE TABLE `Pensioen` (
  `id` bigint(20) NOT NULL,
  `partij` varchar(256) NOT NULL,
  `standpunt` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Pensioen`
--

INSERT INTO `Pensioen` (`id`, `partij`, `standpunt`) VALUES
(1, 'VVD (Volkspartij voor Vrijheid en Democratie)', 'De VVD pleit vaak voor meer individualisering van pensioenen en wil meer keuzevrijheid voor individuen. Ze hechten waarde aan het stimuleren van eigen verantwoordelijkheid bij pensioenopbouw.'),
(2, 'CDA (Christen-Democratisch Appèl)', 'Het CDA benadrukt de behoefte aan een stabiel pensioenstelsel en wil de koopkracht van gepensioneerden behouden. Ze kunnen pleiten voor solidariteit tussen generaties.'),
(3, 'D66 (Democraten 66)', 'D66 pleit vaak voor een flexibeler pensioenstelsel en meer keuzevrijheid voor individuen. Ze hebben aandacht voor de veranderende arbeidsmarkt en de noodzaak van aanpassingen in het pensioenstelsel.'),
(4, 'GroenLinks', 'GroenLinks heeft aandacht voor duurzaamheid in pensioenbeleggingen en pleit voor een eerlijke verdeling van pensioenlasten. Ze kunnen voorstellen doen om pensioenfondsen duurzamer te maken.'),
(5, 'PvdA (Partij van de Arbeid)', 'De PvdA is traditioneel gericht op sociale rechtvaardigheid en gelijke kansen. Ze pleiten vaak voor het behoud van een solide en collectief pensioenstelsel, met aandacht voor koopkrachtbehoud.'),
(6, 'SP (Socialistische Partij)', 'De SP is voorstander van het behouden en versterken van het collectieve karakter van het pensioenstelsel. Ze pleiten vaak voor hogere pensioenuitkeringen en een lagere AOW-leeftijd.'),
(7, 'PVV (Partij voor de Vrijheid)', 'De PVV heeft mogelijk standpunten over het behoud van koopkracht voor gepensioneerden. Ze kunnen pleiten voor maatregelen om de pensioenuitkeringen op peil te houden.'),
(8, 'Forum voor Democratie', 'FVD heeft mogelijk standpunten over het versterken van individuele pensioenopbouw en het verminderen van overheidsinvloed op pensioenen.');

-- --------------------------------------------------------

--
-- Table structure for table `Veiligheid_en_Criminaliteit`
--

CREATE TABLE `Veiligheid_en_Criminaliteit` (
  `id` bigint(20) NOT NULL,
  `partij` varchar(256) NOT NULL,
  `standpunt` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Veiligheid_en_Criminaliteit`
--

INSERT INTO `Veiligheid_en_Criminaliteit` (`id`, `partij`, `standpunt`) VALUES
(1, 'VVD (Volkspartij voor Vrijheid en Democratie)', 'De VVD legt de nadruk op handhaving van de openbare orde en veiligheid. Ze pleiten voor meer politie, hogere straffen voor veelplegers, en maatregelen om terrorisme te bestrijden.'),
(2, 'CDA (Christen-Democratisch Appèl)', 'Het CDA zet in op een stevige aanpak van criminaliteit en het versterken van de positie van slachtoffers. Ze pleiten voor meer blauw op straat, betere handhaving, en een focus op preventie.'),
(3, 'D66 (Democraten 66)', 'D66 wil investeren in preventie, zoals betere jeugdzorg en onderwijs, om criminaliteit te voorkomen. Ze pleiten voor een effectief en rechtvaardig strafrechtstelsel.'),
(4, 'GroenLinks', 'GroenLinks benadrukt preventie en sociale maatregelen als middelen om criminaliteit tegen te gaan. Ze willen investeren in buurtpreventie, jeugdzorg, en rehabilitatie van gevangenen.'),
(5, 'PvdA (Partij van de Arbeid)', 'De PvdA wil inzetten op preventie, zoals betere jeugdzorg en onderwijs. Ze pleiten voor een effectief strafrecht, met aandacht voor slachtoffers en rehabilitatie.'),
(6, 'SP (Socialistische Partij)', 'De SP pleit voor meer agenten op straat en investeringen in sociale maatregelen om criminaliteit tegen te gaan. Ze willen de nadruk leggen op preventie en maatregelen tegen armoede.'),
(7, 'PVV (Partij voor de Vrijheid)', 'De PVV is voorstander van een harde aanpak van criminaliteit en wil meer politie op straat. Ze pleiten voor hogere straffen en strengere maatregelen tegen veelplegers.'),
(8, 'Forum voor Democratie', 'FVD pleit voor meer aandacht voor slachtoffers van criminaliteit en een harde aanpak van daders. Ze willen meer investeren in handhaving en veiligheid.');

-- --------------------------------------------------------

--
-- Table structure for table `Woonmarkt`
--

CREATE TABLE `Woonmarkt` (
  `id` bigint(20) NOT NULL,
  `partij` varchar(256) NOT NULL,
  `standpunt` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Woonmarkt`
--

INSERT INTO `Woonmarkt` (`id`, `partij`, `standpunt`) VALUES
(1, 'VVD (Volkspartij voor Vrijheid en Democratie)', 'De VVD pleit voor meer marktwerking op de woningmarkt en wil de bouw van nieuwe woningen stimuleren. Ze streven naar een flexibeler stelsel en minder regelgeving om de doorstroming te bevorderen.'),
(2, 'CDA (Christen-Democratisch Appèl)', 'Het CDA benadrukt de behoefte aan betaalbare woningen en stabiliteit op de woningmarkt. Ze richten zich op maatregelen ter ondersteuning van starters en willen de woningbouwproductie verhogen.'),
(3, 'D66 (Democraten 66)', 'D66 pleit voor meer flexibiliteit en keuzevrijheid op de woningmarkt. Ze willen duurzaamheid in de bouw bevorderen en innovatie aanmoedigen, met bijzondere aandacht voor starters en middeninkomens.'),
(4, 'GroenLinks', 'GroenLinks richt zich op duurzaamheid en betaalbare woningen. Ze willen maatregelen nemen om speculatie tegen te gaan, de sociale huursector te vergroten en de bouw van energiezuinige woningen te stimuleren.'),
(5, 'PvdA (Partij van de Arbeid)', 'De PvdA streeft naar een eerlijke verdeling van woningen en pleit voor betaalbare huisvesting. Ze willen investeren in sociale huurwoningen en maatregelen nemen om speculatie op de woningmarkt tegen te gaan.'),
(6, 'SP (Socialistische Partij)', 'De SP is voorstander van een actieve rol van de overheid op de woningmarkt. Ze willen het aanbod van betaalbare huurwoningen vergroten, speculatie tegengaan en de positie van huurders versterken.'),
(7, 'PVV (Partij voor de Vrijheid)', 'De PVV heeft mogelijk standpunten over het behouden van de Nederlandse identiteit in de woonomgeving en kan pleiten voor beperkingen op immigratie die de vraag naar woningen beïnvloeden.'),
(8, 'Forum voor Democratie', 'FVD heeft mogelijk standpunten over het verminderen van overheidsinvloed op de woningmarkt en kan pleiten voor meer ruimte voor particulier initiatief in de bouwsector.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `EU`
--
ALTER TABLE `EU`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `immigratie`
--
ALTER TABLE `immigratie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Inkomen`
--
ALTER TABLE `Inkomen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Klimaat_en_milieu`
--
ALTER TABLE `Klimaat_en_milieu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Onderwijs`
--
ALTER TABLE `Onderwijs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Pensioen`
--
ALTER TABLE `Pensioen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Veiligheid_en_Criminaliteit`
--
ALTER TABLE `Veiligheid_en_Criminaliteit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Woonmarkt`
--
ALTER TABLE `Woonmarkt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `EU`
--
ALTER TABLE `EU`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `immigratie`
--
ALTER TABLE `immigratie`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Inkomen`
--
ALTER TABLE `Inkomen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Klimaat_en_milieu`
--
ALTER TABLE `Klimaat_en_milieu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Onderwijs`
--
ALTER TABLE `Onderwijs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Pensioen`
--
ALTER TABLE `Pensioen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Veiligheid_en_Criminaliteit`
--
ALTER TABLE `Veiligheid_en_Criminaliteit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Woonmarkt`
--
ALTER TABLE `Woonmarkt`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
