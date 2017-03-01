create database gestionproblemas;


create table problema(
idproblema varchar(50) NOT NULL,
idgrupo int(50) NOT NULL,
idusuario int(11) NOT NULL,
resumen varchar(2000) NOT NULL,
fechainicio varchar(50) NOT NULL,
fechaupdate varchar(50) NOT NULL,
idestado int(11) NOT NULL,
idprioridad int(11) NOT NULL,
idimpacto int(11) NOT NULL,
primary key(idproblema),
FOREIGN KEY (idgrupo) REFERENCES grupo(idgrupo),
FOREIGN KEY (idusuario) REFERENCES usuario(idusuario),
FOREIGN KEY (idprioridad) REFERENCES prioridad(idprioridad),
FOREIGN KEY (idestado) REFERENCES estado(idestado),
FOREIGN KEY (idimpacto) REFERENCES impacto(idimpacto)
);

ALTER TABLE problema
ADD CONSTRAINT problema_grupo_FK FOREIGN KEY (idgrupo) REFERENCES grupo(idgrupo);
ALTER TABLE problema
ADD CONSTRAINT problema_usuario_FK FOREIGN KEY (idusuario) REFERENCES usuario(idusuario);
ALTER TABLE problema
ADD CONSTRAINT problema_prioridad_FK FOREIGN KEY (idprioridad) REFERENCES prioridad(idprioridad);
ALTER TABLE problema
ADD CONSTRAINT problema_estado_FK FOREIGN KEY (idestado) REFERENCES estado(idestado);
ALTER TABLE problema
ADD CONSTRAINT problema_impacto FOREIGN KEY (idimpacto) REFERENCES impacto(idimpacto);

INSERT INTO problema VALUES('PBI000000029961', 4, 1,'Inposibilidad de Acceder a AUTENTICA - INC000000784684
',3, '15/02/2017 18:32:30', '28/02/2017 15:32:41', 2);

create table comentarioproblema(
idcomentarioproblema int(11) NOT NULL,
idproblema varchar(50) NOT NULL,
comentario varchar(2000) NOT NULL,
PRIMARY KEY (idcomentarioproblema),
FOREIGN KEY (idproblema) REFERENCES problema(idproblema)
);

ALTER TABLE comentarioproblema
ADD CONSTRAINT comentarioproblema_problema_FK FOREIGN KEY (idproblema) REFERENCES problema(idproblema);

create table comentariotarea(
idcomentariotarea int(11) NOT NULL,
idtarea int(11) NOT NULL,
comentario varchar(2000) NOT NULL,
PRIMARY KEY (idcomentariotarea),
FOREIGN KEY (idtarea) REFERENCES tarea(idtarea)
);

ALTER TABLE comentariotarea
ADD CONSTRAINT comentariotarea_tarea_FK FOREIGN KEY (idtarea) REFERENCES tarea(idtarea);

create table impacto(
idimpacto int(11) NOT NULL,
nombre varchar(50) NOT NULL,
PRIMARY KEY (idimpacto)
);

INSERT INTO impacto VALUES(1,'Extenso/Generalizado');
INSERT INTO impacto VALUES(2,'Significativo/Amplio');
INSERT INTO impacto VALUES(3,'Moderado/Limitado');
INSERT INTO impacto VALUES(4,'Menor/Localizado');

create table estado(
idestado int(11) NOT NULL AUTO_INCREMENT,
nombre varchar(40) NOT NULL,
primary key (idestado)
);

INSERT INTO estado VALUES(null, 'Borrador');
INSERT INTO estado VALUES(null, 'En revision');
INSERT INTO estado VALUES(null, 'Peticion de autorizacion');
INSERT INTO estado VALUES(null, 'Asignado');
INSERT INTO estado VALUES(null, 'Bajo investigacion')
INSERT INTO estado VALUES(null, 'Pendiente');
INSERT INTO estado VALUES(null, 'Terminado');
INSERT INTO estado VALUES(null, 'Rechazado');
INSERT INTO estado VALUES(null, 'Cerrado');
INSERT INTO estado VALUES(null, 'Cancelado');

create table grupo(
idgrupo int(11) not null AUTO_INCREMENT,
idorganizacion int(11) NOT NULL,
nombregrupo varchar(50) NOT NULL,
primary key(idgrupo),
FOREIGN KEY (idorganizacion) REFERENCES organizacion(idorganizacion)
);

ALTER TABLE grupo
ADD CONSTRAINT grupo_organizacion_FK FOREIGN KEY(idorganizacion) REFERENCES organizacion(idorganizacion);

INSERT INTO grupo VALUES(null,'Believe');
INSERT INTO grupo VALUES(null,'FullStack');
INSERT INTO grupo VALUES(null,'Midrange');
INSERT INTO grupo VALUES(null,'Infraestructura');

create table empresa(
idempresa int(11) NOT NULL AUTO_INCREMENT,
nombre varchar(50) NOT NULL,
primary KEY (idempresa)
);

INSERT INTO empresa VALUES(null,'ACCENTURE CHILE. ASESORIAS & SERVICIOS LDTA.');
INSERT INTO empresa VALUES(null,'ACEPTA COM S.A.');
INSERT INTO empresa VALUES(null,'AMDOCS CHILE SPA');
INSERT INTO empresa VALUES(null,'ATENTO');
INSERT INTO empresa VALUES(null,'CARRIERS CHILE');
INSERT INTO empresa VALUES(null,'CMETRIX BUSINESS SOLUTIONS S.A.');
INSERT INTO empresa VALUES(null,'COLABRA');
INSERT INTO empresa VALUES(null,'CPqD-Cynersis');
INSERT INTO empresa VALUES(null,'CSGI');
INSERT INTO empresa VALUES(null,'DEVETEL SERVICIOS E INGENIERÍA S.A');
INSERT INTO empresa VALUES(null,'ELITSOFT');
INSERT INTO empresa VALUES(null,'EMC CHILE');
INSERT INTO empresa VALUES(null,'EVERIS CHILE SA');
INSERT INTO empresa VALUES(null,'Extension SA C');
INSERT INTO empresa VALUES(null,'FUSIONA S.A.');
INSERT INTO empresa VALUES(null,'HEWLETT PACKARD CHILE COMERCIAL LIMITADA');
INSERT INTO empresa VALUES(null,'IBM CHILE S.A.');
INSERT INTO empresa VALUES(null,'IN MOTION SERVICIOS S.A');
INSERT INTO empresa VALUES(null,'INDRA SISTEMAS CHILE S.A');
INSERT INTO empresa VALUES(null,'INTELIDATA CHILE');
INSERT INTO empresa VALUES(null,'INTRALINKS');
INSERT INTO empresa VALUES(null,'LEXMARK IMPRESION');
INSERT INTO empresa VALUES(null,'MAINSOFT S.A.');
INSERT INTO empresa VALUES(null,'MICROSOFT');
INSERT INTO empresa VALUES(null,'NEC CHILE S.A.');
INSERT INTO empresa VALUES(null,'ORACLE CHILE');
INSERT INTO empresa VALUES(null,'REDHAT CHILE');
INSERT INTO empresa VALUES(null,'SOLEM');
INSERT INTO empresa VALUES(null,'ST COMPUTACION');
INSERT INTO empresa VALUES(null,'TELEFONICA CHILE');
INSERT INTO empresa VALUES(null,'TGESTIONA');
INSERT INTO empresa VALUES(null,'TIS CHILE');
INSERT INTO empresa VALUES(null,'TOTAL PACK');
INSERT INTO empresa VALUES(null,'VASS CONSULTORIA DE SISTEMAS CHILE LTDA');
INSERT INTO empresa VALUES(null,'VIGATEC');
INSERT INTO empresa VALUES(null,'VPT S.A.');

create table organizacion(
idorganizacion int(11) NOT NULL,
idempresa int(11) NOT NULL,
nombre varchar(55) NOT NULL,
PRIMARY KEY(idorganizacion),
FOREIGN KEY (idempresa) REFERENCES empresa(idempresa)
);

ALTER TABLE organizacion
ADD CONSTRAINT organizacion_empresa_FK FOREIGN KEY(idempresa) REFERENCES empresa(idempresa);

INSERT INTO organizacion VALUES(1, 1, 'SOPORTE DE SERVICIOS TI');
INSERT INTO organizacion VALUES(2, 1, 'TELEFONICA CHILE');
INSERT INTO organizacion VALUES(3, 2, 'ACEPTA');
INSERT INTO organizacion VALUES(4, 3, 'FULLSTACK');
INSERT INTO organizacion VALUES(5, 3, 'GESTION DE ENTORNOS NO PRODUCTIVOS');
INSERT INTO organizacion VALUES(6, 3, 'SOPORTE DE SERVICIOS TI');
INSERT INTO organizacion VALUES(7, 4, 'BOT');
INSERT INTO organizacion VALUES(8, 5, 'FABRICA DE SW');
INSERT INTO organizacion VALUES(9, 6, 'SWF');
INSERT INTO organizacion VALUES(10, 7, 'COLABRA');
INSERT INTO organizacion VALUES(11, 8, 'FABRICA DE SW');
INSERT INTO organizacion VALUES(12, 9, 'TELEFONICA CHILE');
INSERT INTO organizacion VALUES(13, 10, 'DEVETEL');
INSERT INTO organizacion VALUES(14, 11, 'TI');
INSERT INTO organizacion VALUES(15, 12, 'PROYECTOS');
INSERT INTO organizacion VALUES(16, 13, 'PROYECTOS');
INSERT INTO organizacion VALUES(17, 13, 'SOPORTE DE SERVICIOS TI');
INSERT INTO organizacion VALUES(18, 13, 'SWF');
INSERT INTO organizacion VALUES(19, 14, 'Soporte TI');
INSERT INTO organizacion VALUES(20, 15, 'MANTENCION');
INSERT INTO organizacion VALUES(21, 16, 'INFRAESTRUCTURA');
INSERT INTO organizacion VALUES(22, 16, 'PUESTO DE TRABAJO');
INSERT INTO organizacion VALUES(23, 16, 'SERVICIO MESA DE AYUDA');
INSERT INTO organizacion VALUES(24, 16, 'SERVICIOS E INFRAESTRUCTURA TI');
INSERT INTO organizacion VALUES(25, 16, 'WORKPLACE');
INSERT INTO organizacion VALUES(26, 17, 'ASSET');
INSERT INTO organizacion VALUES(27, 17, 'Control Producción');
INSERT INTO organizacion VALUES(28, 17, 'DPE');
INSERT INTO organizacion VALUES(29, 17, 'EUS');
INSERT INTO organizacion VALUES(30, 17, 'EXPLOTACION');
INSERT INTO organizacion VALUES(31, 17, 'GESTION');
INSERT INTO organizacion VALUES(32, 17, 'IAS');
INSERT INTO organizacion VALUES(34, 17, 'INFRAESTRUCTURA');
INSERT INTO organizacion VALUES(35, 17, 'ITS');
INSERT INTO organizacion VALUES(36, 17, 'ITSM');
INSERT INTO organizacion VALUES(37, 17, 'Infraestructura de Almacenamiento');
INSERT INTO organizacion VALUES(38, 17, 'MAINFRAME');
INSERT INTO organizacion VALUES(39, 17, 'MIDRANGE');
INSERT INTO organizacion VALUES(40, 17, 'NETWORKING');
INSERT INTO organizacion VALUES(41, 17, 'OPERACIONES');
INSERT INTO organizacion VALUES(42, 17, 'PMO TECNICA');
INSERT INTO organizacion VALUES(43, 17, 'PROYECTO');
INSERT INTO organizacion VALUES(44, 17, 'PSM');
INSERT INTO organizacion VALUES(45, 17, 'QA');
INSERT INTO organizacion VALUES(46, 17, 'SLA');
INSERT INTO organizacion VALUES(47, 17, 'SOPORTE CAMBIOS');
INSERT INTO organizacion VALUES(48, 17, 'SSM');
INSERT INTO organizacion VALUES(49, 17, 'Servicios Microsoft');
INSERT INTO organizacion VALUES(50, 18, 'SOPORTE DE SERVICIOS TI');
INSERT INTO organizacion VALUES(51, 19, 'FABRICA DE SW');
INSERT INTO organizacion VALUES(52, 19, 'SOPORTE DE SERVICIOS TI');
INSERT INTO organizacion VALUES(53, 17, 'SOPORTE CAMBIOS');
INSERT INTO organizacion VALUES(54, 17, 'SOPORTE CAMBIOS');
INSERT INTO organizacion VALUES(55, 17, 'SOPORTE CAMBIOS');
INSERT INTO organizacion VALUES(56, 17, 'SOPORTE CAMBIOS');
INSERT INTO organizacion VALUES(57, 17, 'SOPORTE CAMBIOS');
INSERT INTO organizacion VALUES(58, 17, 'SOPORTE CAMBIOS');
INSERT INTO organizacion VALUES(59, 17, 'SOPORTE CAMBIOS');
v
INSERT INTO organizacion VALUES(47, 17, 'SOPORTE CAMBIOS');
INSERT INTO organizacion VALUES(47, 17, 'SOPORTE CAMBIOS');
INSERT INTO organizacion VALUES(47, 17, 'SOPORTE CAMBIOS');
INSERT INTO organizacion VALUES(47, 17, 'SOPORTE CAMBIOS');
INSERT INTO organizacion VALUES(47, 17, 'SOPORTE CAMBIOS');
INSERT INTO organizacion VALUES(47, 17, 'SOPORTE CAMBIOS');
INSERT INTO organizacion VALUES(47, 17, 'SOPORTE CAMBIOS');
INSERT INTO organizacion VALUES(47, 17, 'SOPORTE CAMBIOS');
v
INSERT INTO organizacion VALUES(47, 17, 'SOPORTE CAMBIOS');
INSERT INTO organizacion VALUES(47, 17, 'SOPORTE CAMBIOS');
INSERT INTO organizacion VALUES(47, 17, 'SOPORTE CAMBIOS');
INSERT INTO organizacion VALUES(47, 17, 'SOPORTE CAMBIOS');
INSERT INTO organizacion VALUES(47, 17, 'SOPORTE CAMBIOS');
INSERT INTO organizacion VALUES(47, 17, 'SOPORTE CAMBIOS');



create table usuario(
idusuario int(11) NOT NULL AUTO_INCREMENT,
idgrupo int(11) NOT NULL,
nombre varchar(50) NOT NULL,
apellidopaterno varchar(50) NOT Null,
apellidomaterno varchar(50) NOT NULL,
primary key(idusuario),
FOREIGN KEY (idgrupo) REFERENCES grupo(idgrupo)
);

ALTER TABLE usuario
ADD CONSTRAINT usuario_grupo_FK FOREIGN KEY(idgrupo) REFERENCES grupo(idgrupo);

INSERT INTO usuario VALUES(null, 4, 'Hugo C', 'Calderon', 'Galaz');

create table tarea(
idtarea int(100) NOT NULL AUTO_INCREMENT,
idproblema varchar(50) NOT NULL,
idempresa int(11) NOT NULL,
idorganizacion int(11) NOT NULL,
idgrupo int(11) NOT NULL,
idusuario int(11) NOT NULL,
resumen varchar(2000) NOT NULL,
fechacreacion varchar(50) not null,
fechainicio varchar(50) NOT NULL,
fechatermino varchar(50) NOT NULL,
fechaterminoreal varchar(50) NOT NULL,
primary key(idtarea),
FOREIGN KEY (idproblema) REFERENCES problema(idproblema),
FOREIGN KEY (idempresa) REFERENCES empresa(idempresa),
FOREIGN KEY (idorganizacion) REFERENCES organizacion(idorganizacion),
FOREIGN KEY (idgrupo) REFERENCES grupo(idgrupo),
FOREIGN KEY (idusuario) REFERENCES usuario(idusuario)
);

ALTER TABLE tarea
ADD CONSTRAINT tarea_problema_FK FOREIGN KEY (idproblema) REFERENCES problema(idproblema);
ALTER TABLE tarea
ADD CONSTRAINT tarea_empresa_FK FOREIGN KEY (idempresa) REFERENCES empresa(idempresa);
ALTER TABLE tarea
ADD CONSTRAINT tarea_organizacion_FK FOREIGN KEY (idorganizacion) REFERENCES organizacion(idorganizacion);
ALTER TABLE tarea
ADD CONSTRAINT tarea_grupo_FK FOREIGN KEY (idgrupo) REFERENCES grupo(idgrupo);
ALTER TABLE tarea
ADD CONSTRAINT tarea_usuario_FK FOREIGN KEY (idusuario) REFERENCES usuario(idusuario);

create table prioridad(
idprioridad int(11) NOT NULL ,
nombre varchar(20) NOT NULL,
primary key(idprioridad)
);

INSERT INTO prioridad VALUES(1, 'Baja');
INSERT INTO prioridad VALUES(2, 'Media');
INSERT INTO prioridad VALUES(3, 'Alta');
INSERT INTO prioridad VALUES(4, 'Critica');

