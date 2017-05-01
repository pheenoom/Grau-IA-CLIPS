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


;;;Declaracion de modulos ----------------------------

;;; Modulo principal de utilidades, indicamos que exportamos todo
(defmodule MAIN (export ?ALL))

;;; Modulo de recopilacion de los datos del usuario
(defmodule recopilacion
	(import MAIN ?ALL)
	(export ?ALL)
)

;;; Declaracion de templates --------------------------

(deftemplate MAIN::DatosMenu
	(slot epoca (type SYMBOL))
	(slot NumComensales (type INTEGER))
	(slot presupuestoMax (type INTEGER))
)

(deftemplate MAIN::preferencias
  (slot vegetariano (type SYMBOL) (allowed-values FALSE TRUE))
  (slot gluten (type SYMBOL) (allowed-values FALSE TRUE))
  (slot lactosa (type SYMBOL) (allowed-values FALSE TRUE))
)

;;; Declaracion de funciones --------------------------

;;; Funcion para hacer una pregunta con respuesta cualquiera
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

(deffunction pregunta-binaria "Preguntas con respuestas sí o no"(?pregunta)
   (bind ?respuesta (pregunta-general ?pregunta si no s n))
   (if (or (eq ?respuesta yes) (eq ?respuesta s))
       then TRUE
       else FALSE)
   (format t "Debug: La respuesta introducida es: %s" ?respuesta)
   (printout t crlf)
)

;;; Declaracion de reglas --------------------------

(defrule MAIN::inicio "Regla inicial"
	(declare (salience 10))
	=>
	(printout t "====================================================================" crlf)
  	(printout t "=    Sistema de elaboracion de menus personalizados Rico Rico     =" crlf)
	(printout t "====================================================================" crlf)
  	(printout t crlf)
	(printout t "Bienvenido! A continuacion se le formularan una serie de preguntas para poder crear el menu que mas encaje con sus preferencias." crlf)
	(printout t crlf)
	(focus recopilacion)
)

;;; Modulo recopilacion

(defrule recopilacion::establecer-presupuesto-maximo "Establece el presupuesto maximo"
  (not (DatosMenu))
  =>
  (bind ?presupuesto (pregunta-numerica "¿Cual es vuestro presupuesto maximo ?" 12000 50000))
  (assert (DatosMenu (presupuestoMax ?presupuesto)))
  (format t "Debug: La respuesta introducida es: %d" ?presupuesto)
  (printout t crlf)
)

(defrule recopilacion::HayVegetarianos "Pregunta si acude gente vegetariana"
  (not (vegetariano ?))
  =>
  (if(pregunta-binaria "¿Acudira gente vegetariana?")
    then (assert (preferencias(vegetariano TRUE)))
    else (assert (preferencias(vegetariano FALSE))))
)

(defrule recopilacion::HayAlergicosGluten "Pregunta si hay gente alérgica al gluten"
  (not (gluten ?))
  =>
  (if(pregunta-binaria "¿Se debe tener en cuenta alergias como el gluten?")
    then (assert (preferencias(gluten TRUE)))
    else (assert (preferencias(gluten FALSE))))
)

(defrule recopilacion::HayAlergicosLactosa "Pregunta si hay gente alérgica a la lactosa"
  (not (lactosa ?))
  =>
  (if(pregunta-binaria "¿Se debe tener en cuenta alergias como la lactosa?")
    then (assert (preferencias(lactosa TRUE)))
    else (assert (preferencias(lactosa FALSE))))
)
