MICROSOFT SQL SERVER MANAGEMENT STUDIO

CLICK DERECHO EN DATABASES - new databases -LE PONES NOMBRE
CLICK DERECHO EN LA DATABASE QUE SE CREO TASK, IMPORT DATA
MYCROSOFT ACCESS BROWSE ELEGIS LA DATABASE,
LUEGO LA OPCION DE ABAJO DE TODO "MICROSOFT OLE DB PROVIDERE FOR SQL SERVER
SELECCIONAS TODAS LAS TABLAS  NEXT FINISH

1)  QUE VERSION ESTA INSTALADA DE MICROSOFT SQL SERVER MANAGEMENT STUDIO? LA 21? version 20
2)  COMO CONECTO AL SERVER? NO ME FIGURA NINGUN SERVER EN MI PC al instalar te  dice el nombre de la bnase de datos

TÍTULO: Microsoft SQL Server Management Studio
------------------------------

Nos complace presentar una nueva experiencia de diálogo de conexión (una característica en versión preliminar solo disponible para el Motor de base de datos). La información de conexión utilizado recientemente (MRU) se transferirá a la nueva experiencia.
 
¿Le gustaría probarla? Si es así, seleccione "Sí".
 
Al seleccionar "No", se mantendrá la experiencia de diálogo de conexión clásica.
 
Puede cambiar entre las experiencias de diálogo de conexión nueva y clásica en cualquier momento en Herramientas > Opciones > Entorno > Diálogo de conexión.

------------------------------
BOTONES:

&Sí
&No
------------------------------

------------------------------------------------------------   SQL POSTGRE    ---------------------------------------------------------------------- (https://github.com/psigcat/curso_postgresql)

Curso de PostgreSQL intensivo
https://github.com/psigcat/curso_postgresql
Tema 1 Introducción
Resumen del curso
Introducción a PostgreSQL y PostGIS, configuración y gestión básica

Primero hay que descarregar los ficheros comprimidos en zip de este enlace, y descomprimirlos
Link material del curs([https://drive.google.com/file/d/1-RnbCtC-7NPP-5YFcJ-6c1nRe4rVYa2W/view?usp=sharing]) (25 MB)

Hay que tener instalado PostgreSQL, PostGIS, pgAdmin 4 y ...... otro cliente????
Windows
Toturial como instalar postgreSQL y PostGIS en Windows https://youtu.be/_EgtELrjLO4

Linux
Protoclo de instalación y configuración en Linux https://github.com/carlospsig/protocol_install_qgis_ubuntu/blob/master/install_postgis.sh

PostgreSQL Service connection file
https://docs.qgis.org/3.10/en/docs/user_manual/managing_data_source/opening_data.html#pg-service-file

Pasos a hacer
1 Instalar PostgreSQL 17
2 Instalar PostGIS 3, con Stackbuilder
3 Instalar pgAdmin4 9
4 Abrir pgAdmin con la configuración inicial
host=localhost
port=5432
dbase=postgres
user=postgres
password=??
5 Crear una nueva base de datos = gis_curso
Utilizar como plantilla (template) la base de datos "postgres", si se puede

6 Activar la extensión de PostGIS
Ejecutar la sintaxi siguiente en una "Query Tool"

create extension postgis;
7 crear un nuevo usuario gisadmin
Ejecutar la sintaxi siguiente en una "Query Tool", antes de ejecutarlo reemplazar el texto 'your_password' por un password vuestro personal y guardarlo en agún sitio seguro como keepass

CREATE ROLE gisadmin login PASSWORD 'your_password' SUPERUSER CREATEDB CREATEROLE NOINHERIT;
8 Abrir pgAdmin con el usuario gisadmin
Crear un nueva conexión con el usuario gisadmin y guardar la conexión

9 Crear schemas de trabajo
Primero creamos nuevos esquemas

limit_admin
medi_ambient
10 importar las tablas
Editamos los ficheros SQL que tenemos en la carpeta Datos

espais_pein.sql
municipis_catalunya.sql
video 1- Instalar, configurar PostGIS e importar capas
https://youtu.be/_EgtELrjLO4

Otros vídeos tutoriales en este canal
http://www.youtube.com/c/CarlosLópezQuintanilla

dudas y comentarios
carlos.lopez@psig.es

Colabora con QGIS, hazte socio! www.qgis.es

Fí

1) USER: postgresPASS: postgres5432 PORT: 5432 HOST: localhost DBNAME: postgres
2) DESCLICAR PGADMIN 4 EN LA INSTALACION
3) LUEGO DE INSTALAR DESCARGAR POR SEPARADO PGADMIN 4 DESDE LA PAGINA OFICIAL Y DESCARGAR LA MAS RECIENTE > https://www.pgadmin.org/download/
4) AHORA SI PUEDES ENTRAR A POSTGRESQL DESDE EL SERVIDOR PGADMIN4 EN INICIO

dentro de posgre click derecho en server > propieties y poner los datos estos  USER: postgres PASS: postgres5432 PORT: 5432 HOST: localhost DBNAME: postgres
propieties: nodos > desmarcar las 6 primeras y las  4 FTS 
en result grid > maximun column width 120/150
user interfase > theme dark
para reiniciar postgre ir a la lupa > servicios > postgres 17 en ejecucion > reiniciar (esto mas que nada cuando cambias ficheros seguro tengas que reiniciar)

para crear base de datos > click derecho en databases > create

crear nuevo usuario: abrir un query tool y ejecutar:
CREATE ROLE gisadmin login PASSWORD 'postgres5432' SUPERUSER CREATEDB CREATEROLE NOINHERIT;
quitarle poder a postgres cerramos conexion click derecho en el server POSTGRESQL 17 disconect, luego click derecho propiedades y cambiar user a gisadmin y pass postgres5432
luego conectar y ir a login > postgre click derecho > propiedades > privilegios y desclickear todas menos super user, lo importante es quitarle can login 

crear un schema
forma 1. click derecho sobre schema , crear schema
forma 2.
CREATE SCHEMA limit_admin
    AUTHORIZATION gisadmin;

COMMENT ON SCHEMA limit_admin
    IS 'Limites Administrativos';

ejecutar fichero espais_pein.sql en notepad ++ luego ctr A ctr C ctr V en query tool

