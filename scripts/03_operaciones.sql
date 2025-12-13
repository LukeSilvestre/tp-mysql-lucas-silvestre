--Ejercicios 7: UPDATE

UPDATE duenio 
    set direccion = 'Angel Mallea 2906'
WHERE id = 3;

UPDATE veterinarios
    set especialidad = 'Traumatología'
WHERE matricula = 'VET-67890';

UPDATE historial_clinico
    set descripcion = 'Castración cancelada'
WHERE id = 3;

--Ejercicio 8: DELETE
DELETE FROM mascotas WHERE nombre = 'Lola';

