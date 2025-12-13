🐾 Trabajo Práctico - MySQL Veterinaria "Patitas Felices"
Base de datos relacional para la gestión integral de una clínica veterinaria.

📋 Descripción del Proyecto
Este proyecto implementa un sistema de gestión de bases de datos para la veterinaria "Patitas Felices". La solución permite administrar dueños de mascotas, registrar mascotas, gestionar veterinarios y mantener un historial clínico completo, garantizando la integridad de los datos mediante relaciones y restricciones apropiadas en MySQL.

Funcionalidades principales:

Creación de una base de datos relacional normalizada.

Operaciones CRUD completas (Crear, Leer, Actualizar, Eliminar).

Gestión de integridad referencial con claves foráneas y eliminación en cascada.

Consultas complejas con JOIN para obtener información combinada de múltiples tablas.

🗄️ Estructura de la Base de Datos
El esquema consta de 4 tablas interrelacionadas:

Tabla Descripción Clave Primaria
duenos Almacena la información de los dueños de las mascotas. id
mascotas Registra las mascotas y las vincula a sus dueños. id
veterinarios Contiene los datos de los veterinarios y sus especialidades. id
historial_clinico Guarda el historial médico, vinculando mascotas, veterinarios y fechas. id
Diagrama de relaciones:

text
duenos (1) ──< (n) mascotas (1) ──< (n) historial_clinico (n) >── (1) veterinarios
🚀 Instalación y Ejecución
Prerrequisitos
Servidor MySQL (versión 5.7 o superior) instalado y en ejecución.

Herramienta de gestión (como phpMyAdmin, MySQL Workbench o la línea de comandos mysql).

Git (opcional, para clonar el repositorio).

Pasos para la Ejecución
Clonar el repositorio (o descargar los archivos):

bash
git clone https://github.com/tu-usuario/tp-mysql-tu-nombre.git
cd tp-mysql-tu-nombre
Importar y ejecutar el script SQL:

Abre tu herramienta de gestión de MySQL (phpMyAdmin, Workbench, etc.).

Crea una nueva base de datos (opcional, el script la crea automáticamente).

Selecciona o abre la base de datos.

Ve a la pestaña "Importar" (Import).

Selecciona el archivo tp-veterinaria_patitas_felices.sql.

Asegúrate de que la codificación sea UTF-8.

Haz clic en "Continuar" o "Ejecutar".

Alternativa por línea de comandos:

bash
mysql -u tu_usuario -p < tp-veterinaria_patitas_felices.sql
Verificar la creación:

Una vez ejecutado el script, deberías ver las 4 tablas listadas.

Puedes ejecutar consultas de prueba, como SELECT \* FROM duenos;, para confirmar que los datos se insertaron correctamente.

📂 Contenido del Repositorio
Archivo Contenido
tp-veterinaria_patitas_felices.sql Script principal SQL. Contiene todos los comandos: creación de BD, tablas, inserciones, actualizaciones, eliminaciones y consultas.
README.md Este archivo. Documentación del proyecto.
🔍 Ejemplos de Consultas Incluidas
El script resuelve todos los ejercicios prácticos solicitados:

Consulta Simple con JOIN (Ejercicio 9): Lista cada mascota con su especie y el nombre completo de su dueño.

Consulta Compleja con Múltiples JOIN (Ejercicio 10): Muestra todo el historial clínico, combinando información de la mascota, su dueño y el veterinario tratante, ordenado por fecha.

Puedes encontrar y ejecutar estas consultas directamente en la segunda mitad del archivo .sql.

⚙️ Tecnologías Utilizadas
MySQL: Sistema de gestión de bases de datos relacional.

SQL: Lenguaje de consulta estructurada.

phpMyAdmin: Herramienta de administración web para MySQL (entorno de desarrollo).

✨ Características y Buenas Prácticas
✅ Integridad Referencial: Uso de FOREIGN KEY y ON DELETE CASCADE para mantener los datos consistentes.

✅ Nomenclatura Clara: Nombres de tablas y columnas en español, descriptivos y consistentes.

✅ Script Autocontenido: Un solo archivo .sql reproduce todo el entorno desde cero.

✅ Datos de Ejemplo: Incluye registros de prueba para todas las tablas.

✅ Comentarios: El código SQL está comentado para facilitar su comprensión y mantenimiento.

👥 Autor
Lucas G. Silvestre - [Mi Github](https://github.com/LukeSilvestre/tp-mysql-lucas-silvestre)
