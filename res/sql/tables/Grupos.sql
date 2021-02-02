CREATE TABLE IF NOT EXISTS `Grupos` (
 `Id_Grupo` INT NOT NULL AUTO_INCREMENT,
 `Año_Grupo` INT NOT NULL,
 `Cod_Interno` VARCHAR(350) NOT NULL,
 `Id_Carrera` INT NOT NULL,
 `CreateAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 UNIQUE KEY(`Cod_Interno`),
 FOREIGN KEY(`Id_Carrera`) REFERENCES `Carreras`(`Id_Carrera`) ON UPDATE CASCADE ON DELETE CASCADE,
 PRIMARY KEY (`Id_Grupo`)
);