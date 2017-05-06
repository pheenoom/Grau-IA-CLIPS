; Fri May 05 01:04:46 CEST 2017
;
;+ (version "3.5")
;+ (build "Build 663")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot Tipo_Evento_Familiar
		(type SYMBOL)
		(allowed-values Boda Bautizo)
		(default Boda)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Caliente
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
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
	(multislot Platos_Compatibles
		(type INSTANCE)
;+		(allowed-classes Plato)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Racion
		(type SYMBOL)
		(allowed-values Normal Abundante Peque%C3%B1a)
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
		(allowed-values Normal Abundante Peque%C3%B1a)
		(default Normal)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Platos_Compatibles
		(type INSTANCE)
;+		(allowed-classes Plato)
		(cardinality 1 ?VARIABLE)
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

(defclass Fruta
	(is-a Ingrediente)
	(role concrete))

(defclass Grasas
	(is-a Ingrediente)
	(role concrete))

(defclass Condimento
	(is-a Ingrediente)
	(role concrete))

(defclass Marisco
	(is-a Ingrediente)
	(role concrete))

(defclass Frutos_secos
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

; Fri May 05 01:04:46 CEST 2017
;
;+ (version "3.5")
;+ (build "Build 663")

(definstances instances
	([ontologia_Class0] of  Primero

		(Bebida_Menu [ontologia_Class39])
		(Ingredientes
			[ontologia_Class29]
			[ontologia_Class22]
			[ontologia_Class10003]
			[ontologia_Class10005]
			[ontologia_Class51]
			[ontologia_Class31]
			[ontologia_Class10007]
			[ontologia_Class10008]
			[ontologia_Class10009]
			[ontologia_Class10010]
			[ontologia_Class10011])
		(Nombre "Tosta tibia de salmón en conserva con tartar de sus huevas")
		(PVP 6.0)
		(Racion Normal))

	([ontologia_Class1] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Lechuga")
		(PVP 0.6))

	([ontologia_Class10003] of  Verdura

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Calabacín")
		(PVP 1.5))

	([ontologia_Class10004] of  Segundo

		(Bebida_Menu [ontologia_Class27])
		(Caliente FALSE)
		(Ingredientes
			[ontologia_Class10012]
			[ontologia_Class10014]
			[ontologia_Class10015]
			[ontologia_Class10016]
			[ontologia_Class10017])
		(Nombre "Carpaccio de presa de cerdo duroc")
		(PVP 8.0)
		(Racion Peque%C3%B1a)
		(Vegetariano FALSE))

	([ontologia_Class10005] of  Verdura

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 12)
		(Nombre "Puerro")
		(PVP 2.1))

	([ontologia_Class10007] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Leche_coco")
		(PVP 1.5))

	([ontologia_Class10008] of  Cereal

		(Gluten TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Masa_fresca")
		(PVP 2.4))

	([ontologia_Class10009] of  Fruta

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Limón")
		(PVP 0.4))

	([ontologia_Class10010] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pimienta_negra")
		(PVP 1.0))

	([ontologia_Class10011] of  Verdura

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Cebollino")
		(PVP 1.1))

	([ontologia_Class10012] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Presa_cerdo")
		(PVP 10.0))

	([ontologia_Class10014] of  Frutos_secos

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pasas")
		(PVP 0.4))

	([ontologia_Class10015] of  Frutos_secos

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Orejones")
		(PVP 0.8))

	([ontologia_Class10016] of  Fruta

		(Mes_Final_Temporada 8)
		(Mes_Inicio_Temporada 6)
		(Nombre "Frambuesa")
		(PVP 3.0))

	([ontologia_Class10017] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Calabaza")
		(PVP 2.0))

	([ontologia_Class10018] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Cochinillo_cerdo")
		(PVP 20.0))

	([ontologia_Class10019] of  Verdura

		(Mes_Final_Temporada 10)
		(Mes_Inicio_Temporada 3)
		(Nombre "Boniato")
		(PVP 2.5))

	([ontologia_Class10020] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pimiento_verde")
		(PVP 0.7))

	([ontologia_Class10021] of  Pescado

		(Mes_Final_Temporada 6)
		(Mes_Inicio_Temporada 3)
		(Nombre "Atún_fresco")
		(PVP 3.0))

	([ontologia_Class10022] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Wasabi")
		(PVP 0.3))

	([ontologia_Class10023] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 6)
		(Nombre "Nabo_japones")
		(PVP 3.1))

	([ontologia_Class10024] of  Pescado

		(Mes_Final_Temporada 9)
		(Mes_Inicio_Temporada 4)
		(Nombre "Cabracho")
		(PVP 15.0))

	([ontologia_Class10025] of  Marisco

		(Mes_Final_Temporada 10)
		(Mes_Inicio_Temporada 4)
		(Nombre "Erizo_mar")
		(PVP 8.0))

	([ontologia_Class10026] of  Condimento

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Tomillo")
		(PVP 0.2))

	([ontologia_Class10027] of  Cereal

		(Gluten TRUE)
		(Lactosa FALSE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Arroz")
		(PVP 1.25))

	([ontologia_Class10028] of  Bebida

		(Nombre "Cava"))

	([ontologia_Class10030] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Lentejas")
		(PVP 1.3))

	([ontologia_Class10031] of  Marisco

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Gambas")
		(PVP 4.0))

	([ontologia_Class10032] of  Fruta

		(Mes_Final_Temporada 4)
		(Mes_Inicio_Temporada 11)
		(Nombre "Naranja")
		(PVP 0.8))

	([ontologia_Class10033] of  Fruta

		(Mes_Final_Temporada 4)
		(Mes_Inicio_Temporada 12)
		(Nombre "Pomelo")
		(PVP 0.5))

	([ontologia_Class10034] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Comino")
		(PVP 0.2))

	([ontologia_Class15] of  Grasas

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Aceite_oliva")
		(PVP 0.2))

	([ontologia_Class16] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Vinagre de Modena")
		(PVP 1.3))

	([ontologia_Class17] of  Primero

		(Bebida_Menu [ontologia_Class39])
		(Ingredientes
			[ontologia_Class1]
			[ontologia_Class2]
			[ontologia_Class15]
			[ontologia_Class16]
			[ontologia_Class3]
			[ontologia_Class4])
		(Nombre "Ensalada de queso de cabra y nueces")
		(PVP 1.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class2] of  Verdura

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Tomate Natural")
		(PVP 1.5))

	([ontologia_Class20] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Ajo")
		(PVP 0.25))

	([ontologia_Class20005] of  Segundo

		(Bebida_Menu [ontologia_Class27])
		(Caliente TRUE)
		(Ingredientes
			[ontologia_Class10018]
			[ontologia_Class41]
			[ontologia_Class10019]
			[ontologia_Class10020])
		(Nombre "Cochinillo con puré de boniato ahumado y pimiento verde frito")
		(PVP 5.0)
		(Racion Abundante))

	([ontologia_Class20006] of  Primero

		(Bebida_Menu [ontologia_Class39])
		(Ingredientes
			[ontologia_Class10021]
			[ontologia_Class10022]
			[ontologia_Class10023]
			[ontologia_Class33])
		(Nombre "Tartar de atún con mayonesa de wasabi, jengibre encurtido y nabo japonés")
		(Origen Japonesa)
		(PVP 6.0)
		(Racion Peque%C3%B1a))

	([ontologia_Class20007] of  Segundo

		(Bebida_Menu [ontologia_Class39])
		(Caliente TRUE)
		(Ingredientes
			[ontologia_Class10024]
			[ontologia_Class51]
			[ontologia_Class10005]
			[ontologia_Class20008]
			[ontologia_Class44]
			[ontologia_Class26]
			[ontologia_Class10025])
		(Nombre "Pudding de cabracho con salsa de erizos de mar")
		(PVP 8.0)
		(Racion Normal))

	([ontologia_Class20008] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Tomate_frito")
		(PVP 0.7))

	([ontologia_Class20009] of  Segundo

		(Bebida_Menu [ontologia_Class27])
		(Caliente TRUE)
		(Ingredientes
			[ontologia_Class22]
			[ontologia_Class20010]
			[ontologia_Class20]
			[ontologia_Class20008]
			[ontologia_Class24]
			[ontologia_Class10026]
			[ontologia_Class15]
			[ontologia_Class20011])
		(Nombre "Asadura de cordero")
		(PVP 5.0)
		(Racion Abundante))

	([ontologia_Class20010] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Vino_blanco")
		(PVP 0.75))

	([ontologia_Class20011] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Laurel")
		(PVP 0.2))

	([ontologia_Class20012] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Cava")
		(PVP 1.2))

	([ontologia_Class20013] of  Primero

		(Bebida_Menu [ontologia_Class27])
		(Caliente TRUE)
		(Ingredientes
			[ontologia_Class10027]
			[ontologia_Class20012]
			[ontologia_Class20014]
			[ontologia_Class22]
			[ontologia_Class44]
			[ontologia_Class15]
			[ontologia_Class20015]
			[ontologia_Class35])
		(Nombre "Arroz al cava")
		(PVP 6.0)
		(Racion Normal))

	([ontologia_Class20014] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Carne_picada")
		(PVP 2.0))

	([ontologia_Class20015] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Queso_oveja")
		(PVP 1.0))

	([ontologia_Class20016] of  Primero

		(Bebida_Menu [ontologia_Class39])
		(Caliente TRUE)
		(Ingredientes
			[ontologia_Class10030]
			[ontologia_Class15]
			[ontologia_Class10009]
			[ontologia_Class10031]
			[ontologia_Class10032]
			[ontologia_Class10033]
			[ontologia_Class22]
			[ontologia_Class26]
			[ontologia_Class20011]
			[ontologia_Class10026])
		(Nombre "Ensalada con gambas cítricos y comino")
		(Racion Abundante))

	([ontologia_Class22] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Cebolla")
		(PVP 0.2))

	([ontologia_Class23] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pimientos Choriceros")
		(PVP 0.9))

	([ontologia_Class24] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pimenton de la Vera dulce")
		(PVP 1.0))

	([ontologia_Class25] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pimenton de la Vera picante")
		(PVP 1.0))

	([ontologia_Class26] of  Verdura

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Zanahoria")
		(PVP 0.4))

	([ontologia_Class27] of  Bebida

		(Nombre "Vino tinto"))

	([ontologia_Class28] of  Primero

		(Bebida_Menu [ontologia_Class27])
		(Caliente TRUE)
		(Ingredientes
			[ontologia_Class24]
			[ontologia_Class25]
			[ontologia_Class26]
			[ontologia_Class23]
			[ontologia_Class20]
			[ontologia_Class22])
		(Nombre "Carne guisada")
		(PVP 3.0)
		(Racion Normal))

	([ontologia_Class29] of  Pescado

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Lomo de salmon")
		(PVP 7.0))

	([ontologia_Class3] of  Frutos_secos

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Nueces"))

	([ontologia_Class30] of  Verdura

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pimiento rojo")
		(PVP 0.6))

	([ontologia_Class31] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Salsa de soja")
		(PVP 1.2))

	([ontologia_Class32] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Miel")
		(PVP 1.8))

	([ontologia_Class33] of  Verdura

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Jengibre fresco")
		(PVP 1.8))

	([ontologia_Class34] of  Grasas

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Aceite de sesamo")
		(PVP 0.1))

	([ontologia_Class35] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Sal")
		(PVP 0.2))

	([ontologia_Class36] of  Segundo

		(Bebida_Menu [ontologia_Class39])
		(Caliente TRUE)
		(Ingredientes
			[ontologia_Class29]
			[ontologia_Class22]
			[ontologia_Class30]
			[ontologia_Class34]
			[ontologia_Class33]
			[ontologia_Class32]
			[ontologia_Class31]
			[ontologia_Class35])
		(Nombre "Salmon al horno")
		(PVP 3.0)
		(Racion Normal))

	([ontologia_Class37] of  Segundo

		(Bebida_Menu [ontologia_Class27])
		(Caliente TRUE)
		(Ingredientes
			[ontologia_Class38]
			[ontologia_Class20]
			[ontologia_Class32]
			[ontologia_Class40]
			[ontologia_Class35]
			[ontologia_Class39])
		(Nombre "Pollo al ajillo")
		(PVP 2.0)
		(Racion Normal))

	([ontologia_Class38] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pollo de corral")
		(PVP 1.5))

	([ontologia_Class39] of  Bebida

		(Nombre "Vino blanco"))

	([ontologia_Class4] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Queso de cabra")
		(PVP 2.3))

	([ontologia_Class40] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Perejil")
		(PVP 0.1))

	([ontologia_Class41] of  Grasas

		(Gluten TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Mantequilla")
		(PVP 0.75))

	([ontologia_Class42] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Esencia de vainilla")
		(PVP 1.0))

	([ontologia_Class43] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Queso philadelphia")
		(PVP 0.8))

	([ontologia_Class44] of  Condimento

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Nata")
		(PVP 1.5))

	([ontologia_Class45] of  Cereal

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Galleta"))

	([ontologia_Class46] of  Postre

		(Ingredientes
			[ontologia_Class52]
			[ontologia_Class55]
			[ontologia_Class51]
			[ontologia_Class50]
			[ontologia_Class54]
			[ontologia_Class56])
		(Nombre "Flan de Huevo")
		(PVP 1.0)
		(Racion Normal))

	([ontologia_Class50] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Leche_vaca")
		(PVP 1.22))

	([ontologia_Class51] of  Derivado

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Huevo")
		(PVP 0.5))

	([ontologia_Class52] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Azucar")
		(PVP 0.3))

	([ontologia_Class54] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Vainilla")
		(PVP 2.0))

	([ontologia_Class55] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Canela")
		(PVP 1.2))

	([ontologia_Class56] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Zumo de limon")
		(PVP 0.2))

	([ontologia_Class57] of  Bebida

		(Nombre "Agua"))

	([ontologia_Class58] of  Postre

		(Ingredientes
			[ontologia_Class52]
			[ontologia_Class61]
			[ontologia_Class45]
			[ontologia_Class59]
			[ontologia_Class41]
			[ontologia_Class60]
			[ontologia_Class44]
			[ontologia_Class43]
			[ontologia_Class54])
		(Nombre "Tarta de queso")
		(PVP 1.0)
		(Racion Normal))

	([ontologia_Class59] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Gelatina en polvo")
		(PVP 0.4))

	([ontologia_Class60] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Mermelada de fresa")
		(PVP 2.35))

	([ontologia_Class61] of  Derivado

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Cuajada"))
)


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
    (import recopilacion ?ALL)
    (export ?ALL)
)

(defmodule solucionAbstracta
	 (import MAIN ?ALL)
	 (import recopilacion ?ALL)
	 (import abstraccion ?ALL)
	 (export ?ALL)
)

(defmodule solucionConcreta
	 	(import MAIN ?ALL)
	 	(import recopilacion ?ALL)
	 	(import abstraccion ?ALL)
		(import solucionAbstracta ?ALL)
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
	(slot estilo (type SYMBOL) (allowed-values Sibarita Moderno Clasico Tradicional UNDEF) (default UNDEF))
	(slot vegetariano (type SYMBOL) (allowed-values FALSE TRUE UNDEF) (default UNDEF))
	(slot gluten (type SYMBOL) (allowed-values FALSE TRUE UNDEF) (default UNDEF))
	(slot lactosa (type SYMBOL) (allowed-values FALSE TRUE UNDEF) (default UNDEF))
)

(deftemplate MAIN::ProblemaAbstracto
    ; Presupuesto(bajo, medio, alto, muy alto) => ([10,20),[20,40),[40,80),>80)
    ; NumComensales(bajo, medio, alto, muy alto) => ([20,30),[30,50),[50,100),[100, 500))
    ; Complejidad(facil, normal, alto) => ([tradicional,sibarita], clasico, moderno)
    ; Temporada(invierno, primavera, verano, otoño) => [12-3] [4-5] [6-9] [10-11]
    (slot presupuesto (type SYMBOL) (allowed-values Bajo Medio Alto MuyAlto UNDEF) (default UNDEF))
    (slot numComensales (type SYMBOL) (allowed-values Bajo Medio Alto MuyAlto UNDEF) (default UNDEF))
    (slot complejidad (type SYMBOL) (allowed-values Facil Normal Alto UNDEF) (default UNDEF))
    (slot temporada (type SYMBOL) (allowed-values Invierno Primavera Verano Otono UNDEF) (default UNDEF))
)


(deftemplate MAIN::PlatoAbstracto
	(slot precio (type FLOAT))
	(slot plato (type INSTANCE))
)


(deftemplate MAIN::MenuHappyMeal
	(slot primerPlato (type INSTANCE))
	(slot segundoPlato (type INSTANCE))
	(slot postre (type INSTANCE))
)

;                   ======================================================================
;                   =====================   Declaracion de clases   ======================
;                   ======================================================================

(defclass MenuUsuario "Clase menu que representa el menu a mostrar al usuario" (is-a Menu)
	(slot precio (type FLOAT) (create-accessor read-write))

)

(defclass PlatoPrecio (is-a Plato) (role concrete)
	(slot Precio (type FLOAT) (create-accessor read-write))
)

;                   ======================================================================
;                   ====================   Declaracion de handler   ======================
;                   ======================================================================

; Nota para optimizar: hacer una funcion que imprima si o no cuando
; preguntamos si lleva lactosa o no , etc...
(defmessage-handler MAIN::Plato imprimir ()
	(format t "Nombre: %s" ?self:Nombre)
	(printout t crlf)
	(format t "Precio elaboracion: %d" ?self:PVP)
	(printout t crlf)
	(format t "Es un plato vegetariano? %s" ?self:Vegetariano)
	(printout t crlf)
	(format t "Es un plato caliente? %s" ?self:Caliente)
	(printout t crlf)
	(printout t "Ingredientes del plato: " crlf)

	(bind $?listaIngredientes ?self:Ingredientes)
	(loop-for-count (?i 1 (length$ ?listaIngredientes)) do
		(bind ?ingrediente (nth$ ?i ?listaIngredientes))
		(printout t (send ?ingrediente imprimir) crlf)
	)
)

(defmessage-handler MAIN::Ingrediente imprimir ()
	(format t "%t Nombre: %s %n" ?self:Nombre)
	(bind ?lactosa ?self:Lactosa)
	(bind ?gluten ?self:Gluten)
	(if (eq ?lactosa TRUE)
		then (format t "%t Lactosa: Si %n")
		else (format t "%t Lactosa: No %n")
	)
	(if (eq ?gluten TRUE)
		then (format t "%t Gluten: Si %n")
		else (format t "%t Gluten: No %n")
	)
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
  (bind ?respuesta (pregunta-general "¿Que estilo de comida quiere en el menu? (S)ibarita/(M)oderno/(T)radicional/(C)lasico" s m t c))
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
		(focus abstraccion)
)

;                   ======================================================================
;                   ======================  Modulo de abstraccion   ======================
;                   ======================================================================

(defrule abstraccion::abstraer-presupuesto "Regla que nos permite abstraer del presupuesto propuesto por el usuario a unos valores abstractos"
    (not (ProblemaAbstracto))
		(Entrada (presupuestoMax ?presupuestoMax))
    =>
		(if (and (>= ?presupuestoMax 10) (< ?presupuestoMax 20))
				then (assert (ProblemaAbstracto (presupuesto Bajo)))
				else (if (and (>= ?presupuestoMax 20) (< ?presupuestoMax 40))
							then (assert (ProblemaAbstracto (presupuesto Medio)))
							else (if (and (>= ?presupuestoMax 40) (< ?presupuestoMax 80))
										then (assert (ProblemaAbstracto (presupuesto Alto)))
										else (assert (ProblemaAbstracto (presupuesto MuyAlto)))
							)
				)
		)
)

(defrule abstraccion::abstraer-comensales "Regla que nos permite abstraer el numero de comensales propuesto por el usuario a unos valores abstractos"
		?e <- (ProblemaAbstracto (numComensales ?num))
		(test (eq ?num UNDEF))
		(Entrada (numComensales ?numComensales))
		=>
		(if (and (>= ?numComensales 20) (< ?numComensales 30))
				then (modify ?e (numComensales Bajo))
				else (if (and (>= ?numComensales 30) (< ?numComensales 50))
							then (modify ?e (numComensales Medio))
							else (if (and (>= ?numComensales 50) (< ?numComensales 100))
										then (modify ?e (numComensales Alto))
										else (modify ?e (numComensales MuyAlto))
							)
				)
		)
)

(defrule abstraccion::abstraer-temporada "Regla que nos permite abstraer el mes del evento propuesto por el usuario a unos valores abstractos"
		?e <- (ProblemaAbstracto (temporada ?temporada))
		(test (eq ?temporada UNDEF))
		(Entrada (mesEvento ?mesEvento))
		=>
		(if (and (>= ?mesEvento 4) (<= ?mesEvento 5))
				then (modify ?e (temporada Primavera))
				else (if (and (>= ?mesEvento 6) (< ?mesEvento 9))
							then (modify ?e (temporada Verano))
							else (if (and (>= ?mesEvento 10) (< ?mesEvento 11))
										then (modify ?e (temporada Otono))
										else (modify ?e (temporada Invierno))
							)
				)
		)
)

(defrule abstraccion::abstraer-complejidad "Regla que nos permite abstraer el estilo propuesto por el usuario a unos valores abstractos"
		?e <- (ProblemaAbstracto (complejidad ?dificultad))
		(test (eq ?dificultad UNDEF))
		(Entrada (estilo ?estilo))
		=>
		(if (or (eq ?estilo Tradicional) (eq ?estilo Sibarita))
				then (modify ?e (complejidad Facil))
				else (if (eq ?estilo Clasico)
							then (modify ?e (complejidad Normal))
							else (modify ?e (complejidad Alto))
				)
		)
)

(defrule abstraccion::abstraccion-completada "Regla que comprueba que todas las preguntas han sido respondidas"
    (ProblemaAbstracto (presupuesto ?presupuesto))
    (test (not (eq ?presupuesto UNDEF)))

    (ProblemaAbstracto (numComensales ?numComensales))
    (test (not (eq ?numComensales UNDEF)))

    (ProblemaAbstracto (temporada ?temporada))
    (test (not (eq ?temporada UNDEF)))

    (ProblemaAbstracto (complejidad ?complejidad))
    (test (not (eq ?complejidad UNDEF)))
    =>
		(focus solucionAbstracta)
)


;                   ======================================================================
;                   ===================  Modulo de solucion abstracta   ==================
;                   ======================================================================

; (send <VARIABLE> get-<NOM_ATRIBUT>)
; (find-all-instances (clase_instancias) (restricciones)).
; (bind ?variable_instancia (make-instance nombre_instancia of nombre_clase))
(defrule solucionAbstracta::prueba ""
	(initial-fact)
	(ProblemaAbstracto (presupuesto ?presupuesto))
	(not (MenuHappyMeal))
	=>
	(bind ?platos (find-all-instances ((?inst Plato)) (or (not (eq ?presupuesto Bajo)) (< ?inst:PVP 3))))

	;(bind ?primerPlato (make-instance primero of Primero))
	;(bind ?segundoPlato (make-instance segundo of Segundo))
	;(bind ?postre (make-instance postre of Postre))

	(bind ?primerPlato (nth$ 1 ?platos))
	(bind ?segundoPlato (nth$ 2 ?platos))
	(bind ?postre (nth$ 3 ?platos))
	;(loop-for-count (?i 1 (length$ ?platos)) do
	;		(bind ?plato (nth$ ?i ?platos))
	;		(bind ?precio (send ?plato get-PVP))
	;		(bind ?nombre (send ?plato get-Nombre))

		;	(bind ?primerPlato (make-instance patata of Primero))

			;(printout t "precio: " ?precio)
			;(printout t "  nombre: " ?nombre crlf)
	;)

	(assert (MenuHappyMeal (primerPlato ?primerPlato) (segundoPlato ?segundoPlato) (postre ?postre)))
	(focus solucionConcreta)
)

;                   ======================================================================
;                   ===================   Modulo de solucion concreta   ==================
;                   ======================================================================

(defrule solucionConcreta::prueba2 ""
	(initial-fact)
	(MenuHappyMeal (primerPlato ?primerPlato) (segundoPlato ?segundoPlato) (postre ?postre))
	=>
	(bind ?listaIngredientes (find-all-instances ((?inst Ingrediente)) TRUE))
	(loop-for-count (?i 1 (length$ ?listaIngredientes)) do
		(bind ?ingrediente (nth$ ?i ?listaIngredientes))
		(printout t (send ?ingrediente imprimir))
		(printout t crlf)
	)
)
