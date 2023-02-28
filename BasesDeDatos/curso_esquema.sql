CREATE TABLE cargo (
  idCargo numeric(2,0) NOT NULL,
  nombre varchar(255) NOT NULL,
  CONSTRAINT pkCargo PRIMARY KEY (idCargo)
);

CREATE TABLE departamento (
  idDepartamento numeric(2,0) NOT NULL,
  nombre varchar(100) NOT NULL,
  CONSTRAINT pkDepartamento PRIMARY KEY  (idDepartamento)
);

CREATE TABLE empleado (
  idEmpleado numeric(4,0) NOT NULL,
  nombre varchar(50) NOT NULL,
  paterno varchar(50) NOT NULL,
  materno varchar(50) NOT NULL,
  edad numeric(2,0) NOT NULL,
  sexo char(1) NOT NULL,
  sueldo numeric(8,2) NOT NULL,
  porcentaje_comision numeric(2,0),
  contratacion date,
  idDepartamento numeric(2,0),
  idCargo numeric(2,0) NOT NULL,
  CONSTRAINT pkEmpleado PRIMARY KEY  (idEmpleado)
  --CONSTRAINT pk<tablaDestino> PRIMARY KEY (<idDestino>)
  --CONSTRAINT fk<tablaDestino><tablaOrigen> FOREIGN KEY (<idOrigen>)
);
