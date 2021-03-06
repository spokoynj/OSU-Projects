DROP TABLE IF EXISTS `Ties`;

-- Create Ties Table
CREATE TABLE Ties (
	Char1_ID INT NOT NULL,
	Char2_ID INT NOT NULL,
	CT_ID INT NOT NULL,
	PRIMARY KEY(Char1_ID, Char2_ID, CT_ID),
	CONSTRAINT Char1FK FOREIGN KEY (Char1_ID) REFERENCES Characters (id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT Char2FK FOREIGN KEY (Char2_ID) REFERENCES Characters (id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT ConnTypeFK FOREIGN KEY (CT_ID) REFERENCES Connection_Type (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;