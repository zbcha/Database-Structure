use bzhang;

CREATE TABLE `Museum` (
  `idMuseum` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `artNum` varchar(255) NOT NULL
);

ALTER TABLE `Museum`
  ADD PRIMARY KEY (`idMuseum`);
  
CREATE TABLE `Artifect` (
  `idArt` int(11) NOT NULL,
  `nameCreator` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `exhibition_area` int(11) NOT NULL
);

ALTER TABLE `Artifect`
  ADD PRIMARY KEY (`idArt`);
  
ALTER TABLE `Artifect`
  ADD FOREIGN KEY (`exhibition_area`) REFERENCES `Museum` (`idMuseum`);

INSERT INTO `Museum` (`idMuseum`, `name`, `artNum`) VALUES
(1, 'Metropolitan Museum', '120'),
(2, 'Musee Orsay', '130'),
(3, 'The Art Institude of Chicago', '90'),
(4, 'The Louvre Museum', '150'),
(5, 'State Hermitage Museum', '125');

INSERT INTO `Artifect` (`idArt`, `nameCreator`, `title`, `exhibition_area`) VALUES
(1,'C.M. Coolidge','Dogs Playing Poker',1),
(2,'Jackson Pollock','No.5 1948',3),
(3,'Rene Magrittees','The SOn of Man',2),
(4,'Mark Rotgko','Royal Red and Blue',4),
(5,'Peter Paul Rubens','Massacre of The Innocents',5);

