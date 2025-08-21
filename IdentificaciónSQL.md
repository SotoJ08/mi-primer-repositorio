Plataforma de gestión de eventos deportivos
1. Entidad: Torneo
•	Atributos:
o	id_torneo → Identificador único del torneo
o	nombre → Nombre del torneo
o	fecha_inicio → Fecha en la que inicia el torneo
o	fecha_fin → Fecha en la que finaliza
o	ciudad_sede → Ciudad donde se organiza

•	Dominios:
o	id_torneo: SERIAL 
o	nombre: VARCHAR(100)
o	fecha_inicio: DATE
o	fecha_fin: DATE
o	ciudad_sede: VARCHAR(100)
•	Clave primaria: id_torneo
3. Entidad: Equipo

•	Atributos:
o	id_equipo → Identificador único del equipo
o	nombre_oficial → Nombre oficial del equipo
o	anio_fundacion → Año de fundación
o	entrenador_principal → Nombre del entrenador

•	Dominios:
o	id_equipo: SERIAL
o	nombre_oficial: VARCHAR(100)
o	anio_fundacion: INT
o	entrenador_principal: VARCHAR(100)
•	Clave primaria: id_equipo

4. Entidad: Estadio
•	Atributos:
o	id_estadio → Identificador único del estadio
o	nombre → Nombre del estadio
o	capacidad → Capacidad de público
o	ubicacion → Ciudad o dirección

•	Dominios:
o	id_estadio: SERIAL
o	nombre: VARCHAR(100)
o	capacidad: INT
o	ubicacion: VARCHAR(100)
•	Clave primaria: id_estadio

6. Entidad: Partido
•	Atributos:
o	id_partido → Identificador del partido
o	fecha → Fecha del encuentro
o	id_equipo_local → Equipo local 
o	id_equipo_visitante → Equipo visitante 
o	marcador_final → Resultado (ejemplo: "3-1")
o	id_estadio → Estadio donde se jugó 
o	id_torneo → Torneo al que pertenece

•	Dominios:
o	id_partido: SERIAL
o	fecha: DATE
o	id_equipo_local: INT
o	id_equipo_visitante: INT
o	marcador_final: VARCHAR(10)
o	id_estadio: INT
o	id_torneo: INT
•	Clave primaria: id_partido
•	Claves foráneas:
o	id_equipo_local → Equipo(id_equipo)
o	id_equipo_visitante → Equipo(id_equipo)
o	id_estadio → Estadio(id_estadio)
o	id_torneo → Torneo(id_torneo)

