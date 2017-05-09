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
		(propagation inherit)
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
			[ontologia_Class31]
			[ontologia_Class10007]
			[ontologia_Class10008]
			[ontologia_Class10009]
			[ontologia_Class10010]
			[ontologia_Class10011])
		(Nombre "Tosta tibia de salmón en conserva con tartar de sus huevas")
		(Platos_Compatibles [ontologia_Class17])
		(PVP 6.0)
		(Racion Normal))

	([ontologia_Class1] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Lechuga")
		(PVP 0.6))

	([ontologia_Class10000] of  Postre

		(Bebida_Menu [ontologia_Class57])
		(Ingredientes
			[ontologia_Class10002]
			[ontologia_Class10001]
			[ontologia_Class52])
		(Nombre "Sopa fría de sandía con bolas de melón")
		(Platos_Compatibles
			[ontologia_Class20013]
			[ontologia_Class28]
			[ontologia_Class17]
			[ontologia_Class20006]
			[ontologia_Class0]
			[ontologia_Class20009]
			[ontologia_Class20005]
			[ontologia_Class37]
			[ontologia_Class20007]
			[ontologia_Class36])
		(PVP 1.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class10001] of  Fruta

		(Mes_Final_Temporada 9)
		(Mes_Inicio_Temporada 5)
		(Nombre "Sandia")
		(PVP 2.0))

	([ontologia_Class10002] of  Fruta

		(Mes_Final_Temporada 10)
		(Mes_Inicio_Temporada 5)
		(Nombre "Melon")
		(PVP 1.5))

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
		(Platos_Compatibles [ontologia_Class17])
		(PVP 8.0)
		(Racion Peque%C3%B1a)
		(Vegetariano FALSE))

	([ontologia_Class10005] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Puerro")
		(PVP 2.1))

	([ontologia_Class10007] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Leche de coco")
		(PVP 1.5))

	([ontologia_Class10008] of  Cereal

		(Gluten TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Masa fresca")
		(PVP 2.4))

	([ontologia_Class10009] of  Fruta

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Limón")
		(PVP 0.4))

	([ontologia_Class10010] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pimienta negra")
		(PVP 1.0))

	([ontologia_Class10011] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Cebollino")
		(PVP 1.1))

	([ontologia_Class10012] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Presa de cerdo")
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
		(Nombre "Cochinillo de cerdo")
		(PVP 20.0))

	([ontologia_Class10019] of  Verdura

		(Mes_Final_Temporada 10)
		(Mes_Inicio_Temporada 3)
		(Nombre "Boniato")
		(PVP 2.5))

	([ontologia_Class10020] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pimiento verde")
		(PVP 0.7))

	([ontologia_Class10021] of  Pescado

		(Mes_Final_Temporada 6)
		(Mes_Inicio_Temporada 3)
		(Nombre "Atún fresco")
		(PVP 3.0))

	([ontologia_Class10022] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Wasabi")
		(PVP 0.3))

	([ontologia_Class10023] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 6)
		(Nombre "Nabo japones")
		(PVP 3.1))

	([ontologia_Class10024] of  Pescado

		(Mes_Final_Temporada 9)
		(Mes_Inicio_Temporada 4)
		(Nombre "Cabracho")
		(PVP 15.0))

	([ontologia_Class10025] of  Marisco

		(Mes_Final_Temporada 10)
		(Mes_Inicio_Temporada 4)
		(Nombre "Erizo de mar")
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

		(Mes_Final_Temporada 11)
		(Mes_Inicio_Temporada 4)
		(Nombre "Naranja")
		(PVP 0.8))

	([ontologia_Class10033] of  Fruta

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 4)
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
		(Nombre "Aceite de oliva")
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
		(Platos_Compatibles
			[ontologia_Class37]
			[ontologia_Class28]
			[ontologia_Class36])
		(PVP 1.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class2] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Tomate Natural")
		(PVP 1.5))

	([ontologia_Class20] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Ajo")
		(PVP 0.25))

	([ontologia_Class20000] of  Segundo

		(Bebida_Menu [ontologia_Class27])
		(Caliente TRUE)
		(Ingredientes
			[ontologia_Class20014]
			[ontologia_Class22]
			[ontologia_Class10020]
			[ontologia_Class20008]
			[ontologia_Class20015]
			[ontologia_Class20001]
			[ontologia_Class41]
			[ontologia_Class30011]
			[ontologia_Class15]
			[ontologia_Class50]
			[ontologia_Class35])
		(Nombre "Canelones caseros")
		(Platos_Compatibles
			[ontologia_Class17]
			[ontologia_Class30025]
			[ontologia_Class37]
			[ontologia_Class36])
		(PVP 3.0)
		(Racion Normal))

	([ontologia_Class20001] of  Cereal

		(Gluten TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Láminas de canelones")
		(PVP 1.0))

	([ontologia_Class20002] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Oregano")
		(PVP 0.2))

	([ontologia_Class20003] of  Fruta

		(Mes_Final_Temporada 5)
		(Mes_Inicio_Temporada 2)
		(Nombre "Fresa")
		(PVP 3.0))

	([ontologia_Class20004] of  Postre

		(Bebida_Menu [ontologia_Class57])
		(Ingredientes
			[ontologia_Class20003]
			[ontologia_Class30]
			[ontologia_Class2]
			[ontologia_Class20]
			[ontologia_Class35]
			[ontologia_Class15])
		(Nombre "Gazpacho de fresas")
		(Platos_Compatibles
			[ontologia_Class20013]
			[ontologia_Class28]
			[ontologia_Class17]
			[ontologia_Class20006]
			[ontologia_Class0]
			[ontologia_Class20009]
			[ontologia_Class10004]
			[ontologia_Class20005]
			[ontologia_Class37]
			[ontologia_Class36])
		(PVP 2.0)
		(Racion Normal))

	([ontologia_Class20005] of  Segundo

		(Bebida_Menu [ontologia_Class27])
		(Caliente TRUE)
		(Ingredientes
			[ontologia_Class10018]
			[ontologia_Class41]
			[ontologia_Class10019]
			[ontologia_Class10020])
		(Nombre "Cochinillo con puré de boniato ahumado y pimiento verde frito")
		(Platos_Compatibles
			[ontologia_Class17]
			[ontologia_Class28])
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
		(Platos_Compatibles [ontologia_Class10004])
		(PVP 6.0)
		(Racion Peque%C3%B1a))

	([ontologia_Class20007] of  Segundo

		(Bebida_Menu [ontologia_Class39])
		(Caliente TRUE)
		(Ingredientes
			[ontologia_Class10024]
			[ontologia_Class10005]
			[ontologia_Class20008]
			[ontologia_Class44]
			[ontologia_Class26]
			[ontologia_Class10025])
		(Nombre "Pudding de cabracho con salsa de erizos de mar")
		(Platos_Compatibles
			[ontologia_Class20006]
			[ontologia_Class0])
		(PVP 8.0)
		(Racion Normal))

	([ontologia_Class20008] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Tomate frito")
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
		(Platos_Compatibles
			[ontologia_Class10004]
			[ontologia_Class17]
			[ontologia_Class20007]
			[ontologia_Class0])
		(PVP 5.0)
		(Racion Abundante))

	([ontologia_Class20010] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Vino blanco")
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
		(Platos_Compatibles
			[ontologia_Class20009]
			[ontologia_Class20005]
			[ontologia_Class37]
			[ontologia_Class20007]
			[ontologia_Class36])
		(PVP 6.0)
		(Racion Normal))

	([ontologia_Class20014] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Carne picada")
		(PVP 1.2))

	([ontologia_Class20015] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Queso de oveja")
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
		(Platos_Compatibles
			[ontologia_Class20013]
			[ontologia_Class20009]
			[ontologia_Class10004]
			[ontologia_Class20005]
			[ontologia_Class20007]
			[ontologia_Class36])
		(PVP 2.0)
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

		(Mes_Final_Temporada 12)
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
		(Platos_Compatibles
			[ontologia_Class17]
			[ontologia_Class0])
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

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pimiento rojo")
		(PVP 0.6))

	([ontologia_Class30000] of  Condimento

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Crema de cacao")
		(PVP 0.5))

	([ontologia_Class30001] of  Postre

		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Ingredientes
			[ontologia_Class30011]
			[ontologia_Class50]
			[ontologia_Class41]
			[ontologia_Class30000]
			[ontologia_Class35])
		(Nombre "Crepes de Nutella")
		(PVP 0.3)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class30002] of  Postre

		(Ingredientes [ontologia_Class10001])
		(Nombre "Sandia")
		(PVP 0.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class30003] of  Cereal

		(Gluten TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Macarrones")
		(PVP 0.4))

	([ontologia_Class30004] of  Segundo

		(Bebida_Menu [ontologia_Class27])
		(Caliente TRUE)
		(Ingredientes
			[ontologia_Class30003]
			[ontologia_Class40005]
			[ontologia_Class20002]
			[ontologia_Class20008]
			[ontologia_Class40006])
		(Nombre "Macarrones gratinados con chorizo")
		(Platos_Compatibles
			[ontologia_Class20000]
			[ontologia_Class37]
			[ontologia_Class36]
			[ontologia_Class28]
			[ontologia_Class17]
			[ontologia_Class30033]
			[ontologia_Class30025])
		(PVP 2.0)
		(Racion Abundante))

	([ontologia_Class30005] of  Postre

		(Bebida_Menu [ontologia_Class57])
		(Ingredientes
			[ontologia_Class30006]
			[ontologia_Class50]
			[ontologia_Class30008]
			[ontologia_Class52]
			[ontologia_Class55]
			[ontologia_Class30009]
			[ontologia_Class54]
			[ontologia_Class10009]
			[ontologia_Class30007])
		(Nombre "Torrijas")
		(Platos_Compatibles
			[ontologia_Class20013]
			[ontologia_Class28]
			[ontologia_Class0]
			[ontologia_Class20009]
			[ontologia_Class37])
		(PVP 4.0)
		(Racion Abundante)
		(Vegetariano FALSE))

	([ontologia_Class30006] of  Cereal

		(Gluten TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pan")
		(PVP 0.5))

	([ontologia_Class30007] of  Grasas

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Aceite de girasol")
		(PVP 0.2))

	([ontologia_Class30008] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Agua")
		(PVP 0.2))

	([ontologia_Class30009] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Coñac")
		(PVP 0.4))

	([ontologia_Class30010] of  Postre

		(Bebida_Menu [ontologia_Class57])
		(Caliente FALSE)
		(Ingredientes
			[ontologia_Class30011]
			[ontologia_Class30012]
			[ontologia_Class30013]
			[ontologia_Class30014]
			[ontologia_Class15]
			[ontologia_Class30015]
			[ontologia_Class35])
		(Nombre "Muffins salados de pavo con queso Cheedar")
		(Platos_Compatibles
			[ontologia_Class20016]
			[ontologia_Class20006]
			[ontologia_Class0]
			[ontologia_Class10004]
			[ontologia_Class20005]
			[ontologia_Class20007])
		(PVP 5.0)
		(Racion Peque%C3%B1a))

	([ontologia_Class30011] of  Cereal

		(Gluten TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Harina")
		(PVP 0.8))

	([ontologia_Class30012] of  Derivado

		(Gluten TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Levadura")
		(PVP 0.5))

	([ontologia_Class30013] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Queso cheddar")
		(PVP 1.5))

	([ontologia_Class30014] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pavo")
		(PVP 1.0))

	([ontologia_Class30015] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Yogur natural")
		(PVP 0.5))

	([ontologia_Class30016] of  Postre

		(Bebida_Menu [ontologia_Class57])
		(Ingredientes
			[ontologia_Class30017]
			[ontologia_Class52]
			[ontologia_Class32]
			[ontologia_Class30015])
		(Nombre "Crema fría de kiwi")
		(Platos_Compatibles
			[ontologia_Class20013]
			[ontologia_Class20016]
			[ontologia_Class20006]
			[ontologia_Class0]
			[ontologia_Class10004]
			[ontologia_Class20007]
			[ontologia_Class36])
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class30017] of  Fruta

		(Mes_Final_Temporada 9)
		(Mes_Inicio_Temporada 4)
		(Nombre "Kiwi")
		(PVP 4.0))

	([ontologia_Class30018] of  Cereal

		(Gluten TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Galleta")
		(PVP 0.5))

	([ontologia_Class30019] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Cuajada")
		(PVP 0.8))

	([ontologia_Class30020] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Chocolate blanco")
		(PVP 0.5))

	([ontologia_Class30021] of  Condimento

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Chocolate con leche")
		(PVP 0.5))

	([ontologia_Class30022] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Chocolate negro")
		(PVP 0.8))

	([ontologia_Class30023] of  Postre

		(Bebida_Menu [ontologia_Class57])
		(Ingredientes
			[ontologia_Class30018]
			[ontologia_Class41]
			[ontologia_Class44]
			[ontologia_Class50]
			[ontologia_Class30019]
			[ontologia_Class30008]
			[ontologia_Class30020]
			[ontologia_Class30021]
			[ontologia_Class30022])
		(Nombre "Tarta de tres chocolates")
		(Platos_Compatibles
			[ontologia_Class20013]
			[ontologia_Class28]
			[ontologia_Class20016]
			[ontologia_Class20009]
			[ontologia_Class20005]
			[ontologia_Class37]
			[ontologia_Class36])
		(PVP 4.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class30024] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Jamon iberico")
		(PVP 5.0))

	([ontologia_Class30025] of  Primero

		(Bebida_Menu [ontologia_Class57])
		(Ingredientes
			[ontologia_Class2]
			[ontologia_Class30006]
			[ontologia_Class20]
			[ontologia_Class15]
			[ontologia_Class30008]
			[ontologia_Class35]
			[ontologia_Class30024])
		(Nombre "Salmorejo cordoves")
		(PVP 2.0)
		(Racion Normal))

	([ontologia_Class30027] of  Fruta

		(Mes_Final_Temporada 10)
		(Mes_Inicio_Temporada 5)
		(Nombre "Aguacate")
		(PVP 1.0))

	([ontologia_Class30028] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Patata")
		(PVP 0.8))

	([ontologia_Class30029] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Caldo de verduras")
		(PVP 1.0))

	([ontologia_Class30030] of  Primero

		(Caliente FALSE)
		(Ingredientes
			[ontologia_Class30028]
			[ontologia_Class10005]
			[ontologia_Class30027]
			[ontologia_Class30031]
			[ontologia_Class10009]
			[ontologia_Class44]
			[ontologia_Class10011]
			[ontologia_Class41]
			[ontologia_Class30029]
			[ontologia_Class35])
		(Nombre "Vichyssoise de aguacate y langostinos")
		(Platos_Compatibles
			[ontologia_Class20013]
			[ontologia_Class17]
			[ontologia_Class10004]
			[ontologia_Class20005]
			[ontologia_Class20007])
		(PVP 5.0)
		(Racion Normal))

	([ontologia_Class30031] of  Marisco

		(Mes_Final_Temporada 6)
		(Mes_Inicio_Temporada 3)
		(Nombre "Langostinos")
		(PVP 5.0))

	([ontologia_Class30032] of  Verdura

		(Mes_Final_Temporada 11)
		(Mes_Inicio_Temporada 9)
		(Nombre "Setas variadas")
		(PVP 3.0))

	([ontologia_Class30033] of  Primero

		(Bebida_Menu [ontologia_Class57])
		(Ingredientes
			[ontologia_Class30032]
			[ontologia_Class30034]
			[ontologia_Class30006]
			[ontologia_Class30035]
			[ontologia_Class15]
			[ontologia_Class30008]
			[ontologia_Class10034]
			[ontologia_Class24]
			[ontologia_Class35])
		(Nombre "Gazpacho de setas")
		(Platos_Compatibles
			[ontologia_Class20013]
			[ontologia_Class28]
			[ontologia_Class30025]
			[ontologia_Class20006]
			[ontologia_Class0]
			[ontologia_Class20009]
			[ontologia_Class10004]
			[ontologia_Class20005]
			[ontologia_Class37]
			[ontologia_Class36])
		(PVP 3.0)
		(Racion Normal))

	([ontologia_Class30034] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Caldo de ave")
		(PVP 1.0))

	([ontologia_Class30035] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Vinage de vino")
		(PVP 0.8))

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

		(Mes_Final_Temporada 12)
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
		(Platos_Compatibles
			[ontologia_Class20013]
			[ontologia_Class20016]
			[ontologia_Class17]
			[ontologia_Class20006]
			[ontologia_Class0])
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
			[ontologia_Class35])
		(Nombre "Pollo al ajillo")
		(Platos_Compatibles
			[ontologia_Class20013]
			[ontologia_Class20016])
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
		(PVP 1.0))

	([ontologia_Class40] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Perejil")
		(PVP 0.1))

	([ontologia_Class40003] of  Fruta

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Manzana")
		(PVP 1.05))

	([ontologia_Class40004] of  Postre

		(Ingredientes [ontologia_Class30017])
		(Nombre "Kiwi")
		(PVP 0.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class40005] of  Carne

		(Gluten FALSE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Chorizo")
		(PVP 1.0))

	([ontologia_Class40006] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Queso parmesano")
		(PVP 2.0))

	([ontologia_Class40007] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Salsa rosa")
		(PVP 0.5))

	([ontologia_Class40008] of  Primero

		(Bebida_Menu [ontologia_Class39])
		(Ingredientes
			[ontologia_Class30027]
			[ontologia_Class10031]
			[ontologia_Class40007]
			[ontologia_Class22]
			[ontologia_Class1])
		(Nombre "Coctel de gambas")
		(Platos_Compatibles
			[ontologia_Class20000]
			[ontologia_Class37]
			[ontologia_Class36]
			[ontologia_Class20013]
			[ontologia_Class28]
			[ontologia_Class30033]
			[ontologia_Class30025])
		(PVP 1.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class40009] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Judias")
		(PVP 1.0))

	([ontologia_Class40010] of  Segundo

		(Bebida_Menu [ontologia_Class27])
		(Caliente TRUE)
		(Ingredientes
			[ontologia_Class40009]
			[ontologia_Class40005]
			[ontologia_Class40012]
			[ontologia_Class40011]
			[ontologia_Class35])
		(Nombre "Judias con chorizo y panceta")
		(Platos_Compatibles
			[ontologia_Class20013]
			[ontologia_Class40008]
			[ontologia_Class30033]
			[ontologia_Class30025]
			[ontologia_Class20000]
			[ontologia_Class30004]
			[ontologia_Class37]
			[ontologia_Class36])
		(Racion Normal)
		(Vegetariano FALSE))

	([ontologia_Class40011] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Panceta")
		(PVP 1.5))

	([ontologia_Class40012] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Morcilla")
		(PVP 2.5))

	([ontologia_Class40013] of  Postre

		(Bebida_Menu [ontologia_Class57])
		(Ingredientes
			[ontologia_Class50]
			[ontologia_Class55]
			[ontologia_Class54]
			[ontologia_Class10009]
			[ontologia_Class52]
			[ontologia_Class30011])
		(Nombre "Natillas caseras")
		(Platos_Compatibles
			[ontologia_Class28]
			[ontologia_Class40008]
			[ontologia_Class30033]
			[ontologia_Class30025]
			[ontologia_Class20000]
			[ontologia_Class40010]
			[ontologia_Class30004]
			[ontologia_Class37]
			[ontologia_Class36])
		(PVP 2.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class40014] of  Postre

		(Bebida_Menu [ontologia_Class57])
		(Ingredientes
			[ontologia_Class50]
			[ontologia_Class10027]
			[ontologia_Class10009]
			[ontologia_Class52]
			[ontologia_Class55]
			[ontologia_Class41])
		(Nombre "Arroz con leche casero")
		(Platos_Compatibles
			[ontologia_Class28]
			[ontologia_Class40008]
			[ontologia_Class17]
			[ontologia_Class30033]
			[ontologia_Class30025]
			[ontologia_Class20000]
			[ontologia_Class40010]
			[ontologia_Class30004]
			[ontologia_Class37]
			[ontologia_Class36])
		(PVP 2.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class40015] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Guisantes")
		(PVP 0.8))

	([ontologia_Class40016] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Aceitunas verdes")
		(PVP 0.8))

	([ontologia_Class40017] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Mayonesa")
		(PVP 1.0))

	([ontologia_Class40018] of  Segundo

		(Bebida_Menu [ontologia_Class57])
		(Ingredientes
			[ontologia_Class40016]
			[ontologia_Class40015]
			[ontologia_Class30028]
			[ontologia_Class26]
			[ontologia_Class40019])
		(Nombre "Ensaladilla rusa")
		(Platos_Compatibles
			[ontologia_Class28]
			[ontologia_Class40008]
			[ontologia_Class17]
			[ontologia_Class30033]
			[ontologia_Class30025]
			[ontologia_Class20000]
			[ontologia_Class40010]
			[ontologia_Class30004]
			[ontologia_Class37]
			[ontologia_Class36])
		(PVP 2.0)
		(Racion Normal))

	([ontologia_Class40019] of  Pescado

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Atún en lata")
		(PVP 2.0))

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

	([ontologia_Class46] of  Postre

		(Ingredientes
			[ontologia_Class52]
			[ontologia_Class55]
			[ontologia_Class50]
			[ontologia_Class54]
			[ontologia_Class56])
		(Nombre "Flan de Huevo")
		(Platos_Compatibles
			[ontologia_Class20013]
			[ontologia_Class20009]
			[ontologia_Class28]
			[ontologia_Class20005]
			[ontologia_Class37]
			[ontologia_Class36])
		(PVP 1.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class50] of  Derivado

		(Gluten FALSE)
		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Leche de vaca")
		(PVP 0.25))

	([ontologia_Class50005] of  Postre

		(Ingredientes [ontologia_Class10002])
		(Nombre "Melon")
		(PVP 0.0)
		(Racion Normal))

	([ontologia_Class50006] of  Postre

		(Ingredientes
			[ontologia_Class30011]
			[ontologia_Class52]
			[ontologia_Class32]
			[ontologia_Class30012]
			[ontologia_Class30008]
			[ontologia_Class30000])
		(Nombre "Dorayakis caseros de chocolate")
		(PVP 0.4)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class50007] of  Postre

		(Ingredientes [ontologia_Class10032])
		(Nombre "Naranja")
		(Racion Normal))

	([ontologia_Class50008] of  Postre

		(Ingredientes [ontologia_Class10033])
		(Nombre "Pomelo")
		(Racion Normal))

	([ontologia_Class50009] of  Postre

		(Ingredientes
			[ontologia_Class52]
			[ontologia_Class10009]
			[ontologia_Class41]
			[ontologia_Class55]
			[ontologia_Class3])
		(Nombre "Tarta de Santiago")
		(PVP 14.0)
		(Racion Normal))

	([ontologia_Class50010] of  Postre

		(Ingredientes
			[ontologia_Class52]
			[ontologia_Class50]
			[ontologia_Class55]
			[ontologia_Class10009]
			[ontologia_Class54])
		(Nombre "Crema catalana")
		(PVP 4.0)
		(Racion Normal))

	([ontologia_Class50011] of  Segundo

		(Ingredientes
			[ontologia_Class30006]
			[ontologia_Class4]
			[ontologia_Class20002]
			[ontologia_Class20014])
		(Nombre "Mini Hamburguesa rellena de queso Cabrales")
		(PVP 0.0)
		(Racion Normal))

	([ontologia_Class50012] of  Segundo

		(Ingredientes
			[ontologia_Class20014]
			[ontologia_Class30006])
		(Nombre "Hamburguesa")
		(PVP 0.0)
		(Racion Normal))

	([ontologia_Class50013] of  Segundo

		(Ingredientes
			[ontologia_Class41]
			[ontologia_Class10032]
			[ontologia_Class52]
			[ontologia_Class10010]
			[ontologia_Class35]
			[ontologia_Class22]
			[ontologia_Class50014])
		(Nombre "Pato a la naranja")
		(PVP 13.0)
		(Racion Normal))

	([ontologia_Class50014] of  Carne

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pato")
		(PVP 3.0))

	([ontologia_Class50018] of  Derivado

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Huevo")
		(PVP 0.5))

	([ontologia_Class50022] of  Primero

		(Ingredientes
			[ontologia_Class20014]
			[ontologia_Class30006])
		(Nombre "Hamburgesa")
		(PVP 0.0)
		(Racion Normal))

	([ontologia_Class50023] of  Primero

		(Ingredientes
			[ontologia_Class10031]
			[ontologia_Class30028]
			[ontologia_Class30]
			[ontologia_Class25]
			[ontologia_Class10010]
			[ontologia_Class35]
			[ontologia_Class30035]
			[ontologia_Class15]
			[ontologia_Class2]
			[ontologia_Class54])
		(Nombre "Leon come gambas")
		(PVP 80.0)
		(Racion Normal))

	([ontologia_Class50024] of  Primero

		(Ingredientes
			[ontologia_Class30011]
			[ontologia_Class10012]
			[ontologia_Class20002]
			[ontologia_Class35]
			[ontologia_Class20008]
			[ontologia_Class30014]
			[ontologia_Class38]
			[ontologia_Class4])
		(Nombre "Pizza de Carne")
		(PVP 12.0)
		(Racion Normal))

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
			[ontologia_Class59]
			[ontologia_Class41]
			[ontologia_Class60]
			[ontologia_Class44]
			[ontologia_Class43]
			[ontologia_Class54])
		(Nombre "Tarta de queso")
		(Platos_Compatibles
			[ontologia_Class20013]
			[ontologia_Class20009]
			[ontologia_Class28]
			[ontologia_Class10004]
			[ontologia_Class20016]
			[ontologia_Class37]
			[ontologia_Class20007]
			[ontologia_Class36]
			[ontologia_Class20006]
			[ontologia_Class0])
		(PVP 1.0)
		(Racion Normal)
		(Vegetariano TRUE))

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

;                   ======================================================================
;                   =====================   Declaracion de clases   ======================
;                   ======================================================================

(defclass MenuAbstracto (is-a USER) (role concrete)
	(slot Precio (type FLOAT) (create-accessor read-write) (default 0.0))
	(slot Menu (type INSTANCE) (create-accessor read-write))
)

(defclass PlatoAbstracto (is-a USER) (role concrete)
	(slot Precio (type FLOAT) (create-accessor read-write) (default 0.0))
	(slot Categoria (type SYMBOL) (allowed-values Bajo Medio Alto) (create-accessor read-write))
	(slot SubCategoria (type SYMBOL) (allowed-values Bajo Medio Alto) (create-accessor read-write))
	(slot Puntuacion (type INTEGER) (create-accessor read-write) (default 0))
	(slot Complejidad (type SYMBOL) (allowed-values Bajo Medio Alto) (create-accessor read-write))
	(slot Plato (type INSTANCE) (create-accessor read-write))
	(multislot PuntosDescripcion (type STRING) (create-accessor read-write))
)

;                   ======================================================================
;                   =================   Declaracion de handler DBEUG   ===================
;                   ======================================================================

(defmessage-handler MAIN::PlatoAbstracto imprimir-debug ()
	(printout t "-----------------------------------------------------------" crlf)
	(printout t "Precio: " ?self:Precio crlf)
	(printout t "Categoria: " ?self:Categoria crlf)
	(printout t "Sub-Categoria: " ?self:SubCategoria crlf)
	(printout t "Puntuacion: " ?self:Puntuacion crlf)
	(printout t "Complejidad: " ?self:Complejidad crlf)
	(printout t "Puntos: " crlf)
	(loop-for-count (?i 1 (length$ ?self:PuntosDescripcion)) do
		(bind ?descripcion (nth$ ?i ?self:PuntosDescripcion))
		(printout t ?descripcion crlf)
	)

	(printout t "------------------- Informacion del plato  ----------------" crlf)
	(bind ?plato ?self:Plato)
	(send ?plato imprimir)
	(printout t "-----------------------------------------------------------" crlf)
	(printout t crlf)
)

(defmessage-handler MAIN::Plato imprimir-debug ()
	(format t "Nombre: %s" ?self:Nombre)
	(printout t crlf)
	(bind ?vegetariano ?self:Vegetariano)
	(if (eq ?vegetariano TRUE)
		then (format t "%t Es un plato vegetariano? Si %n")
		else (format t "%t Es un plato vegetariano? No %n")
	)

	(bind ?caliente ?self:Caliente)
	(if (eq ?caliente TRUE)
		then (format t "%t Es un plato caliente? Si %n")
		else (format t "%t Es un plato caliente? No %n")
	)

	(printout t "Ingredientes del plato: ")
	(bind $?listaIngredientes ?self:Ingredientes)
	(format t "(" )
	(loop-for-count (?i 1 (length$ ?listaIngredientes)) do
		(bind ?ingrediente (nth$ ?i ?listaIngredientes))
		(send ?ingrediente imprimir)
	)
	(printout t ")" crlf)
	(printout t crlf)
)

(defmessage-handler MAIN::Ingrediente imprimir ()
	(format t "%s - " ?self:Nombre)
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
	(format t "%t Temporada Inicio: %d %n" ?self:Mes_Inicio_Temporada)
	(format t "%t Temporada Final: %d %n" ?self:Mes_Final_Temporada)
)

;                   ======================================================================
;                   ====================   Declaracion de handler   ======================
;                   ======================================================================



;                   ======================================================================
;                   ====================   Handler PlatoAbstracto   ======================
;                   ======================================================================

(defmessage-handler MAIN::PlatoAbstracto calcula-sub-categoria "Handler que calcula la sub-categoria dado dos parametros:
                                                                        Bajo  -> [0...precioMedio)
                                                                        Medio -> [precioMedio...precioAlto)
                                                                        Alto  -> [precioAlto...Inf)" (?precioMedio ?precioAlto)
	(bind ?precioPlato ?self:Precio)

    (if (eq (class ?self:Plato) Postre)
        then (if (< ?precioPlato ?precioMedio)
            then (send ?self put-SubCategoria Bajo)
            else (if (and (>= ?precioPlato ?precioMedio) (< ?precioPlato ?precioAlto))
                then (send ?self put-SubCategoria Medio)
                else (send ?self put-SubCategoria Alto)
            )
        )
        else (if (< ?precioPlato ?precioMedio)
            then (send ?self put-SubCategoria Bajo)
            else (if (and (>= ?precioPlato ?precioMedio) (< ?precioPlato ?precioAlto))
                then (send ?self put-SubCategoria Medio)
                else (send ?self put-SubCategoria Alto)
            )
        )
    )
)

(defmessage-handler MAIN::PlatoAbstracto calcula-categoria "Handler que calcula la categoria" ()
    (bind ?plato ?self:Plato)
    (bind ?precioPlato (send ?plato calcula-precio))

    (send ?self put-Precio ?precioPlato)
    (if (eq (class ?plato) Postre)
        then (if (< ?precioPlato 4)
            then (send ?self put-Categoria Bajo)
                 (send ?self calcula-sub-categoria 1.6 3.0)
            else (if (and (>= ?precioPlato 4) (< ?precioPlato 8))
                then (send ?self put-Categoria Medio)
                     (send ?self calcula-sub-categoria 4.5 6.75)
                else (send ?self put-Categoria Alto)
                     (send ?self calcula-sub-categoria 9.0 12.0)
            )
        )
        else (if (< ?precioPlato 10)
            then (send ?self put-Categoria Bajo)
                 (send ?self calcula-sub-categoria 3.0 6.0)
            else (if (and (>= ?precioPlato 10) (< ?precioPlato 20))
                then (send ?self put-Categoria Medio)
                     (send ?self calcula-sub-categoria 13.0 16.0)
                else (send ?self put-Categoria Alto)
                     (send ?self calcula-sub-categoria 25.0 30.0)
            )
        )
    )
)

(defmessage-handler MAIN::PlatoAbstracto calcula-puntuacion-presupuesto "" (?presupuesto)
    (bind ?puntos 0)
		(bind ?descripcion "N/A")
    (if (eq ?presupuesto Bajo)
        then (if (eq ?self:Categoria Bajo)
            then (bind ?puntos 2) (bind ?descripcion "Presupuesto Bajo y Categoria Baja")
            else (if (eq ?self:Categoria Medio)
                    then (bind ?puntos 1) (bind ?descripcion "Presupuesto Bajo y Categoria Media")
            )
        )
        else (if (eq ?presupuesto Medio)
            then (if (eq ?self:Categoria Medio)
                then (bind ?puntos 2) (bind ?descripcion "Presupuesto Medio y Categoria Media")
                else (if (eq ?self:Categoria Bajo)
                    then (bind ?puntos 1) (bind ?descripcion "Presupuesto Medio y Categoria Baja")
                )
            )
            else (if (eq ?presupuesto Alto)
                then (if (eq ?self:Categoria Medio)
                    then (bind ?puntos 1) (bind ?descripcion "Presupuesto Alto y Categoria Medio")
                    else (if (eq ?self:Categoria Alto)
                        then (bind ?puntos 2) (bind ?descripcion "Presupuesto Alto y Categoria Alta")
                    )
                )
                else (if (eq ?self:Categoria Alto)
                    then (bind ?puntos 3) (bind ?descripcion "Presupuesto Muy Alto y Categoria Alta")
                    else (if (eq ?self:Categoria Medio)
                        then (bind ?puntos 1) (bind ?descripcion "Presupuesto Muy Alto y Categoria Media")
                    )
                )
            )
        )
    )

    (send ?self put-Puntuacion (+ ?puntos (send ?self get-Puntuacion)))
		(bind ?descripcion (str-cat "+" (str-cat ?puntos (str-cat " --> " ?descripcion))))
		(slot-insert$ ?self PuntosDescripcion (+ 1 (length$ ?self:PuntosDescripcion)) ?descripcion)
)

(defmessage-handler MAIN::PlatoAbstracto calcula-puntuacion-complejidad "" (?numComensales)
    (bind ?puntos 0)
		(bind ?descripcion "N/A")
    (if (eq ?numComensales Medio)
        then (if (eq ?self:Complejidad Medio)
            then (bind ?puntos 2) (bind ?descripcion "Num comensales Medio y Complejidad del plato Medio")
            else (if (eq ?self:Complejidad Bajo)
                    then (bind ?puntos 1) (bind ?descripcion "Num comensales Medio y Complejidad del plato Bajo")
            )
        )
        else (if (eq ?numComensales Alto)
            then (if (eq ?self:Complejidad Bajo)
                then (bind ?puntos 2) (bind ?descripcion "Num comensales Alto y Complejidad del plato Bajo")
                else (if (eq ?self:Complejidad Medio)
                    then (bind ?puntos 1) (bind ?descripcion "Num comensales Alto y Complejidad del plato Medio")
                )
            )
            else (if (eq ?numComensales MuyAlto)
                then (if (eq ?self:Complejidad Bajo)
                    then (bind ?puntos 3) (bind ?descripcion "Num comensales Muy Alto y Complejidad del plato Bajo")
                    else (if (eq ?self:Complejidad Medio)
                        then (bind ?puntos 1) (bind ?descripcion "Num comensales Muy Alto y Complejidad del plato Medio")
                    )
                )
            )
        )
    )

    (send ?self put-Puntuacion (+ ?puntos (send ?self get-Puntuacion)))
		(bind ?descripcion (str-cat "+" (str-cat ?puntos (str-cat " --> " ?descripcion))))
		(slot-insert$ ?self PuntosDescripcion (+ 1 (length$ ?self:PuntosDescripcion)) ?descripcion)
)

(defmessage-handler MAIN::PlatoAbstracto calcula-puntuacion-temporada "" (?temporada)
	(bind ?plato (send ?self get-Plato))

	(bind ?puntuacion 0)
	(bind ?descripcion "N/A")

	(bind $?listaIngredientes (send ?plato get-Ingredientes))
	(bind ?lenLista (length$ ?listaIngredientes))
	(loop-for-count (?i 1 ?lenLista) do
			(bind ?ingrediente (nth$ ?i ?listaIngredientes))

			(if (send ?ingrediente es-ingrediente-temporada ?temporada)
					then (bind ?puntuacion (+ 1 ?puntuacion))
			)
	)

	(if (= ?puntuacion ?lenLista)
			then (bind ?puntuacion 4) (bind ?descripcion "Todos los ingredientes son de temporada")
			else (if (>= ?puntuacion (* 0.75 ?lenLista))
					then (bind ?puntuacion 3) (bind ?descripcion ">=75% de los ingredientes son de temporada")
					else (if (>= ?puntuacion (* 0.50 ?lenLista))
							then (bind ?puntuacion 2) (bind ?descripcion ">=50% de los ingredientes son de temporada")
							else (if (>= ?puntuacion (* 0.25 ?lenLista))
									then (bind ?puntuacion 1) (bind ?descripcion ">=25% de los ingredientes son de temporada")
							)
					)
			)
	)

	(if (and (eq ?temporada Otono) (eq (send ?plato get-Caliente) TRUE))
			then (bind ?puntuacion (+ 1 ?puntuacion)) (bind ?descripcion (str-cat " ademas de ser temporada de otono y ser un plato caliente" ?descripcion))
	)
	(if (and (eq ?temporada Invierno) (eq (send ?plato get-Caliente) TRUE))
			then (bind ?puntuacion (+ 2 ?puntuacion)) (bind ?descripcion (str-cat " ademas de ser temporada de invierno y ser un plato caliente" ?descripcion))
	)
	(if (and (eq ?temporada Primavera) (eq (send ?plato get-Caliente) FALSE))
			then (bind ?puntuacion (+ 1 ?puntuacion)) (bind ?descripcion (str-cat " ademas de ser temporada de primavera y ser un plato frio" ?descripcion))
	)
	(if (and (eq ?temporada Verano) (eq (send ?plato get-Caliente) FALSE))
		 then (bind ?puntuacion (+ 2 ?puntuacion)) (bind ?descripcion (str-cat " ademas de ser temporada de verano y ser un plato frio" ?descripcion))
	)

	(send ?self put-Puntuacion (+ ?puntuacion (send ?self get-Puntuacion)))
	(bind ?descripcion (str-cat "+" (str-cat ?puntuacion (str-cat " --> " ?descripcion))))
	(slot-insert$ ?self PuntosDescripcion (+ 1 (length$ ?self:PuntosDescripcion)) ?descripcion)
)

;                   ======================================================================
;                   ========================     Handler Plato     =======================
;                   ======================================================================

(defmessage-handler MAIN::Plato calcula-precio "Handler que calcula el precio de un plato en base a recorrer y
                                                sumar el precio de todos los ingredientes que lo compone" ()
    (bind ?listaIngredientes ?self:Ingredientes)
    (bind ?precioPlato ?self:PVP)
    (loop-for-count (?i 1 (length$ $?listaIngredientes)) do
        (bind ?ingrediente (nth$ ?i $?listaIngredientes))
        (bind ?precioPlato (+ ?precioPlato (send ?ingrediente get-PVP)))
    )

    ?precioPlato
)

(defmessage-handler MAIN::Plato imprimir "Handler que imprime por la salida estandard la informacion basica de un plato" ()
	(printout t "Nombre      : " ?self:Nombre crlf)
	(printout t "Ingredientes: (")
	(bind ?listaIngredientes ?self:Ingredientes)
	(loop-for-count (?i 1 (- (length$ ?listaIngredientes) 1)) do
		(bind ?ingrediente (nth$ ?i ?listaIngredientes))
		(send ?ingrediente imprimir)
		(printout t ",")
	)
    (send (nth$ (length$ ?listaIngredientes) ?listaIngredientes) imprimir)
	(printout t ")" crlf)
)

;                   ======================================================================
;                   =====================     Handler Ingrediente     ====================
;                   ======================================================================

(defmessage-handler MAIN::Ingrediente imprimir "Handler que imprime el nombre del ingrediente" ()
	(printout t ?self:Nombre)
)

(defmessage-handler MAIN::Ingrediente es-ingrediente-temporada "" (?temporada)
    (if (eq ?temporada Primavera)
        then (if (and (<= ?self:Mes_Inicio_Temporada 5) (>= ?self:Mes_Final_Temporada 4))
                then TRUE
                else FALSE
        )
        else (if (eq ?temporada Verano)
            then (if (and (<= ?self:Mes_Inicio_Temporada 9) (>= ?self:Mes_Final_Temporada 6))
                then TRUE
                else FALSE
            )
            else (if (eq ?temporada Otono)
                then (if (and (<= ?self:Mes_Inicio_Temporada 11) (>= ?self:Mes_Final_Temporada 10))
                    then TRUE
                    else FALSE
                )
                else (if (or (and (<= ?self:Mes_Inicio_Temporada 3) (>= ?self:Mes_Final_Temporada 1))
                             (or  (=  ?self:Mes_Inicio_Temporada 12) (= ?self:Mes_Final_Temporada 12)))
                    then TRUE
                    else FALSE
                )
            )
        )
    )
)

;                   ======================================================================
;                   ===================      Handler Menu Abstracto     ==================
;                   ======================================================================

(defmessage-handler MAIN::MenuAbstracto imprimir "Handler que imprime la informacion basica de un menu y su precio" ()
	(bind ?menu ?self:Menu)
	(send ?menu imprimir)
	(printout t "Precio menu: " ?self:Precio crlf)
)

(defmessage-handler MAIN::MenuAbstracto generar-menu (?tipoCategoria)
	(bind ?indiceMaxPrimero 0)
	(bind ?indiceMaxSegundo 0)
	(bind ?indiceMaxPostre 0)

	(bind ?listaPlatosAbstractos (find-all-instances ((?inst PlatoAbstracto)) TRUE))
	(loop-for-count (?i 1 (length$ ?listaPlatosAbstractos)) do
		(bind ?platoAbstracto (nth$ ?i ?listaPlatosAbstractos))
		(bind ?plato (send ?platoAbstracto get-Plato))
		(bind ?tipoPlato (class (instance-address * ?plato)))

		(if (eq (send ?platoAbstracto get-SubCategoria) ?tipoCategoria)
			then (if (eq ?tipoPlato Primero)
					then (if (= ?indiceMaxPrimero 0)
						then (bind ?indiceMaxPrimero ?i)
						else (if (< (send (nth$ ?indiceMaxPrimero ?listaPlatosAbstractos) get-Puntuacion)
										 		(send ?platoAbstracto get-Puntuacion))
								then (bind ?indiceMaxPrimero ?i)
							)
					)
					else (if (eq ?tipoPlato Segundo)
						then (if (= ?indiceMaxSegundo 0)
							then (bind ?indiceMaxSegundo ?i)
							else (if (< (send (nth$ ?indiceMaxSegundo ?listaPlatosAbstractos) get-Puntuacion)
											 		(send ?platoAbstracto get-Puntuacion))
									then (bind ?indiceMaxSegundo ?i)
							)
						)
						else (if (= ?indiceMaxPostre 0)
							then (bind ?indiceMaxPostre ?i)
							else (if (< (send (nth$ ?indiceMaxPostre ?listaPlatosAbstractos) get-Puntuacion)
													(send ?platoAbstracto get-Puntuacion))
									then (bind ?indiceMaxPostre ?i)
							)
						)
				  )
			)
		)
	)

	(bind ?menu (make-instance (sym-cat menu-MenuAbstracto- (gensym)) of Menu))
	(send ?menu put-Relacion_Menu_Primero (send (nth$ ?indiceMaxPrimero ?listaPlatosAbstractos) get-Plato))
	(send ?menu put-Relacion_Menu_Segundo (send (nth$ ?indiceMaxSegundo ?listaPlatosAbstractos) get-Plato))
	(send ?menu put-Relacion_Menu_Postre  (send (nth$ ?indiceMaxPostre  ?listaPlatosAbstractos) get-Plato))
	(send ?self put-Menu ?menu)
	(send ?self put-Precio
		(+ (send (nth$ ?indiceMaxPrimero ?listaPlatosAbstractos) get-Precio)
		(+ (send (nth$ ?indiceMaxSegundo ?listaPlatosAbstractos) get-Precio)
		(send (nth$ ?indiceMaxPostre ?listaPlatosAbstractos) get-Precio))))
)


(deffunction generar-menu "" (?tipoCategoria ?nombreMenuAbstracto ?nombreMenu)

)

;                   ======================================================================
;                   =========================     Handler Menu     =======================
;                   ======================================================================

(defmessage-handler MAIN::Menu imprimir ()
	(printout t "--- Primer plato  ---" crlf)
	(send ?self:Relacion_Menu_Primero imprimir)
	(printout t "--- Segundo plato ---" crlf)
	(send ?self:Relacion_Menu_Segundo imprimir)
	(printout t "--- Postre        ---" crlf)
	(send ?self:Relacion_Menu_Postre imprimir)
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

(deffunction calcular-platos-abstractos "" ()
	(bind ?platos (find-all-instances ((?inst Plato)) TRUE))
	(loop-for-count (?i 1 (length$ ?platos)) do
		(bind ?plato (nth$ ?i ?platos))
		(bind ?platoAbstracto (make-instance (sym-cat platoAbstracto- (gensym)) of PlatoAbstracto))
		(send ?platoAbstracto put-Plato ?plato)
		(send ?platoAbstracto calcula-categoria)
	)
)

;                   ======================================================================
;                   =======================  Declaracion de reglas =======================
;                   ======================================================================

(defrule MAIN::inicio "Regla que genera la cabezera inicial"
    (declare (salience 10))
    =>
    (calcular-platos-abstractos)
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

(defrule recopilacion::pregunta-familiar-congreso "Pregunta al cliente que tipo de evento se va a realizar"
    (not (Entrada))
    =>
    (bind ?respuesta (pregunta-general "¿Que tipo de evento se va a celebrar? (B)oda/Co(m)union/B(a)utizo/(C)ongreso" b m a c))
    (if (eq ?respuesta b)
        then (assert (Entrada (tipoEvento Boda)))
        else (if (eq ?respuesta m)
            then (assert (Entrada (tipoEvento Comunion) (comida TRUE)))
            else (if (eq ?respuesta a)
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
    ?plato <-(object(is-a Plato))
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

(defrule solucionAbstracta::calcular-puntuaciones ""
	(initial-fact)
	(ProblemaAbstracto (presupuesto ?presupuesto))
	(ProblemaAbstracto (numComensales ?numComensales))
	(ProblemaAbstracto (temporada ?temporada))
	=>
	(bind ?listaPlatosAbstractos (find-all-instances ((?inst PlatoAbstracto)) TRUE))
	(loop-for-count (?i 1 (length$ ?listaPlatosAbstractos)) do
		(bind ?platoAbstracto (nth$ ?i ?listaPlatosAbstractos))
		(send ?platoAbstracto calcula-puntuacion-presupuesto ?presupuesto)
		(send ?platoAbstracto calcula-puntuacion-complejidad ?numComensales)
		(send ?platoAbstracto calcula-puntuacion-temporada ?temporada)
	)
	(focus solucionConcreta)
)

;                   ======================================================================
;                   ===================   Modulo de solucion concreta   ==================
;                   ======================================================================

(defrule solucionConcreta::generar-menu-bajo ""
	(not (generarMenuBajo))
	=>
	(bind ?menuAbstracto (make-instance menuAbstractoBarato of MenuAbstracto))
	(send ?menuAbstracto generar-menu Bajo)
	(assert (generarMenuBajo))
)

(defrule solucionConcreta::generar-menu-medio ""
	(not (generarMenuMedio))
	=>
	(bind ?menuAbstracto (make-instance menuAbstractoMedio of MenuAbstracto))
	(send ?menuAbstracto generar-menu Medio)
	(assert (generarMenuMedio))
)
(defrule solucionConcreta::generar-menu-alto ""
	(not (generarMenuAlto))
	=>
	(bind ?menuAbstracto (make-instance menuAbstractoAlto of MenuAbstracto))
	(send ?menuAbstracto generar-menu Alto)
	(assert (generarMenuAlto))
)

(defrule solucionConcreta::imprimirResultado
	(generarMenuBajo)
	(generarMenuMedio)
	(generarMenuAlto)
	(Entrada (numComensales ?numComensales))
	(not (final))
	=>
	(printout t "====================    DEBUG     ======================" crlf)
	(bind ?listaPlatosAbstractos (find-all-instances ((?inst PlatoAbstracto)) TRUE))
	(loop-for-count (?i 1 (length$ ?listaPlatosAbstractos)) do
		(bind ?platoAbstracto (nth$ ?i ?listaPlatosAbstractos))
		(send ?platoAbstracto imprimir-debug)
	)
	(printout t "========================================================" crlf)
	(printout t crlf)
	(printout t "====================  Menu Barato ===================== " crlf)
	(send (instance-address * [menuAbstractoBarato]) imprimir)
	(bind ?precio (* ?numComensales (send (instance-address * [menuAbstractoBarato]) get-Precio)))
	(printout t "Precio total: " ?precio crlf)

	(printout t "====================  Menu Medio ===================== " crlf)
	(send (instance-address * [menuAbstractoMedio]) imprimir)
	(bind ?precio (* ?numComensales (send (instance-address * [menuAbstractoMedio]) get-Precio)))
	(printout t "Precio total: " ?precio crlf)

	(printout t "====================  Menu Alto ===================== " crlf)
	(send (instance-address * [menuAbstractoAlto]) imprimir)
	(bind ?precio (* ?numComensales (send (instance-address * [menuAbstractoAlto]) get-Precio)))
	(printout t "Precio total: " ?precio crlf)

	(assert (final))
)
