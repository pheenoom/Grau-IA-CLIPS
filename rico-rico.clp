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



;                   ======================================================================  
;                   ======================  Declaracion de modulos =======================  
;                   ======================================================================  

;;; Modulo principal de utilidades, indicamos que exportamos todo
(defmodule MAIN (export ?ALL))

;;; Modulo de recopilacion de los datos del usuario
(defmodule recopilacion
	(import MAIN ?ALL)
	(export ?ALL)
)

(defmodule abstraccion
    (import MAIN ?ALL)
    (import recopilacion deftemplate ?ALL)
    (export ?ALL)
)

;                   ======================================================================  
;                   =====================  Declaracion de templates ======================  
;                   ======================================================================  

(deftemplate MAIN::Entrada
	(slot numComensales (type INTEGER) (default -1))
	(slot presupuestoMax (type INTEGER) (default -1))
	(slot tipoEvento (type SYMBOL) (allowed-values Boda Comunion Bautizo Congreso UNDEF) (default UNDEF))
	(slot bebidaPorPlato (type SYMBOL) (allowed-values FALSE TRUE UNDEF) (default UNDEF))
	(slot mesEvento (type INTEGER) (default -1))
	(slot comida (type SYMBOL) (allowed-values FALSE TRUE UNDEF) (default UNDEF))
	(slot estilo (type SYMBOL) (allowed-values S M I UNDEF) (default UNDEF))
	(slot vegetariano (type SYMBOL) (allowed-values FALSE TRUE UNDEF) (default UNDEF))
	(slot gluten (type SYMBOL) (allowed-values FALSE TRUE UNDEF) (default UNDEF))
	(slot lactosa (type SYMBOL) (allowed-values FALSE TRUE UNDEF) (default UNDEF))
)


(deftemplate MAIN::ProblemaAbstracto
    ; Presupuesto(bajo, medio, alto, muy alto) => ([10,20),[20,40),[40,80),>80)
    ; NumComensales(bajo, medio, alto, muy alto) => ([20,30),[30,50),[50,100),[100, 500))
    ; Complejidad(facil, normal, alto) => ([tradicional,sibarita], clasico, moderno)
    ; Temporada(invierno, primavera, verano, otoño) => [12-3] [4-5] [6-9] [10-11]
    (slot presupuesto (type SYMBOL) (allowed-values Bajo Medio Alto MuyAlto))
    (slot numComensales (type SYMBOL) (allowed-values Bajo Medio Alto MuyAlto))
    (slot complejidad (type SYMBOL) (allowed-values Facil Normal Alto))
    (slot temporada (type SYMBOL) (allowed-values Invierno Primavera Verano Otono))
)

;                   ======================================================================  
;                   =====================  Declaracion de funciones ======================  
;                   ======================================================================  

(deffunction pregunta-general "Funcion para formular preguntas generales" (?pregunta $?respuestas-validas)
  (format t "%s: " ?pregunta)
  (bind ?respuesta (read))
  (while (not (member (lowcase ?respuesta) ?respuestas-validas)) do
      (format t "%s: " ?pregunta)
      (bind ?respuesta (read)))
  ?respuesta
)

(deffunction pregunta-numerica-rango "Funcion para formular preguntas numericas que esten comprendidas entre un intervalo" (?pregunta ?min ?max)
  (format t "%s [%d, %d]: " ?pregunta ?min ?max)
  (bind ?respuesta (read))
  (while (not (and (>= ?respuesta ?min) (<= ?respuesta ?max))) do
      (format t "%s [%d, %d]: " ?pregunta ?min ?max)
      (bind ?respuesta (read)))
  ?respuesta
)

(deffunction pregunta-numerica-min "Funcion para formular preguntas numericas con valor minimo" (?pregunta ?min)
  (format t "%s (Valor minimo es: %d): " ?pregunta ?min)
  (bind ?respuesta (read))
  (while (not (>= ?respuesta ?min)) do
      (format t "%s (Valor minimo es: %d): " ?pregunta ?min)
      (bind ?respuesta (read)))
  ?respuesta
)

(deffunction pregunta-binaria "Preguntas con respuestas sí o no" (?pregunta)
   (bind ?respuesta (pregunta-general ?pregunta si no s n))
   (if (or (eq ?respuesta yes) (eq ?respuesta s))
       then TRUE
       else FALSE)
)

;                   ======================================================================  
;                   =======================  Declaracion de reglas =======================  
;                   ======================================================================  

(defrule MAIN::inicio "Regla que genera la cabezera inicial"
	(declare (salience 10))	
	=>
	(printout t "====================================================================" crlf)
  	(printout t "=    Sistema de elaboracion de menus personalizados Rico Rico      =" crlf)
	(printout t "====================================================================" crlf)
  	(printout t crlf)
	(printout t "Bienvenido! A continuacion se le formularan una serie de preguntas para poder crear el menu que mas encaje con sus preferencias." crlf)
	(printout t crlf)
	(focus recopilacion)
)

;                   ======================================================================  
;                   ======================  Modulo de recopilacion  ======================  
;                   ======================================================================  



;                   ======================================================================  
;                   Debug: Orden de las preguntas
;                           - Que tipo de evento se va a realizar
;                           - Si es una cena o una comida
;                           - Que estilo de comida
;                           - En que mes se celebra el evento
;                           - Numero de comensales que van a asistir
;                           - Presupuesto
;                           - 
;
;                   ======================================================================  


(defrule recopilacion::pregunta-familiar-congreso "Pregunta al cliente que tipo de evento se va a realizar"
  (not (Entrada))
  =>
  (bind ?respuesta (pregunta-general "¿Que tipo de evento se va a celebrar? (B)oda/Co(m)union/B(a)utizo/(C)ongreso" b m a c))
  (if (eq ?respuesta b)
    then (assert (Entrada (tipoEvento Boda)))
    else 
      (if (eq ?respuesta m)
        then (assert (Entrada (tipoEvento Comunion) (comida TRUE)))
        else
          (if (eq ?respuesta a)
            then (assert (Entrada (tipoEvento Bautizo) (comida TRUE)))
            else (assert (Entrada (tipoEvento Congreso)))
          )
      )
  )
)

(defrule recopilacion::comida-cena "Pregunta al cliente si el evento sera una cena o una comida"
    ?e <- (Entrada (comida ?comida))
    (test (eq ?comida UNDEF))
    =>
    (bind ?respuesta (pregunta-general "¿Sera una comida o una cena? (C)omida/C(e)na" c e))
    (if (eq ?respuesta e)
        then (modify ?e (comida FALSE))
        else (modify ?e (comida TRUE))
    )
)

(defrule recopilacion::pregunta-estilo-comida "Pregunta al cliente el estilo de la comida"
    ?e <- (Entrada (estilo ?est))
    (test (eq ?est UNDEF))
  =>
  (bind ?respuesta (pregunta-general "¿Que estilo de comida quiere en el menu? (S)ibarita/(M)oderno/(I)ndefinido" sibarita moderno indefinido s m i))
  (modify ?e (estilo ?respuesta))
)

(defrule recopilacion::mes-evento "Pregunta al cliente en que mes se realiza el evento"
    ?e <- (Entrada (mesEvento ?mes))
    (test (< ?mes 0))
    =>
    (bind ?respuesta (pregunta-numerica-rango "¿En que mes se celebrara el evento ?" 1 12))
    (modify ?e (mesEvento ?respuesta))
)

(defrule recopilacion::numero-comensales "Pregunta al cliente el numero de comensales"
    ?e <- (Entrada (numComensales ?comensales))
    (test (< ?comensales 0))  
    =>
    (bind ?respuesta (pregunta-numerica-rango "¿Cuantos comensales sereis?" 20 500))
    (modify ?e (numComensales ?respuesta))
)

(defrule recopilacion::establecer-presupuesto-maximo "Pregunta al cliente que presupuesto por menu"
    ?e <- (Entrada (presupuestoMax ?max))
    (test (< ?max 0))
    =>
    (bind ?presupuesto (pregunta-numerica-min "¿Cual el preuspuesto del menu por persona?" 10))
    (modify ?e (presupuestoMax ?presupuesto))
)

(defrule recopilacion::pregunta-bebida-plato "Pregunta al cliente si quiere una bebida por plato"
    ?e <- (Entrada (bebidaPorPlato ?bebida))
    (test (eq ?bebida UNDEF))
    =>
    (if (pregunta-binaria "¿Incluir en cada plato una bebida?")
        then (modify ?e (bebidaPorPlato TRUE))
        else (modify ?e (bebidaPorPlato FALSE))
    )
)

(defrule recopilacion::pregunta-vegetarianos "Pregunta al cliente si acude gente vegetariana"
    ?e <- (Entrada (vegetariano ?veg))
    (test (eq ?veg UNDEF))
    =>
    (if (pregunta-binaria "¿Acudira gente vegetariana?")
        then (modify ?e (vegetariano TRUE))
        else (modify ?e (vegetariano FALSE))
    )
)

(defrule recopilacion::pregunta-alergicos-gluten "Pregunta al cliente si hay gente alérgica al gluten"
    ?e <- (Entrada (gluten ?glu))
    (test (eq ?glu UNDEF))
    =>
    (if (pregunta-binaria "¿Se debe tener en cuenta alergias como el gluten?")
        then (modify ?e (gluten TRUE))
        else (modify ?e (gluten FALSE))
    )
)

(defrule recopilacion::pregunta-alergicos-lactosa "Pregunta al cliente si hay gente alérgica a la lactosa"
    ?e <- (Entrada (lactosa ?lac))
    (test (eq ?lac UNDEF))
    =>
    (if (pregunta-binaria "¿Se debe tener en cuenta alergias como la lactosa?")
        then (modify ?e (lactosa TRUE))
        else (modify ?e (lactosa FALSE))
    )
)

(defrule recopilacion::entrada-completada "Regla que comprueba que todas las preguntas han sido respondidas"
    (Entrada (numComensales ?numComensales))
    (test (>= ?numComensales 0))
    
    (Entrada (presupuestoMax ?presupuestoMax))
    (test (>= ?presupuestoMax 0))
    
    (Entrada (tipoEvento ?tipoEvento))
    (test (not (eq ?tipoEvento UNDEF)))
    
    (Entrada (bebidaPorPlato ?bebidaPorPlato))
    (test (not (eq ?bebidaPorPlato UNDEF)))
    
    (Entrada (mesEvento ?mesEvento))
    (test (>= ?mesEvento 0))
    
    (Entrada (comida ?comida))
    (test (not (eq ?comida UNDEF)))
    
    (Entrada (estilo ?estilo))
    (test (not (eq ?estilo UNDEF)))
    
    (Entrada (vegetariano ?vegetariano))
    (test (not (eq ?vegetariano UNDEF)))
    
    (Entrada (gluten ?gluten))
    (test (not (eq ?gluten UNDEF)))
    
    (Entrada (lactosa ?lactosa))
    (test (not (eq ?lactosa UNDEF)))
    =>
    (focus abstracion)
)

;                   ======================================================================  
;                   ======================   Modulo de abstracion   ======================  
;                   ======================================================================  


    ; Presupuesto(bajo, medio, alto, muy alto) => ([10,20),[20,40),[40,80),>80)
    ; NumComensales(bajo, medio, alto, muy alto) => ([20,30),[30,50),[50,100),[100, 500))
    ; Complejidad(facil, normal, alto) => ([tradicional,sibarita], clasico, moderno)
    ; Temporada(invierno, primavera, verano, otoño) => [12-3] [4-5] [6-9] [10-11]
;(defrule abstracion::generar-problema-abstracto "Regla que genera el problema abstracto a partir de la entrada"
;    (not ProblemaAbstracto)
;    =>
;    (Entrada (numComensales ?numComensales))
;    (if )
;    (Entrada (presupuestoMax ?presupuestoMax))
;    (Entrada (mesEvento ?mesEvento))  
;    (Entrada (estilo ?estilo))
;    (assert (ProblemaAbstracto () () () ))
;)

