-- Ejercicios 1-5: CREATE DATABASE y CREATE TABLE

-- Ejercicio 1

CREATE DATABASE veterinaria_patitas_felices;
   USE veterinaria_patitas_felices;

-- Ejercicio 2
create table duenios (
    id integer PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    direccion VARCHAR(100)
);

-- Ejercicio 3
create table mascotas (
    id integer PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    especie VARCHAR(30) NOT NULL,
    fecha_nacimiento DATE,
    id_duenio integer NOT NULL,
    FOREIGN KEY (id_duenio) REFERENCES duenios(id)
);

-- Ejercicio 4
create table veterinarios(
    id integer PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    matricula VARCHAR(20) NOT NULL UNIQUE,
    especialidad VARCHAR(50) NOT NULL
);

-- Ejercicio 5
create table historial_clinico (
    id integer PRIMARY KEY AUTO_INCREMENT,
    id_mascota integer NOT NULL,
    id_veterinario integer NOT NULL,
    FOREIGN KEY(id_mascota) REFERENCES mascotas(id) ON DELETE CASCADE,
    FOREIGN KEY(id_veterinario) REFERENCES veterinarios(id),
    fecha_registro DATETIME NOT NULL default current_timestamp,
    descripcion VARCHAR(250) NOT NULL
);