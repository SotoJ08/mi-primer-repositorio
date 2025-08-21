create database gestion_eventos;
create table Torneo (
    id_torneo SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    fecha_inicio DATE,
    fecha_fin DATE,
    ciudad_sede VARCHAR(100)
);

create table Equipo (
    id_equipo SERIAL PRIMARY KEY,
    nombre_oficial VARCHAR(100),
    anio_fundacion INT,
    entrenador_principal VARCHAR(100)
);

create table Estadio (
    id_estadio SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    capacidad INT,
    ubicacion VARCHAR(100)
);

create table Partido (
    id_partido SERIAL PRIMARY KEY,
    fecha DATE,
    id_equipo_local INT,
    id_equipo_visitante INT,
    marcador_final VARCHAR(10),
    id_estadio INT,
    id_torneo INT
);