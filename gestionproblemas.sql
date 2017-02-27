create database gestionproblemas;


create table problema(
idproblema varchar(50) NOT NULL,
idgrupo varchar(50),
idusuario int(11),
resumen varchar(2000) NOT NULL,
idcategoria int(11) NOT NULL,
fechainicio varchar(50) NOT NULL,
fechaupdate varchar(50) NOT NULL,
primary key(idproblema),
FOREIGN KEY (idgrupo) REFERENCES grupo(idgrupo),
FOREIGN KEY (idusuario) REFERENCES usuario(idusuario),
FOREIGN KEY (idcategoria) REFERENCES categoria(idcategoria)
);

create table grupo(
idgrupo varchar(50) not null AUTO_INCREMENT,
nombregrupo varchar(50) NOT NULL,
primary key(idgrupo)
);

create table empresa(
idempresa int(11) AUTO_INCREMENT,
nombre varchar(50) NOT NULL,

);

create table organizacion(
idorganizacion int(11) NOT NULL,
nombre varchar(55) NOT NULL,

);

create table usuario(
idusuario int(11) NOT NULL AUTO_INCREMENT,
nombre varchar(50) NOT NULL,
apellidopaterno varchar(50) NOT Null,
apellidomaterno varchar(50) NOT NULL,
primary key(idusuario)
);

create table tarea(
idtarea int(100) AUTO_INCREMENT,
idproblema varchar(50) NOT NULL,
resumen varchar(2000) NOT NULL,
fechacreacion varchar(50) not null,
fechainicio varchar(50) NOT NULL,
fechatermino varchar(50) NOT NULL,
fechaterminoreal varchar(50) NOT NULL,
primary key(idtarea),
FOREIGN KEY (idproblema) REFERENCES problema(idproblema),
);

create table categoria(
idcategoria int(11) NOT NULL,
nombre varchar(20) NOT NULL,
primary key(idcategoria)
);