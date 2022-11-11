-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema VirtualTrends
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema VirtualTrends
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `VirtualTrends` DEFAULT CHARACTER SET utf8 ;
USE `VirtualTrends` ;

-- -----------------------------------------------------
-- Table `VirtualTrends`.`Provincia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `VirtualTrends`.`Provincia` (
  `id_provincia` INT NOT NULL,
  `provincia_nom` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id_provincia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `VirtualTrends`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `VirtualTrends`.`Usuario` (
  `id_usuario` INT NOT NULL,
  `dni` INT NOT NULL,
  `nombre` VARCHAR(30) NOT NULL,
  `apellido` VARCHAR(30) NOT NULL,
  `contraseña` INT NOT NULL,
  `teléfono` VARCHAR(15) NOT NULL,
  `dirección` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `cod_postal` VARCHAR(10) NOT NULL,
  `ciudad` VARCHAR(45) NOT NULL,
  `id_provincia` INT NOT NULL,
  PRIMARY KEY (`id_usuario`, `id_provincia`),
  UNIQUE INDEX `Contraseña_UNIQUE` (`contraseña` ASC) VISIBLE,
  INDEX `fk_Persona_Provincia1_idx` (`id_provincia` ASC) VISIBLE,
  CONSTRAINT `fk_Persona_Provincia1`
    FOREIGN KEY (`id_provincia`)
    REFERENCES `VirtualTrends`.`Provincia` (`id_provincia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `VirtualTrends`.`Diseñador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `VirtualTrends`.`Diseñador` (
  `id_diseñador` INT NOT NULL,
  `dni` INT NOT NULL,
  `nombre` VARCHAR(30) NOT NULL,
  `apellido` VARCHAR(30) NOT NULL,
  `contraseña` VARCHAR(8) NOT NULL,
  `teléfono` VARCHAR(15) NOT NULL,
  `dirección` VARCHAR(25) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `cod_postal` VARCHAR(10) NOT NULL,
  `ciudad` VARCHAR(45) NOT NULL,
  `id_provincia` INT NOT NULL,
  PRIMARY KEY (`id_diseñador`, `id_provincia`),
  UNIQUE INDEX `contraseña_UNIQUE` (`contraseña` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  INDEX `fk_Diseñador_Provincia1_idx` (`id_provincia` ASC) VISIBLE,
  CONSTRAINT `fk_Diseñador_Provincia1`
    FOREIGN KEY (`id_provincia`)
    REFERENCES `VirtualTrends`.`Provincia` (`id_provincia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `VirtualTrends`.`Categoria_producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `VirtualTrends`.`Categoria_producto` (
  `id_categoria_producto` INT NOT NULL,
  `nombre_categoria` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_categoria_producto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `VirtualTrends`.`Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `VirtualTrends`.`Producto` (
  `id_producto` INT NOT NULL,
  `nombre_producto` VARCHAR(45) NOT NULL,
  `id_categoria_producto` INT NOT NULL,
  `descripcion_producto` VARCHAR(45) NULL,
  `precio_producto` INT NOT NULL,
  `id_diseñador` INT NOT NULL,
  PRIMARY KEY (`id_producto`, `id_diseñador`, `id_categoria_producto`),
  INDEX `fk_Producto_Diseñador1_idx` (`id_diseñador` ASC) VISIBLE,
  INDEX `fk_Categoria_id_categoria_producto_idx` (`id_categoria_producto` ASC) VISIBLE,
  CONSTRAINT `fk_Producto_Diseñador1`
    FOREIGN KEY (`id_diseñador`)
    REFERENCES `VirtualTrends`.`Diseñador` (`id_diseñador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Categoria_id_categoria_producto`
    FOREIGN KEY (`id_categoria_producto`)
    REFERENCES `VirtualTrends`.`Categoria_producto` (`id_categoria_producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `VirtualTrends`.`Imagen`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `VirtualTrends`.`Imagen` (
  `id_imagen` INT NOT NULL,
  `nombre` VARCHAR(30) NOT NULL,
  `imagen` BLOB NULL,
  `id_producto` INT NOT NULL,
  PRIMARY KEY (`id_imagen`, `id_producto`),
  INDEX `fk_Imágenes_Producto1_idx` (`id_producto` ASC) VISIBLE,
  CONSTRAINT `fk_Imágenes_Producto1`
    FOREIGN KEY (`id_producto`)
    REFERENCES `VirtualTrends`.`Producto` (`id_producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `VirtualTrends`.`Medida_corporal_personal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `VirtualTrends`.`Medida_corporal_personal` (
  `id_medida_corporal_personal` INT NOT NULL,
  `medida_hombro` VARCHAR(45) NULL,
  `media_cuello` VARCHAR(45) NULL,
  `altura_de_pecho` VARCHAR(45) NULL,
  `contorno_de_pecho` VARCHAR(45) NULL,
  `cintura` VARCHAR(45) NULL,
  `alto_de_cintura` VARCHAR(45) NULL,
  `cadera` VARCHAR(45) NULL,
  `alto_de_cadera` VARCHAR(45) NULL,
  `ancho_de_espalda` VARCHAR(45) NULL,
  `contorno_pierna` VARCHAR(45) NULL,
  `largo_de_pierna` VARCHAR(45) NULL,
  `id_usuario` INT NOT NULL,
  PRIMARY KEY (`id_medida_corporal_personal`, `id_usuario`),
  INDEX `fk_Medida_corporal_personal_Usuario1_idx` (`id_usuario` ASC) VISIBLE,
  CONSTRAINT `fk_Medida_corporal_personal_Usuario1`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `VirtualTrends`.`Usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `VirtualTrends`.`Medida_estandar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `VirtualTrends`.`Medida_estandar` (
  `id_medida_estandar` INT NOT NULL,
  `nombre_medida` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id_medida_estandar`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `VirtualTrends`.`Forma_pago`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `VirtualTrends`.`Forma_pago` (
  `id_forma_pago` INT NOT NULL,
  `nombre` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`id_forma_pago`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `VirtualTrends`.`Forma_envio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `VirtualTrends`.`Forma_envio` (
  `id_forma_envio` INT NOT NULL,
  `nombre` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`id_forma_envio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `VirtualTrends`.`Carrito_compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `VirtualTrends`.`Carrito_compra` (
  `id_Carrito_compra` INT NOT NULL,
  `id_forma_pago` INT NOT NULL,
  `id_forma_envio` INT NOT NULL,
  `id_usuario` INT NOT NULL,
  PRIMARY KEY (`id_Carrito_compra`, `id_forma_pago`, `id_forma_envio`, `id_usuario`),
  INDEX `fk_Carrito_compra_Forma_pago1_idx` (`id_forma_pago` ASC) VISIBLE,
  INDEX `fk_Carrito_compra_Forma_envio1_idx` (`id_forma_envio` ASC) VISIBLE,
  INDEX `fk_Carrito_compra_Usuario1_idx` (`id_usuario` ASC) VISIBLE,
  CONSTRAINT `fk_Carrito_compra_Forma_pago1`
    FOREIGN KEY (`id_forma_pago`)
    REFERENCES `VirtualTrends`.`Forma_pago` (`id_forma_pago`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Carrito_compra_Forma_envio1`
    FOREIGN KEY (`id_forma_envio`)
    REFERENCES `VirtualTrends`.`Forma_envio` (`id_forma_envio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Carrito_compra_Usuario1`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `VirtualTrends`.`Usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `VirtualTrends`.`Medidas_producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `VirtualTrends`.`Medidas_producto` (
  `id_producto` INT NOT NULL,
  `id_medida_estandar` INT NOT NULL,
  PRIMARY KEY (`id_producto`, `id_medida_estandar`),
  INDEX `fk_Producto_has_Medida_estandar_Medida_estandar1_idx` (`id_medida_estandar` ASC) VISIBLE,
  INDEX `fk_Producto_has_Medida_estandar_Producto1_idx` (`id_producto` ASC) VISIBLE,
  CONSTRAINT `fk_Producto_has_Medida_estandar_Producto1`
    FOREIGN KEY (`id_producto`)
    REFERENCES `VirtualTrends`.`Producto` (`id_producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Producto_has_Medida_estandar_Medida_estandar1`
    FOREIGN KEY (`id_medida_estandar`)
    REFERENCES `VirtualTrends`.`Medida_estandar` (`id_medida_estandar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `VirtualTrends`.`Carrito_compra_producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `VirtualTrends`.`Carrito_compra_producto` (
  `id_Carrito_compra` INT NOT NULL,
  `id_producto` INT NOT NULL,
  `cantidad_producto` INT NOT NULL,
  `subtotal_por_producto` INT NOT NULL,
  `medida` INT NOT NULL,
  `id_medida_estandar` INT NOT NULL,
  PRIMARY KEY (`id_Carrito_compra`, `id_producto`, `id_medida_estandar`),
  INDEX `fk_Carrito_compra_has_Producto_Producto1_idx` (`id_producto` ASC) VISIBLE,
  INDEX `fk_Carrito_compra_has_Producto_Carrito_compra1_idx` (`id_Carrito_compra` ASC) VISIBLE,
  INDEX `fk_Carrito_compra_producto_Medidas_producto1_idx` (`id_medida_estandar` ASC) VISIBLE,
  CONSTRAINT `fk_Carrito_compra_has_Producto_Carrito_compra1`
    FOREIGN KEY (`id_Carrito_compra`)
    REFERENCES `VirtualTrends`.`Carrito_compra` (`id_Carrito_compra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Carrito_compra_has_Producto_Producto1`
    FOREIGN KEY (`id_producto`)
    REFERENCES `VirtualTrends`.`Producto` (`id_producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Carrito_compra_producto_Medidas_producto1`
    FOREIGN KEY (`id_medida_estandar`)
    REFERENCES `VirtualTrends`.`Medidas_producto` (`id_medida_estandar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
