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

INSERT INTO grupo VALUES(null, 1,'ACCENTURE N2');
INSERT INTO grupo VALUES(null, 2,'CONTROL DE VERSIONES');
INSERT INTO grupo VALUES(null, 2,'DEVOPS');
INSERT INTO grupo VALUES(null, 2,'INCIDENCIAS_MOVIL');
INSERT INTO grupo VALUES(null, 2,'MESA DE AYUDA');
INSERT INTO grupo VALUES(null, 2,'MESA DE CONSUMOS');
INSERT INTO grupo VALUES(null, 2,'PROYECTOS');
INSERT INTO grupo VALUES(null, 3,'ACEPTA');
INSERT INTO grupo VALUES(null, 4,'AMDOCS CHANGE COORDINATOR');
INSERT INTO grupo VALUES(null, 4,'FULLSTACK _L2.5_FE');
INSERT INTO grupo VALUES(null, 4,'FULLSTACK_ESB');
INSERT INTO grupo VALUES(null, 4,'FULLSTACK_INFRA');
INSERT INTO grupo VALUES(null, 4,'FULLSTACK_L2.5_BE');
INSERT INTO grupo VALUES(null, 4,'FULLSTACK_L3_BE');
INSERT INTO grupo VALUES(null, 4,'FULLSTACK_L3_FE');
INSERT INTO grupo VALUES(null, 4,'FULLSTACK_NON_PROD');
INSERT INTO grupo VALUES(null, 4,'FULLSTACK_ODS');
INSERT INTO grupo VALUES(null, 4,'FULLSTACK_TRIAGE');
INSERT INTO grupo VALUES(null, 5,'GESTION DE DESPLIEGUES');
INSERT INTO grupo VALUES(null, 5,'GESTION DE INCIDENCIAS');
INSERT INTO grupo VALUES(null, 6,'AMDOCS N2');
INSERT INTO grupo VALUES(null, 6,'AMDOCS N3');
INSERT INTO grupo VALUES(null, 7,'BACKOFFICE_BOT');
INSERT INTO grupo VALUES(null, 8,'SWF_Grupo_08');
INSERT INTO grupo VALUES(null, 9,'CMETRIX');
INSERT INTO grupo VALUES(null, 10,'COLABRA');
INSERT INTO grupo VALUES(null, 11,'CPqD');
INSERT INTO grupo VALUES(null, 12,'CSGI_CHG');
INSERT INTO grupo VALUES(null, 12,'CSGI_INC');
INSERT INTO grupo VALUES(null, 12,'CSGI_WO');
INSERT INTO grupo VALUES(null, 13,'DESARROLLO DEVETEL');
INSERT INTO grupo VALUES(null, 14,'ELITSOFT');
INSERT INTO grupo VALUES(null, 14,'ELITSOFT_TECNICOS');
INSERT INTO grupo VALUES(null, 15,'PMO TECNICA');
INSERT INTO grupo VALUES(null, 16,'SWF_Grupo_Business');
INSERT INTO grupo VALUES(null, 16,'SWF_Grupo_Desarrollo');
INSERT INTO grupo VALUES(null, 17,'EVERIS N2');
INSERT INTO grupo VALUES(null, 18,'SWF_Grupo_10');
INSERT INTO grupo VALUES(null, 18,'SWF_Grupo_11');
INSERT INTO grupo VALUES(null, 18,'SWF_Grupo_2');
INSERT INTO grupo VALUES(null, 19,'Coordinacion Soporte');
INSERT INTO grupo VALUES(null, 19,'Soporte NI');
INSERT INTO grupo VALUES(null, 19,'Soporte cambios');
INSERT INTO grupo VALUES(null, 19,'Soporte incidencias');
INSERT INTO grupo VALUES(null, 19,'soporte esp');
INSERT INTO grupo VALUES(null, 20,'MANTENCIÓN FUSIONA');
INSERT INTO grupo VALUES(null, 21,'SDM_HPE');
INSERT INTO grupo VALUES(null, 22,'GARANTIA LENOVO');
INSERT INTO grupo VALUES(null, 22,'HARDWARE');
INSERT INTO grupo VALUES(null, 22,'HP_ALL_SERVICES');
INSERT INTO grupo VALUES(null, 22,'HP_ANTIVIRUS');
INSERT INTO grupo VALUES(null, 22,'HP_METROPOLITANA');
INSERT INTO grupo VALUES(null, 22,'HP_NETWORKING');
INSERT INTO grupo VALUES(null, 22,'HP_PLATAFORMA CAJA');
INSERT INTO grupo VALUES(null, 22,'HP_REFRESH');
INSERT INTO grupo VALUES(null, 22,'HP_REGIONES');
INSERT INTO grupo VALUES(null, 22,'HP_RESIDENCIA');
INSERT INTO grupo VALUES(null, 22,'HP_SOPORTE REMOTO');
INSERT INTO grupo VALUES(null, 22,'HP_SOPORTEMOBILE');
INSERT INTO grupo VALUES(null, 22,'SOPORTE MICROINFORMATICO');
INSERT INTO grupo VALUES(null, 22,'SOPORTE TELECOMUNICACIONES');
INSERT INTO grupo VALUES(null, 23,'HP MESA DE AYUDA');
INSERT INTO grupo VALUES(null, 23,'HP-DSP');
INSERT INTO grupo VALUES(null, 23,'HP-SPN');
INSERT INTO grupo VALUES(null, 23,'HP-VIRTUAL AGENT');
INSERT INTO grupo VALUES(null, 23,'HP_COMERCIAL');
INSERT INTO grupo VALUES(null, 23,'HP_GESTION');
INSERT INTO grupo VALUES(null, 24,'PUESTO DE TRABAJO');
INSERT INTO grupo VALUES(null, 25,'HP IMAC');
INSERT INTO grupo VALUES(null, 25,'HP IMAC REGIONES');
INSERT INTO grupo VALUES(null, 25,'HP IMAC REMOTO');
INSERT INTO grupo VALUES(null, 25,'Migración Dominio HP');
INSERT INTO grupo VALUES(null, 25,'Soporte HP_ BlackBerry');
INSERT INTO grupo VALUES(null, 26,'ASSETS');
INSERT INTO grupo VALUES(null, 27,'Control Producción');
INSERT INTO grupo VALUES(null, 28,'IBM_DPE');
INSERT INTO grupo VALUES(null, 29,'GESTION DE USUARIOS');
INSERT INTO grupo VALUES(null, 20,'EXPLOTACION MAINFRAME');
INSERT INTO grupo VALUES(null, 30,'EXPLOTACION MIDRANGE');
INSERT INTO grupo VALUES(null, 30,'IBM_EXPLOTACION');
INSERT INTO grupo VALUES(null, 31,'ADMINISTRACION ENTORNOS');
INSERT INTO grupo VALUES(null, 31,'AUTOMATIZACION');
INSERT INTO grupo VALUES(null, 31,'AUTOMATIZAC_MR');
INSERT INTO grupo VALUES(null, 31,'IBM_GESTION');
INSERT INTO grupo VALUES(null, 31,'PASAJE_PROD_MF');
INSERT INTO grupo VALUES(null, 31,'PASAJE_PROD_MR');
INSERT INTO grupo VALUES(null, 31,'PASAJE_TEST_MF');
INSERT INTO grupo VALUES(null, 31,'PASAJE_TEST_MR');
INSERT INTO grupo VALUES(null, 31,'PRUEBAS_QA');
INSERT INTO grupo VALUES(null, 31,'RENDIMIENTO Y DISPONIBILIDAD');
INSERT INTO grupo VALUES(null, 32,'ADMIN NORMAS DE SEG');
INSERT INTO grupo VALUES(null, 32,'ADM_USUARIOS');
INSERT INTO grupo VALUES(null, 34,'IBM CC');
INSERT INTO grupo VALUES(null, 35,'HARDWARE_ITS');
INSERT INTO grupo VALUES(null, 36,'ANALISTA DE PRODUCCION');
INSERT INTO grupo VALUES(null, 36,'CHANGE COORDINATOR');
INSERT INTO grupo VALUES(null, 36,'IBM PROBLEMAS');
INSERT INTO grupo VALUES(null, 36,'SA&D');
INSERT INTO grupo VALUES(null, 37,'Infraestructura de Almacenamiento');
INSERT INTO grupo VALUES(null, 38,'ADMINISTRACION STORAGE');
INSERT INTO grupo VALUES(null, 38,'ADMIN_TIVOLI_MF');
INSERT INTO grupo VALUES(null, 38,'CICS');
INSERT INTO grupo VALUES(null, 38,'DATABASE MAINFRAME');
INSERT INTO grupo VALUES(null, 38,'IBM_MAINFRAME');
INSERT INTO grupo VALUES(null, 38,'OS/390');
INSERT INTO grupo VALUES(null, 39,'ADMINISTRACION BD');
INSERT INTO grupo VALUES(null, 39,'ADMINISTRACION UNIX');
INSERT INTO grupo VALUES(null, 39,'APROB_MID_BD');
INSERT INTO grupo VALUES(null, 39,'APROB_MID_NT');
INSERT INTO grupo VALUES(null, 39,'APROB_MID_UNIX');
INSERT INTO grupo VALUES(null, 39,'APROB_MID_WAS');
INSERT INTO grupo VALUES(null, 39,'DISPATCHER MIDRANGE');
INSERT INTO grupo VALUES(null, 39,'DISPONIBILIDAD NIVEL 1');
INSERT INTO grupo VALUES(null, 39,'GSB IBM');
INSERT INTO grupo VALUES(null, 39,'IBM Compliance SSO-SMD');
INSERT INTO grupo VALUES(null, 39,'OPERACIONES MIDRANGE');
INSERT INTO grupo VALUES(null, 39,'PRUEBAS_QA');
INSERT INTO grupo VALUES(null, 39,'SMI-CL');
INSERT INTO grupo VALUES(null, 39,'SOPORTE APLICACIONES WEBSPHERE');
INSERT INTO grupo VALUES(null, 39,'STORAGE & TSM');
INSERT INTO grupo VALUES(null, 39,'WIN NT, WEB SRV, INTRANET');
INSERT INTO grupo VALUES(null, 40,'IBM_NETWORKING');
INSERT INTO grupo VALUES(null, 40,'NETWORKING');
INSERT INTO grupo VALUES(null, 41,'COMMAND CENTER');
INSERT INTO grupo VALUES(null, 41,'IBM_OPERACIONES');
INSERT INTO grupo VALUES(null, 41,'OPERACIONES MAINFRAME');
INSERT INTO grupo VALUES(null, 41,'OPERACIONES MIDRANGE');
INSERT INTO grupo VALUES(null, 42,'PMO TECNICA');
INSERT INTO grupo VALUES(null, 43,'ADMINISTRACION-DB2');
INSERT INTO grupo VALUES(null, 43,'ADMINISTRACION-ORACLE');
INSERT INTO grupo VALUES(null, 43,'ADMINISTRACION-SOPORTE APLICACIONES WEBSPHERE');
INSERT INTO grupo VALUES(null, 43,'ADMINISTRACION-STORAGE');
INSERT INTO grupo VALUES(null, 43,'ADMINISTRACION-UNIX');
INSERT INTO grupo VALUES(null, 43,'ADMINISTRACION-WINTEL');
INSERT INTO grupo VALUES(null, 43,'ARQUITECTURA');
INSERT INTO grupo VALUES(null, 43,'IBM_PROYECTOS');
INSERT INTO grupo VALUES(null, 43,'TECNICOS DE PROYECTOS');
INSERT INTO grupo VALUES(null, 44,'IBM_CINTOTECA');
INSERT INTO grupo VALUES(null, 44,'IBM_PSM');
INSERT INTO grupo VALUES(null, 45,'APROB_MID_WAS');
INSERT INTO grupo VALUES(null, 45,'PRUEBAS_QA');
INSERT INTO grupo VALUES(null, 45,'SMI-CL');
INSERT INTO grupo VALUES(null, 46,'IBM_RCA');
INSERT INTO grupo VALUES(null, 47,'SOPORTE CAMBIOS');
INSERT INTO grupo VALUES(null, 48,'SSM');
INSERT INTO grupo VALUES(null, 49,'Servicios Microsoft');
INSERT INTO grupo VALUES(null, 50,'INCIDENCIAS N3');
INSERT INTO grupo VALUES(null, 51,'INDRA_BBDD');
INSERT INTO grupo VALUES(null, 51,'INDRA_PRODUCTO');
INSERT INTO grupo VALUES(null, 51,'INDRA_SEGURIDAD');
INSERT INTO grupo VALUES(null, 51,'INDRA_UNIX');
INSERT INTO grupo VALUES(null, 51,'INDRA_WINTEL');
INSERT INTO grupo VALUES(null, 51,'PROYECTOS');
INSERT INTO grupo VALUES(null, 51,'SFW_SIGRES');
INSERT INTO grupo VALUES(null, 51,'SOPORTE DWH MOVIL');
INSERT INTO grupo VALUES(null, 51,'SWF_INDRA_G1');
INSERT INTO grupo VALUES(null, 51,'SWF_INDRA_G11');
INSERT INTO grupo VALUES(null, 51,'SWF_INDRA_G3');
INSERT INTO grupo VALUES(null, 51,'SWF_INDRA_G5');
INSERT INTO grupo VALUES(null, 51,'SWF_INDRA_IC');
INSERT INTO grupo VALUES(null, 52,'INDRA N2');
INSERT INTO grupo VALUES(null, 52,'INDRA OTROS PROVEEDORES');
INSERT INTO grupo VALUES(null, 52,'PETICION ERROR');
INSERT INTO grupo VALUES(null, 52,'QUIEBRES PORTABILIDAD');
INSERT INTO grupo VALUES(null, 52,'REQUERIMIENTOS SOPORTE');
INSERT INTO grupo VALUES(null, 52,'SOPORTE CUENTAS_FIJA');
INSERT INTO grupo VALUES(null, 52,'SOPORTE CUENTAS_MOVIL');
INSERT INTO grupo VALUES(null, 52,'SUPERVISION Y MONITOREO');
INSERT INTO grupo VALUES(null, 52,'Soporte Neixar');
INSERT INTO grupo VALUES(null, 52,'TESTING Y QA');
INSERT INTO grupo VALUES(null, 53,'INTELIDATA N3');
INSERT INTO grupo VALUES(null, 54,'Intelidata Aprobador Cambios');
INSERT INTO grupo VALUES(null, 54,'Intelidata Cambios');
INSERT INTO grupo VALUES(null, 54,'Intelidata Incidencia');
INSERT INTO grupo VALUES(null, 54,'Intelidata N3');
INSERT INTO grupo VALUES(null, 54,'Intelidata Problemas');
INSERT INTO grupo VALUES(null, 55,'INTRALINKS');
INSERT INTO grupo VALUES(null, 56,'SOPORTE LEXMARK CORPORATIVO');
INSERT INTO grupo VALUES(null, 56,'SOPORTE LEXMARK METROPOLITANO');
INSERT INTO grupo VALUES(null, 56,'SOPORTE LEXMARK REGIONES');
INSERT INTO grupo VALUES(null, 57,'Soporte INCBI MainSoft');
INSERT INTO grupo VALUES(null, 58,'MICROSOFT');
INSERT INTO grupo VALUES(null, 59,'SDM_NEC');
INSERT INTO grupo VALUES(null, 60,'FS-INFRA-ORACLE');
INSERT INTO grupo VALUES(null, 61,'FS-INFRA-REDHAT');
INSERT INTO grupo VALUES(null, 62,'SOLEM GIT');
INSERT INTO grupo VALUES(null, 62,'SOLEM SISON');
INSERT INTO grupo VALUES(null, 63,'ST Citrix');
INSERT INTO grupo VALUES(null, 63,'ST Gestion de Problemas');
INSERT INTO grupo VALUES(null, 64,'APROB DGO - Cuentas BBDD');
INSERT INTO grupo VALUES(null, 64,'DBA - Cuentas BBDD');
INSERT INTO grupo VALUES(null, 64,'TCH BIG DATA');
INSERT INTO grupo VALUES(null, 65,'CONFIGURACIÓN BELIEVE');
INSERT INTO grupo VALUES(null, 66,'IMPRESIÓN Y DESPACHO');
INSERT INTO grupo VALUES(null, 66,'PORTADORES Y EMPRESAS');
INSERT INTO grupo VALUES(null, 66,'TCH_EXPLOT_AAF');
INSERT INTO grupo VALUES(null, 66,'TCH_EXPLOT_AGF');
INSERT INTO grupo VALUES(null, 66,'TCH_EXPLOT_AMT');
INSERT INTO grupo VALUES(null, 67,'TCH ARQUITECTURA DE SISTEMAS');
INSERT INTO grupo VALUES(null, 68,'ADM CUENTAS');
INSERT INTO grupo VALUES(null, 68,'ADM_CUENTAS_HOGAR');
INSERT INTO grupo VALUES(null, 68,'ADM_CUENTAS_MOVIL');
INSERT INTO grupo VALUES(null, 68,'ADM_CUENTAS_RSA');
INSERT INTO grupo VALUES(null, 68,'APROB GESTION DE CAMBIOS');
INSERT INTO grupo VALUES(null, 68,'APROB SW HW TI');
INSERT INTO grupo VALUES(null, 68,'APROB TELECOMUNICACIONES');
INSERT INTO grupo VALUES(null, 68,'PLANIFICACION Y GESTION DE SOPORTE Ti');
INSERT INTO grupo VALUES(null, 68,'SDM - TCH');
INSERT INTO grupo VALUES(null, 68,'SOPORTE REMEDY TI');
INSERT INTO grupo VALUES(null, 68,'TCH - EXCEPCIONES');
INSERT INTO grupo VALUES(null, 68,'TCH - MULTIPROVEEDOR');
INSERT INTO grupo VALUES(null, 68,'TCH APROB REFRESH');
INSERT INTO grupo VALUES(null, 68,'TCH CERTIFICADOS CITRIX');
INSERT INTO grupo VALUES(null, 68,'TCH COMERCIO ELECTRONICO Recaudacion');
INSERT INTO grupo VALUES(null, 68,'TCH Cambios');
INSERT INTO grupo VALUES(null, 68,'TCH Configuración');
INSERT INTO grupo VALUES(null, 68,'TCH DESARROLLO DE INFRAESTRUCTURA');
INSERT INTO grupo VALUES(null, 68,'TCH DPE');
INSERT INTO grupo VALUES(null, 68,'TCH Explotación');
INSERT INTO grupo VALUES(null, 68,'TCH Explotación (BELIEVE)');
INSERT INTO grupo VALUES(null, 68,'TCH Incidencias');
INSERT INTO grupo VALUES(null, 68,'TCH Infraestructura CPD');
INSERT INTO grupo VALUES(null, 68,'TCH Mainframe');
INSERT INTO grupo VALUES(null, 68,'TCH MidRange');
INSERT INTO grupo VALUES(null, 68,'TCH Mypass');
INSERT INTO grupo VALUES(null, 68,'TCH NWS APROBADOR REQ');
INSERT INTO grupo VALUES(null, 68,'TCH Operaciones');
INSERT INTO grupo VALUES(null, 68,'TCH PUESTO DE TRABAJO TI');
INSERT INTO grupo VALUES(null, 68,'TCH Problemas');
INSERT INTO grupo VALUES(null, 68,'TCH RELEASE');
INSERT INTO grupo VALUES(null, 68,'TCH Redes');
INSERT INTO grupo VALUES(null, 68,'TCH Release');
INSERT INTO grupo VALUES(null, 68,'TCH SOFTWARE');
INSERT INTO grupo VALUES(null, 68,'TCH SUPERVISION Y OPERACION');
INSERT INTO grupo VALUES(null, 68,'TCH Seguridad');
INSERT INTO grupo VALUES(null, 68,'TCH TRAFICO Y CONSISTENCIA');
INSERT INTO grupo VALUES(null, 68,'TCH_CUENTAS_EXADATA');
INSERT INTO grupo VALUES(null, 68,'TCH_OFERTAS_COMERCIALES');
INSERT INTO grupo VALUES(null, 68,'VIRTUAL CHAT 2');
INSERT INTO grupo VALUES(null, 69,'INGENIERO Proyecto Canal Web');
INSERT INTO grupo VALUES(null, 70,'INGENIERO Proyecto Grupo 11');
INSERT INTO grupo VALUES(null, 70,'INGENIERO Proyecto Grupo 1');
INSERT INTO grupo VALUES(null, 70,'INGENIERO Proyecto Grupo 5');
INSERT INTO grupo VALUES(null, 70,'INGENIERO Proyecto Grupo 9');
INSERT INTO grupo VALUES(null, 71,'COP_Portabilidad');
INSERT INTO grupo VALUES(null, 71,'INGENIERO Proyecto Grupo 2');
INSERT INTO grupo VALUES(null, 71,'INGENIERO Proyecto Grupo 6');
INSERT INTO grupo VALUES(null, 71,'Sop_PCR_BandaAncha');
INSERT INTO grupo VALUES(null, 72,'COORDINADORES DE PROBLEMAS');
INSERT INTO grupo VALUES(null, 73,'INGENIERO Proyecto Grupo 4 - CO');
INSERT INTO grupo VALUES(null, 73,'INGENIERO Proyecto Grupo 4 - FA');
INSERT INTO grupo VALUES(null, 73,'INGENIERO Proyecto Grupo 4 - IN');
INSERT INTO grupo VALUES(null, 73,'INGENIERO Proyecto Grupo 4 - IN PARAM');
INSERT INTO grupo VALUES(null, 73,'INGENIERO Proyecto Grupo 6');
INSERT INTO grupo VALUES(null, 73,'INGENIERO Proyecto Grupo 8');
INSERT INTO grupo VALUES(null, 74,'INGENIERO Proyecto Grupo 3');
INSERT INTO grupo VALUES(null, 75,'Administración de Certificados');
INSERT INTO grupo VALUES(null, 75,'Consultores Especialistas');
INSERT INTO grupo VALUES(null, 75,'Explotacion_TI');
INSERT INTO grupo VALUES(null, 75,'FOT');
INSERT INTO grupo VALUES(null, 75,'PROCESOS DE NEGOCIO');
INSERT INTO grupo VALUES(null, 75,'SERVICE MANAGER CANAL ONLINE');
INSERT INTO grupo VALUES(null, 75,'SMS - Contenidos');
INSERT INTO grupo VALUES(null, 75,'SOPORTE ACTIVADOR');
INSERT INTO grupo VALUES(null, 75,'SOPORTE BELIEVE');
INSERT INTO grupo VALUES(null, 75,'SOPORTE CAMBIOS');
INSERT INTO grupo VALUES(null, 75,'SOPORTE EXTENSION');
INSERT INTO grupo VALUES(null, 75,'SOPORTE NEGOCIO COL');
INSERT INTO grupo VALUES(null, 75,'SOPORTE PASSWORD MANAGER');
INSERT INTO grupo VALUES(null, 75,'SOPORTE TI');
INSERT INTO grupo VALUES(null, 75,'SOPORTE TURBO CHARGING');
INSERT INTO grupo VALUES(null, 75,'Service Manager');
INSERT INTO grupo VALUES(null, 75,'Servicio Básico');
INSERT INTO grupo VALUES(null, 75,'Soporte BOT Centrex');
INSERT INTO grupo VALUES(null, 75,'Soporte BOT NETLINE');
INSERT INTO grupo VALUES(null, 75,'Soporte BOT TELSUR');
INSERT INTO grupo VALUES(null, 75,'Soporte BOT Telestar');
INSERT INTO grupo VALUES(null, 75,'Soporte BOT VIRGIN');
INSERT INTO grupo VALUES(null, 75,'Soporte Batch Movil');
INSERT INTO grupo VALUES(null, 75,'Soporte Empresas');
INSERT INTO grupo VALUES(null, 75,'Soporte On-Line Movil');
INSERT INTO grupo VALUES(null, 75,'Soporte Provisioning');
INSERT INTO grupo VALUES(null, 75,'Soporte Sisgrem');
INSERT INTO grupo VALUES(null, 75,'Soporte Trx');
INSERT INTO grupo VALUES(null, 75,'TELEFONICA TRIAGE');
INSERT INTO grupo VALUES(null, 75,'TESTING Y QA');
INSERT INTO grupo VALUES(null, 76,'Mediación Y Tráfico');
INSERT INTO grupo VALUES(null, 77,'MS EXCHANGE DC');
INSERT INTO grupo VALUES(null, 78,'PLATAFORMA FILTRO CONTENIDO');
INSERT INTO grupo VALUES(null, 78,'PLATAFORMA OIM');
INSERT INTO grupo VALUES(null, 78,'PLATAFORMA TOKEN RSA');
INSERT INTO grupo VALUES(null, 78,'TIS SOPORTE');
INSERT INTO grupo VALUES(null, 79,'TOTAL PACK');
INSERT INTO grupo VALUES(null, 80,'DESARROLLO');
INSERT INTO grupo VALUES(null, 80,'SOPORTE INCIDENCIAS');
INSERT INTO grupo VALUES(null, 81,'SOPORTE VIGATEC CORPORATIVO');
INSERT INTO grupo VALUES(null, 81,'SOPORTE VIGATEC METROPOLITANO');
INSERT INTO grupo VALUES(null, 81,'SOPORTE VIGATEC REGIONES');
INSERT INTO grupo VALUES(null, 82,'SOPORTE VIGATEC');
INSERT INTO grupo VALUES(null, 83,'PSVA');

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
INSERT INTO organizacion VALUES(53, 20, 'SOPORTE DE SERVICIOS TI');
INSERT INTO organizacion VALUES(54, 20, 'Software Factory');
INSERT INTO organizacion VALUES(55, 21, 'INTRALINKS');
INSERT INTO organizacion VALUES(56, 22, 'SERVICIO IMPRESION');
INSERT INTO organizacion VALUES(57, 23, 'SERVICIOS INC MainSoft');
INSERT INTO organizacion VALUES(58, 24, 'SWF');
INSERT INTO organizacion VALUES(59, 25, 'INFRAESTRUCTURA');
INSERT INTO organizacion VALUES(60, 26, 'INFRAESTRUCTURA');
INSERT INTO organizacion VALUES(61, 27, 'INFRAESTRUCTURA');
INSERT INTO organizacion VALUES(62, 28, 'SOLEM');
INSERT INTO organizacion VALUES(63, 29, 'ST COMPUTACION');
INSERT INTO organizacion VALUES(64, 30, 'BIG DATA Y ANALYTICS');
INSERT INTO organizacion VALUES(65, 30, 'CONFIGURACIÓN BELIEVE');
INSERT INTO organizacion VALUES(66, 30, 'FACTURACIÓN');
INSERT INTO organizacion VALUES(67, 30, 'GOBIERNO TI');
INSERT INTO organizacion VALUES(68, 30, 'SERVICIOS E INFRAESTRUCTURA TI');
INSERT INTO organizacion VALUES(69, 30, 'SISTEMAS CANAL WEB y SVA');
INSERT INTO organizacion VALUES(70, 30, 'SISTEMAS CORPORATIVOS');
INSERT INTO organizacion VALUES(71, 30, 'SISTEMAS DE ATENCIÓN COMERCIAL');
INSERT INTO organizacion VALUES(72, 30, 'SISTEMAS DE CALIDAD DE SW');
INSERT INTO organizacion VALUES(73, 30, 'SISTEMAS DE FACTURACIÓN Y COBROS');
INSERT INTO organizacion VALUES(74, 30, 'SISTEMAS DE RED');
INSERT INTO organizacion VALUES(75, 30, 'SOPORTE DE SERVICIOS TI');
INSERT INTO organizacion VALUES(76, 30, 'TI');
INSERT INTO organizacion VALUES(77, 31, 'CORREO ARGENTINA');
INSERT INTO organizacion VALUES(78, 32, 'TIS CHILE SOPORTE');
INSERT INTO organizacion VALUES(79, 33, 'SOPORTE');
INSERT INTO organizacion VALUES(80, 34, 'TI');
INSERT INTO organizacion VALUES(81, 35, 'SERVICIO IMPRESION');
INSERT INTO organizacion VALUES(82, 35, 'TI');
INSERT INTO organizacion VALUES(83, 36, 'SOPORTE DE SERVICIOS TI');



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

