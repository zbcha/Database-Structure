CREATE TABLE `Check_List` (
   `idCheck_List` int(11) NOT NULL,
   `S_ID` int(11) NOT NULL,
   `S_NAME` varchar(255) NOT NULL,
   `DATE` date NOT NULL,
   `E_NAME` varchar(255) NOT NULL,
   `E_ID` int(11) NOT NULL,
   `GYM_ID` int(11) NOT NULL
);

ALTER TABLE `Check_List`
   ADD PRIMARY KEY (`idCheck_List`);
   
CREATE TABLE `Student`(
   `S_NAME` varchar(255) NOT NULL,
   `S_ID` int(11) NOT NULL,
   `S_COUNT` int(11) NOT NULL
);

ALTER TABLE `Student`
   ADD PRIMARY KEY (`S_ID`);
   
CREATE TABLE `Gym` (
   `GYM_ID` int(11) NOT NULL,
   `LOCATION` varchar(255) NOT NULL,
   `E_NUM` int(11) NOT NULL
);

ALTER TABLE `Gym`
   ADD PRIMARY KEY (`GYM_ID`);
   
CREATE TABLE `Sports_Equipment`(
   `E_ID` int(11) NOT NULL,
   `GYM_ID` int(11) NOT NULL,
   `E_NAME` varchar(225) NOT NULL
);

ALTER TABLE `Sports_Equipment`
   ADD PRIMARY KEY (`E_ID`);
   