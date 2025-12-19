-- Ejercicios 9: SELECT con JOIN
SELECT m.nombre AS nom_mascota, m.especie AS especie, CONCAT(d.nombre,' ',d.apellido) AS nombre_completo_duenio
 from mascotas m JOIN duenios d ON m.id_duenio = d.id;

 -- Ejercicio 10: JOIN multiple con historial
SELECT 
    m.nombre AS nom_mascota, 
    m.especie AS especie, 
    CONCAT(d.nombre,' ',d.apellido) AS nombre_completo_duenio,
    CONCAT(v.nombre,' ',v.apellido) AS nombre_completo_vete,
    hc.fecha_registro AS historial_clinico_fecha_registro,
    hc.descripcion AS historial_clinico_descripcion
FROM historial_clinico hc 
JOIN mascotas m ON hc.id_mascota = m.id
JOIN duenios d ON m.id_duenio = d.id
JOIN veterinarios v ON hc.id_veterinario = v.id
ORDER BY hc.fecha_registro DESC;
