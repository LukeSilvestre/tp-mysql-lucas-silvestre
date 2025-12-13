--Ejercicio 6: INSERT de datos de prueba

INSERT INTO duenios (nombre, apellido, telefono, direccion) VALUES
('María', 'González', '11-1234-5678', 'Av. Siempre Viva 123'),
('Carlos', 'Rodríguez', '11-8765-4321', 'Calle Falsa 456'),
('Ana', 'Martínez', '11-5555-9999', 'Boulevard de los Sueños 789');

-- Insertar 3 mascotas (cada una asociada a un dueño)
INSERT INTO mascotas (nombre, especie, fecha_nacimiento, id_duenio) VALUES
('Antonia', 'Perro', '2020-05-15', 1),
('Estrella', 'Gato', '2021-08-22', 2),
('Lola', 'Conejo', '2022-03-10', 3);

-- Insertar 2 veterinarios con especialidades distintas
INSERT INTO veterinarios (nombre, apellido, matricula, especialidad) VALUES
('Dr. Juan', 'Pérez', 'VET-12345', 'Cirugía'),
('Dra. Laura', 'Sánchez', 'VET-67890', 'Dermatología');

-- Insertar 3 registros de historial clínico
INSERT INTO historial_clinico (id_mascota, id_veterinario, descripcion) VALUES
(1, 1, 'Control anual - vacunas al día, buen estado general'),
(2, 2, 'Consulta por caída de pelo - tratamiento indicado'),
(3, 1, 'Castración programada - preoperatorio normal');