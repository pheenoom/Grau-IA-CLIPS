(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot Tipo_Evento_Familiar
		(type SYMBOL)
		(allowed-values Boda Bautizo)
		(default Boda)
		(create-accessor read-write))
	(single-slot Caliente
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(create-accessor read-write))
	(single-slot Cantidad
		(type SYMBOL)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Relacion_Menu_Evento
		(type INSTANCE)
;+		(allowed-classes Evento)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Ingredientes
		(type INSTANCE)
;+		(allowed-classes Ingrediente)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Lactosa
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Mes_Final_Temporada
		(type INTEGER)
		(range 1 12)
		(default 1)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Tipo_Evento_Congreso
		(type SYMBOL)
		(allowed-values Cena Comida)
		(default Comida)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Origen
		(type SYMBOL)
		(allowed-values Japonesa Italiana)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot PVP
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Relacion_Menu_Segundo
		(type INSTANCE)
;+		(allowed-classes Segundo)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Platos_Compatibles
		(type INSTANCE)
;+		(allowed-classes Plato)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Racion
		(type SYMBOL)
		(allowed-values Normal Abundante)
		(default Normal)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Bebida_Menu
		(type INSTANCE)
;+		(allowed-classes Bebida)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Mes_Inicio_Temporada
		(type INTEGER)
		(range 1 12)
		(default 1)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Relacion_Menu_Primero
		(type INSTANCE)
;+		(allowed-classes Primero)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Vegetariano
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Gluten
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Numero_Comensales
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Relacion_Menu_Postre
		(type INSTANCE)
;+		(allowed-classes Postre)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Relacion_Menu_Bebida
		(type INSTANCE)
;+		(allowed-classes Bebida)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Fecha_Celebracion
		(type INTEGER)
		(range 1 12)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Bebida
	(is-a USER)
	(role concrete)
	(single-slot PVP
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Evento
	(is-a USER)
	(role concrete)
	(single-slot Numero_Comensales
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Fecha_Celebracion
		(type INTEGER)
		(range 1 12)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Familiar
	(is-a Evento)
	(role concrete)
	(single-slot Tipo_Evento_Familiar
		(type SYMBOL)
		(allowed-values Boda Bautizo)
		(default Boda)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Congreso
	(is-a Evento)
	(role concrete)
	(single-slot Tipo_Evento_Congreso
		(type SYMBOL)
		(allowed-values Cena Comida)
		(default Comida)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Plato
	(is-a USER)
	(role concrete)
	(multislot Ingredientes
		(type INSTANCE)
;+		(allowed-classes Ingrediente)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Origen
		(type SYMBOL)
		(allowed-values Japonesa Italiana)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Caliente
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Bebida_Menu
		(type INSTANCE)
;+		(allowed-classes Bebida)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot PVP
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Vegetariano
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Racion
		(type SYMBOL)
		(allowed-values Normal Abundante)
		(default Normal)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Platos_Compatibles
		(type INSTANCE)
;+		(allowed-classes Plato)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Primero
	(is-a Plato)
	(role concrete))

(defclass Segundo
	(is-a Plato)
	(role concrete))

(defclass Postre
	(is-a Plato)
	(role concrete))

(defclass Ingrediente
	(is-a USER)
	(role concrete)
	(single-slot PVP
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Gluten
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Lactosa
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Mes_Final_Temporada
		(type INTEGER)
		(range 1 12)
		(default 1)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Mes_Inicio_Temporada
		(type INTEGER)
		(range 1 12)
		(default 1)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Carne
	(is-a Ingrediente)
	(role concrete))

(defclass Pescado
	(is-a Ingrediente)
	(role concrete))

(defclass Cereal
	(is-a Ingrediente)
	(role concrete))

(defclass Derivado
	(is-a Ingrediente)
	(role concrete))

(defclass Verdura
	(is-a Ingrediente)
	(role concrete))

(defclass Especia
	(is-a Ingrediente)
	(role concrete))

(defclass Menu
	(is-a USER)
	(role concrete)
	(single-slot Relacion_Menu_Primero
		(type INSTANCE)
;+		(allowed-classes Primero)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Relacion_Menu_Segundo
		(type INSTANCE)
;+		(allowed-classes Segundo)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Relacion_Menu_Postre
		(type INSTANCE)
;+		(allowed-classes Postre)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Relacion_Menu_Evento
		(type INSTANCE)
;+		(allowed-classes Evento)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Relacion_Menu_Bebida
		(type INSTANCE)
;+		(allowed-classes Bebida)
;+		(cardinality 1 1)
		(create-accessor read-write)))



; Modulo de preguntas

(deffunction pregunta-general "Funcion para formular preguntas generales" (?pregunta $?respuestas-validas)
  (format t "%s: " ?pregunta)
  (bind ?respuesta (read)) ; Lee de la entrada estandard y almacena el resultado en respuesta
  (while (not (member (lowcase ?respuesta) ?respuestas-validas)) do
      (format t "%s: " ?pregunta)
      (bind ?respuesta (read)))
  ?respuesta ; Es lo que devuelve la funcion
)

(deffunction pregunta-numerica "Funcion para formular preguntas numericas que esten comprendidas entre un intervalo" (?pregunta ?min ?max)
  (format t "%s [%d, %d]: " ?pregunta ?min ?max)
  (bind ?respuesta (read))
  (while (not (and (>= ?respuesta ?min) (<= ?respuesta ?max))) do
      (format t "%s [%d, %d]: " ?pregunta ?min ?max)
      (bind ?respuesta (read)))
  ?respuesta
)

(deffunction pregunta-binaria "Funcion para formular preguntas que su respuesta es binaria, si o no" (?pregunta)
  (format t "%s (S)i/(N)o: " ?pregunta)
  (bind ?respuesta (read))
  (while (not (or (or (or (eq (lowcase ?respuesta) si)
                          (eq (lowcase ?respuesta) no))
                          (eq (lowcase ?respuesta) s))
                          (eq (lowcase ?respuesta) n))) do
      (format t "%s (S)i/(N)o: " ?pregunta)
      (bind ?respuesta (read)))
  ?respuesta
)

(defrule pregunta-familiar-congreso "Regla que pregunta al usuario si el evento es familiar o un congreso"
  (initial-fact)
  =>
  (bind ?respuesta (pregunta-general "¿Que tipo de evento se va a celebrar? (F)amiliar/(C)ongreso" familiar congreso f c))
  (format t "Debug: La respuesta selecionada es: %s" ?respuesta)
  (printout t crlf)
)

(defrule pregunta-bebida-plato "Regla que pregunta al usuario si quiere una bebida por plato"
  (initial-fact)
  =>
  (bind ?respuesta (pregunta-binaria "¿Incluir en cada plato una bebida?"))
  (format t "Debug: La respuesta selecionada es: %s" ?respuesta)
  (printout t crlf)
)

(defrule pregunta-estilo-comida "Regla que pergunta al usuario que estilo de comida quiere, ej: Tradicional, Sibarita..."
  (initial-fact)
  =>
  (bind ?respuesta (pregunta-general "¿Que estilo de comida quiere en el menu? (S)ibarita/(M)oderno/(I)ndefinido" sibarita moderno indefinido s m i))
  (format t "Debug: La respuesta selecionada es: %s" ?respuesta)
  (printout t crlf)
)

;
;(defrule regla-pruebas "Regla temporal para probar las funciones"
;  (initial-fact)
;  =>
;  (bind ?respuestaGeneral (pregunta-general "¿Esta es una pregunta general? (F)amiliar/(C)ongreso" familiar congreso f c))
;  (bind ?respuestaNumerica (pregunta-numerica "¿Esta es una pregunta numerica?" 1 12))
;  (bind ?respuestaBinaria (pregunta-binaria "¿Esta es una pregunta binaria?"))
;)
;
