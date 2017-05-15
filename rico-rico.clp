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
	(single-slot ontologia_Class40001
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
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
		(allowed-values Japonesa Italiana Espa%C3%B1a)
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
	(single-slot AptoNinos
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot NombreAlergia
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Relacion_Menu_Postre
		(type INSTANCE)
;+		(allowed-classes Postre)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Estilo
		(type SYMBOL)
		(allowed-values Moderno Tradicional Clasico Sibarita)
;+		(cardinality 0 1)
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
		(create-accessor read-write))
	(single-slot AptoCena
		(type SYMBOL)
		(allowed-values FALSE TRUE)
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

(defclass Vino
	(is-a Bebida)
	(role concrete))

(defclass Tinto
	(is-a Vino)
	(role concrete))

(defclass Cava
	(is-a Vino)
	(role concrete))

(defclass Blanco
	(is-a Vino)
	(role concrete))

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
	(single-slot Vegetariano
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot AptoNinos
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Racion
		(type SYMBOL)
		(allowed-values Normal Abundante Peque%C3%B1a)
		(default Normal)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Origen
		(type SYMBOL)
		(allowed-values Japonesa Italiana Espa%C3%B1a)
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
	(single-slot Estilo
		(type SYMBOL)
		(allowed-values Moderno Tradicional Clasico Sibarita)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot AptoCena
		(type SYMBOL)
		(allowed-values FALSE TRUE)
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

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Moderno)
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

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Moderno)
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
		(PVP 0.5))

	([ontologia_Class10002] of  Fruta

		(Mes_Final_Temporada 10)
		(Mes_Inicio_Temporada 5)
		(Nombre "Melon")
		(PVP 0.75))

	([ontologia_Class10003] of  Verdura

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Calabacín")
		(PVP 0.8))

	([ontologia_Class10004] of  Segundo

		(Bebida_Menu [ontologia_Class57])
		(Caliente FALSE)
		(Estilo Sibarita)
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
		(PVP 1.0))

	([ontologia_Class10007] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Leche de coco")
		(PVP 0.7))

	([ontologia_Class10008] of  Cereal

		(Gluten TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Masa fresca")
		(PVP 1.2))

	([ontologia_Class10009] of  Fruta

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Limón")
		(PVP 0.4))

	([ontologia_Class10010] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pimienta negra")
		(PVP 0.3))

	([ontologia_Class10011] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Cebollino")
		(PVP 0.5))

	([ontologia_Class10012] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Presa de cerdo")
		(PVP 5.0))

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
		(PVP 0.9))

	([ontologia_Class10018] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Cochinillo de cerdo")
		(PVP 8.0))

	([ontologia_Class10019] of  Verdura

		(Mes_Final_Temporada 10)
		(Mes_Inicio_Temporada 3)
		(Nombre "Boniato")
		(PVP 0.8))

	([ontologia_Class10020] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pimiento verde")
		(PVP 0.7))

	([ontologia_Class10021] of  Pescado

		(Mes_Final_Temporada 6)
		(Mes_Inicio_Temporada 3)
		(Nombre "Atún fresco")
		(PVP 2.0))

	([ontologia_Class10022] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Wasabi")
		(PVP 0.3))

	([ontologia_Class10023] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 6)
		(Nombre "Nabo japones")
		(PVP 1.0))

	([ontologia_Class10024] of  Pescado

		(Mes_Final_Temporada 9)
		(Mes_Inicio_Temporada 4)
		(Nombre "Cabracho")
		(PVP 8.0))

	([ontologia_Class10025] of  Marisco

		(Mes_Final_Temporada 10)
		(Mes_Inicio_Temporada 4)
		(Nombre "Erizo de mar")
		(PVP 5.0))

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
		(PVP 0.6))

	([ontologia_Class10030] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Lentejas")
		(PVP 0.7))

	([ontologia_Class10031] of  Marisco

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Gambas")
		(PVP 3.0))

	([ontologia_Class10032] of  Fruta

		(Mes_Final_Temporada 11)
		(Mes_Inicio_Temporada 4)
		(Nombre "Naranja")
		(PVP 0.4))

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
		(PVP 0.7))

	([ontologia_Class17] of  Primero

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Tradicional)
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
		(PVP 2.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class2] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Tomate Natural")
		(PVP 0.8))

	([ontologia_Class20] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Ajo")
		(PVP 0.1))

	([ontologia_Class20000] of  Segundo

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Clasico)
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
		(PVP 0.5))

	([ontologia_Class20002] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Oregano")
		(PVP 0.1))

	([ontologia_Class20003] of  Fruta

		(Mes_Final_Temporada 5)
		(Mes_Inicio_Temporada 2)
		(Nombre "Fresa")
		(PVP 1.0))

	([ontologia_Class20004] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Moderno)
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
		(PVP 1.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class20005] of  Segundo

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class10018]
			[ontologia_Class41]
			[ontologia_Class10019]
			[ontologia_Class10020])
		(Nombre "Cochinillo con puré de boniato ahumado y pimiento verde frito")
		(Platos_Compatibles
			[ontologia_Class17]
			[ontologia_Class28])
		(PVP 7.0)
		(Racion Abundante))

	([ontologia_Class20006] of  Primero

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
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

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Sibarita)
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
		(PVP 9.0)
		(Racion Normal))

	([ontologia_Class20008] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Tomate frito")
		(PVP 0.4))

	([ontologia_Class20009] of  Segundo

		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class22]
			[ontologia_Class20010]
			[ontologia_Class20]
			[ontologia_Class20008]
			[ontologia_Class24]
			[ontologia_Class10026]
			[ontologia_Class15]
			[ontologia_Class20011]
			[ontologia_Class70001])
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
		(PVP 0.4))

	([ontologia_Class20011] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Laurel")
		(PVP 0.1))

	([ontologia_Class20012] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Cava")
		(PVP 0.7))

	([ontologia_Class20013] of  Primero

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Moderno)
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
		(PVP 3.0)
		(Racion Normal))

	([ontologia_Class20014] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Carne picada")
		(PVP 0.5))

	([ontologia_Class20015] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Queso de oveja")
		(PVP 0.5))

	([ontologia_Class20016] of  Primero

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Clasico)
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
		(PVP 5.5)
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
		(PVP 0.5))

	([ontologia_Class25] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pimenton de la Vera picante")
		(PVP 0.5))

	([ontologia_Class26] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Zanahoria")
		(PVP 0.4))

	([ontologia_Class28] of  Primero

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Tradicional)
		(Ingredientes
			[ontologia_Class24]
			[ontologia_Class25]
			[ontologia_Class26]
			[ontologia_Class23]
			[ontologia_Class20]
			[ontologia_Class22])
		(Nombre "Carne guisada")
		(Origen Espa%C3%B1a)
		(Platos_Compatibles
			[ontologia_Class17]
			[ontologia_Class0])
		(PVP 1.2)
		(Racion Normal))

	([ontologia_Class29] of  Pescado

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Lomo de salmon")
		(PVP 5.0))

	([ontologia_Class3] of  Frutos_secos

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Nueces")
		(PVP 0.3))

	([ontologia_Class30] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pimiento rojo")
		(PVP 0.6))

	([ontologia_Class30000] of  Condimento

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Crema de cacao")
		(PVP 0.2))

	([ontologia_Class30001] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class50]
			[ontologia_Class30000]
			[ontologia_Class35]
			[ontologia_Class70078]
			[ontologia_Class70074])
		(Nombre "Crepes de Nutella")
		(PVP 0.3)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class30002] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Clasico)
		(Ingredientes [ontologia_Class10001])
		(Nombre "Bol de Sandia")
		(PVP 0.5)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class30003] of  Cereal

		(Gluten TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Macarrones")
		(PVP 0.2))

	([ontologia_Class30004] of  Segundo

		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class30003]
			[ontologia_Class40005]
			[ontologia_Class20002]
			[ontologia_Class20008]
			[ontologia_Class40006])
		(Nombre "Macarrones gratinados con chorizo")
		(Origen Espa%C3%B1a)
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

		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Tradicional)
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
		(Origen Espa%C3%B1a)
		(Platos_Compatibles
			[ontologia_Class20013]
			[ontologia_Class28]
			[ontologia_Class0]
			[ontologia_Class20009]
			[ontologia_Class37])
		(PVP 1.25)
		(Racion Abundante)
		(Vegetariano TRUE))

	([ontologia_Class30006] of  Cereal

		(Gluten TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pan")
		(PVP 0.1))

	([ontologia_Class30007] of  Grasas

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Aceite de girasol")
		(PVP 0.2))

	([ontologia_Class30008] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Agua")
		(PVP 0.1))

	([ontologia_Class30009] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Coñac")
		(PVP 0.4))

	([ontologia_Class30010] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente FALSE)
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class30012]
			[ontologia_Class30013]
			[ontologia_Class30014]
			[ontologia_Class15]
			[ontologia_Class30015]
			[ontologia_Class35]
			[ontologia_Class70078])
		(Nombre "Muffins salados de pavo con queso Cheedar")
		(Platos_Compatibles
			[ontologia_Class20016]
			[ontologia_Class20006]
			[ontologia_Class0]
			[ontologia_Class10004]
			[ontologia_Class20005]
			[ontologia_Class20007])
		(PVP 1.1)
		(Racion Peque%C3%B1a))

	([ontologia_Class30011] of  Cereal

		(Gluten TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Harina")
		(PVP 0.4))

	([ontologia_Class30012] of  Derivado

		(Gluten TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Levadura")
		(PVP 0.2))

	([ontologia_Class30013] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Queso cheddar")
		(PVP 0.7))

	([ontologia_Class30014] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pavo")
		(PVP 0.5))

	([ontologia_Class30015] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Yogur natural")
		(PVP 0.25))

	([ontologia_Class30016] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Clasico)
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
		(PVP 1.15)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class30017] of  Fruta

		(Mes_Final_Temporada 9)
		(Mes_Inicio_Temporada 4)
		(Nombre "Kiwi")
		(PVP 1.0))

	([ontologia_Class30018] of  Cereal

		(Gluten TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Galleta")
		(PVP 0.1))

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
		(PVP 0.2))

	([ontologia_Class30021] of  Condimento

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Chocolate con leche")
		(PVP 0.2))

	([ontologia_Class30022] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Chocolate negro")
		(PVP 0.4))

	([ontologia_Class30023] of  Postre

		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Tradicional)
		(Ingredientes
			[ontologia_Class30018]
			[ontologia_Class44]
			[ontologia_Class50]
			[ontologia_Class30019]
			[ontologia_Class30008]
			[ontologia_Class30020]
			[ontologia_Class30021]
			[ontologia_Class30022]
			[ontologia_Class70074])
		(Nombre "Tarta de tres chocolates")
		(Platos_Compatibles
			[ontologia_Class20013]
			[ontologia_Class28]
			[ontologia_Class20016]
			[ontologia_Class20009]
			[ontologia_Class20005]
			[ontologia_Class37]
			[ontologia_Class36])
		(PVP 3.4)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class30024] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Jamon iberico")
		(PVP 3.0))

	([ontologia_Class30025] of  Primero

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class2]
			[ontologia_Class30006]
			[ontologia_Class20]
			[ontologia_Class15]
			[ontologia_Class30008]
			[ontologia_Class35]
			[ontologia_Class30024])
		(Nombre "Salmorejo cordoves")
		(PVP 17.0)
		(Racion Normal))

	([ontologia_Class30027] of  Fruta

		(Mes_Final_Temporada 10)
		(Mes_Inicio_Temporada 5)
		(Nombre "Aguacate")
		(PVP 0.4))

	([ontologia_Class30028] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Patata")
		(PVP 0.8))

	([ontologia_Class30029] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Caldo de verduras")
		(PVP 0.4))

	([ontologia_Class30030] of  Primero

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente FALSE)
		(Estilo Sibarita)
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
		(PVP 4.0))

	([ontologia_Class30032] of  Verdura

		(Mes_Final_Temporada 11)
		(Mes_Inicio_Temporada 9)
		(Nombre "Setas variadas")
		(PVP 2.0))

	([ontologia_Class30033] of  Primero

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Moderno)
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
		(PVP 0.3))

	([ontologia_Class30035] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Vinage de vino")
		(PVP 0.4))

	([ontologia_Class31] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Salsa de soja")
		(PVP 0.6))

	([ontologia_Class32] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Miel")
		(PVP 0.8))

	([ontologia_Class33] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Jengibre fresco")
		(PVP 1.3))

	([ontologia_Class34] of  Grasas

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Aceite de sesamo")
		(PVP 0.1))

	([ontologia_Class35] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Sal")
		(PVP 0.1))

	([ontologia_Class36] of  Segundo

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Tradicional)
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

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Clasico)
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
		(PVP 0.75))

	([ontologia_Class4] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Queso de cabra")
		(PVP 0.5))

	([ontologia_Class40] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Perejil")
		(PVP 0.1))

	([ontologia_Class40000] of  Tinto

		(Nombre "Vina Albali Tinto Reserva")
		(PVP 2.99))

	([ontologia_Class40003] of  Fruta

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Manzana")
		(PVP 0.55))

	([ontologia_Class40004] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Clasico)
		(Ingredientes [ontologia_Class30017])
		(Nombre "Bol de Kiwis")
		(PVP 0.5)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class40005] of  Carne

		(Gluten FALSE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Chorizo")
		(PVP 0.2))

	([ontologia_Class40006] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Queso parmesano")
		(PVP 1.0))

	([ontologia_Class40007] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Salsa rosa")
		(PVP 0.25))

	([ontologia_Class40008] of  Primero

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Clasico)
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
		(PVP 0.8))

	([ontologia_Class40010] of  Segundo

		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Tradicional)
		(Ingredientes
			[ontologia_Class40009]
			[ontologia_Class40005]
			[ontologia_Class40012]
			[ontologia_Class40011]
			[ontologia_Class35])
		(Nombre "Judias con chorizo y panceta")
		(Origen Espa%C3%B1a)
		(Platos_Compatibles
			[ontologia_Class20013]
			[ontologia_Class40008]
			[ontologia_Class30033]
			[ontologia_Class30025]
			[ontologia_Class20000]
			[ontologia_Class30004]
			[ontologia_Class37]
			[ontologia_Class36])
		(PVP 2.45)
		(Racion Normal)
		(Vegetariano FALSE))

	([ontologia_Class40011] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Panceta")
		(PVP 0.75))

	([ontologia_Class40012] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Morcilla")
		(PVP 0.9))

	([ontologia_Class40013] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Tradicional)
		(Ingredientes
			[ontologia_Class50]
			[ontologia_Class55]
			[ontologia_Class54]
			[ontologia_Class10009]
			[ontologia_Class52]
			[ontologia_Class70078])
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
		(PVP 1.25)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class40014] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class50]
			[ontologia_Class10009]
			[ontologia_Class52]
			[ontologia_Class55]
			[ontologia_Class70054]
			[ontologia_Class70074])
		(Nombre "Arroz con leche casero")
		(Origen Espa%C3%B1a)
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
		(PVP 1.25)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class40015] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Guisantes")
		(PVP 0.4))

	([ontologia_Class40016] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Aceitunas verdes")
		(PVP 0.8))

	([ontologia_Class40017] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Mayonesa")
		(PVP 0.5))

	([ontologia_Class40018] of  Segundo

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Clasico)
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
		(PVP 9.0)
		(Racion Normal))

	([ontologia_Class40019] of  Pescado

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Atún en lata")
		(PVP 0.5))

	([ontologia_Class41] of  Grasas

		(Gluten TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Mantequilla")
		(PVP 0.5))

	([ontologia_Class42] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Esencia de vainilla")
		(PVP 0.5))

	([ontologia_Class43] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Queso philadelphia")
		(PVP 0.4))

	([ontologia_Class44] of  Condimento

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Nata")
		(PVP 0.4))

	([ontologia_Class46] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Tradicional)
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

	([ontologia_Class50000] of  Primero

		(Bebida_Menu [ontologia_Class57])
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class22]
			[ontologia_Class44]
			[ontologia_Class35]
			[ontologia_Class10026]
			[ontologia_Class30032])
		(Nombre "Crema de hongos y setas al tomillo")
		(PVP 2.3)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class50001] of  Tinto

		(Nombre "Marques del Cerro")
		(PVP 3.99))

	([ontologia_Class50002] of  Tinto

		(Nombre "Garnacha tintorera, Syrah y Monastrell")
		(PVP 5.25))

	([ontologia_Class50003] of  Tinto

		(Nombre "Fincas St Martin")
		(PVP 6.9))

	([ontologia_Class50004] of  Tinto

		(Nombre "Vina Izadi")
		(PVP 8.9))

	([ontologia_Class50005] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Clasico)
		(Ingredientes [ontologia_Class10002])
		(Nombre "Bol de Melon")
		(PVP 0.5)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class50006] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class52]
			[ontologia_Class32]
			[ontologia_Class30012]
			[ontologia_Class30008]
			[ontologia_Class30000]
			[ontologia_Class70078])
		(Nombre "Dorayakis caseros de chocolate")
		(Origen Japonesa)
		(PVP 0.4)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class50007] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Clasico)
		(Ingredientes [ontologia_Class10032])
		(Nombre "Bol de Naranjas")
		(PVP 0.5)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class50008] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Clasico)
		(Ingredientes [ontologia_Class10033])
		(Nombre "Bol de Pomelos")
		(PVP 0.5)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class50009] of  Postre

		(Bebida_Menu [ontologia_Class57])
		(Estilo Tradicional)
		(Ingredientes
			[ontologia_Class52]
			[ontologia_Class10009]
			[ontologia_Class55]
			[ontologia_Class3]
			[ontologia_Class70074])
		(Nombre "Tarta de Santiago")
		(PVP 1.8)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class50010] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Tradicional)
		(Ingredientes
			[ontologia_Class52]
			[ontologia_Class50]
			[ontologia_Class55]
			[ontologia_Class10009]
			[ontologia_Class54])
		(Nombre "Crema catalana")
		(Origen Espa%C3%B1a)
		(PVP 2.95)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class50011] of  Segundo

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Caliente TRUE)
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class30006]
			[ontologia_Class4]
			[ontologia_Class20002]
			[ontologia_Class20014])
		(Nombre "Mini Hamburguesa rellena de queso Cabrales")
		(PVP 1.0)
		(Racion Normal))

	([ontologia_Class50012] of  Segundo

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class20014]
			[ontologia_Class30006])
		(Nombre "Hamburguesa")
		(PVP 1.0)
		(Racion Normal))

	([ontologia_Class50013] of  Segundo

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Tradicional)
		(Ingredientes
			[ontologia_Class41]
			[ontologia_Class10032]
			[ontologia_Class52]
			[ontologia_Class10010]
			[ontologia_Class35]
			[ontologia_Class22]
			[ontologia_Class50014])
		(Nombre "Pato a la naranja")
		(PVP 14.0)
		(Racion Normal))

	([ontologia_Class50014] of  Carne

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pato")
		(PVP 1.5))

	([ontologia_Class50018] of  Derivado

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Huevo")
		(PVP 0.5))

	([ontologia_Class50022] of  Primero

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class20014]
			[ontologia_Class30006])
		(Nombre "Hamburgesa")
		(PVP 1.0)
		(Racion Normal))

	([ontologia_Class50023] of  Primero

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
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

		(AptoCena FALSE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class10012]
			[ontologia_Class20002]
			[ontologia_Class35]
			[ontologia_Class20008]
			[ontologia_Class30014]
			[ontologia_Class38]
			[ontologia_Class70078])
		(Nombre "Pizza de Carne")
		(PVP 7.75)
		(Racion Normal))

	([ontologia_Class52] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Azucar")
		(PVP 0.12))

	([ontologia_Class54] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Vainilla")
		(PVP 0.8))

	([ontologia_Class55] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Canela")
		(PVP 0.6))

	([ontologia_Class56] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Zumo de limon")
		(PVP 0.2))

	([ontologia_Class57] of  Bebida

		(Nombre "Agua")
		(PVP 0.0))

	([ontologia_Class58] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class52]
			[ontologia_Class59]
			[ontologia_Class60]
			[ontologia_Class44]
			[ontologia_Class43]
			[ontologia_Class54]
			[ontologia_Class70074])
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
		(PVP 0.2))

	([ontologia_Class60] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Mermelada de fresa")
		(PVP 0.7))

	([ontologia_Class60001] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Caldo de pollo")
		(PVP 1.2))

	([ontologia_Class60002] of  Primero

		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class15]
			[ontologia_Class60003]
			[ontologia_Class70005]
			[ontologia_Class20]
			[ontologia_Class70008]
			[ontologia_Class20002]
			[ontologia_Class70006]
			[ontologia_Class70007])
		(Nombre "Crema de coliflor con gambones y piñones al aroma de trufa")
		(PVP 3.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class60003] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Coliflor")
		(PVP 0.51))

	([ontologia_Class60005] of  Tinto

		(Nombre "Cathar Roble Ribera del Duero")
		(PVP 9.0))

	([ontologia_Class60006] of  Tinto

		(Nombre "Vina Alberdi Tinto Crianza")
		(PVP 11.9))

	([ontologia_Class60007] of  Tinto

		(Nombre "Vina Real Cuvee Especial Reserva")
		(PVP 15.0))

	([ontologia_Class60008] of  Tinto

		(Nombre "Baron de Ley")
		(PVP 18.25))

	([ontologia_Class60009] of  Blanco

		(Nombre "Pluvium")
		(PVP 1.35))

	([ontologia_Class60010] of  Blanco

		(Nombre "Castelo de Rueda")
		(PVP 4.76))

	([ontologia_Class60011] of  Blanco

		(Nombre "Montespina Sauvignon")
		(PVP 5.0))

	([ontologia_Class60012] of  Blanco

		(Nombre "Pilas Bonas")
		(PVP 6.25))

	([ontologia_Class60013] of  Blanco

		(Nombre "Condes de Albarei Albarino")
		(PVP 8.2))

	([ontologia_Class60014] of  Blanco

		(Nombre "Naia")
		(PVP 9.4))

	([ontologia_Class60015] of  Blanco

		(Nombre "Dominio de Tares, Cepas Viejas")
		(PVP 12.95))

	([ontologia_Class60016] of  Blanco

		(Nombre "Vina Godeval")
		(PVP 14.5))

	([ontologia_Class60017] of  Blanco

		(Nombre "Abadia Retuerta Seleccion Especial")
		(PVP 18.9))

	([ontologia_Class60018] of  Cava

		(Nombre "Rene Barbier Petillan")
		(PVP 2.2))

	([ontologia_Class60019] of  Cava

		(Nombre "Mas Fontallada Brut Nature")
		(PVP 4.25))

	([ontologia_Class60020] of  Cava

		(Nombre "Alberte Ribeiro")
		(PVP 5.6))

	([ontologia_Class60021] of  Cava

		(Nombre "Peralada Brut Reserva")
		(PVP 6.29))

	([ontologia_Class60022] of  Cava

		(Nombre "Anna Codorniu Brut Nature")
		(PVP 8.0))

	([ontologia_Class60023] of  Cava

		(Nombre "Babel")
		(PVP 9.0))

	([ontologia_Class60024] of  Cava

		(Nombre "Conde de Haro")
		(PVP 12.0))

	([ontologia_Class60025] of  Cava

		(Nombre "Cuvee Maria del Mar Gran Reserva")
		(PVP 15.0))

	([ontologia_Class60026] of  Cava

		(Nombre "Gramona Imperial")
		(PVP 18.0))

	([ontologia_Class60027] of  Bebida

		(Nombre "Refresco")
		(PVP 0.8))

	([ontologia_Class60028] of  Bebida

		(Nombre "Cerveza")
		(PVP 1.2))

	([ontologia_Class70001] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Cordero")
		(PVP 7.2))

	([ontologia_Class70005] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Trufa")
		(PVP 4.5))

	([ontologia_Class70006] of  Frutos_secos

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pinones")
		(PVP 0.4))

	([ontologia_Class70007] of  Marisco

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Gambones")
		(PVP 4.5))

	([ontologia_Class70008] of  Condimento

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Caldo de ave")
		(PVP 1.2))

	([ontologia_Class70010] of  Primero

		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class70012]
			[ontologia_Class70011]
			[ontologia_Class20]
			[ontologia_Class35]
			[ontologia_Class56]
			[ontologia_Class15]
			[ontologia_Class70013])
		(Nombre "Humus de garbanzos")
		(PVP 13.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class70011] of  Verdura

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Garbanzos")
		(PVP 0.62))

	([ontologia_Class70012] of  Cereal

		(Gluten TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Comino")
		(PVP 0.71))

	([ontologia_Class70013] of  Derivado

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Huevos de codorniz")
		(PVP 2.3))

	([ontologia_Class70014] of  Primero

		(Bebida_Menu [ontologia_Class57])
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class30015]
			[ontologia_Class35]
			[ontologia_Class15]
			[ontologia_Class70016]
			[ontologia_Class70015])
		(Nombre "Crema de pepino y yogur")
		(PVP 1.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class70015] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pepino")
		(PVP 0.23))

	([ontologia_Class70016] of  Condimento

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Hoja de menta")
		(PVP 0.1))

	([ontologia_Class70017] of  Primero

		(Bebida_Menu [ontologia_Class57])
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class70018]
			[ontologia_Class40]
			[ontologia_Class35]
			[ontologia_Class70019]
			[ontologia_Class70020]
			[ontologia_Class43])
		(Nombre "Crema fria de remolacha")
		(PVP 1.2)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class70018] of  Verdura

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Remolacha")
		(PVP 0.2))

	([ontologia_Class70019] of  Condimento

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Zumo de tomate")
		(PVP 0.65))

	([ontologia_Class70020] of  Verdura

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Apio")
		(PVP 0.1))

	([ontologia_Class70021] of  Marisco

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Bogavante")
		(PVP 9.5))

	([ontologia_Class70022] of  Primero

		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class70021]
			[ontologia_Class10031]
			[ontologia_Class30035]
			[ontologia_Class15]
			[ontologia_Class34]
			[ontologia_Class1])
		(Nombre "Ensalada de bogavante")
		(PVP 7.9)
		(Racion Normal))

	([ontologia_Class70024] of  Verdura

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Espinacas")
		(PVP 0.45))

	([ontologia_Class70025] of  Verdura

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Trompetas de la muerte")
		(PVP 1.75))

	([ontologia_Class70026] of  Verdura

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Perrechicos")
		(PVP 1.65))

	([ontologia_Class70028] of  Primero

		(Bebida_Menu [ontologia_Class57])
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class70011]
			[ontologia_Class70026]
			[ontologia_Class30032]
			[ontologia_Class70025]
			[ontologia_Class30029]
			[ontologia_Class22]
			[ontologia_Class20]
			[ontologia_Class20011]
			[ontologia_Class24]
			[ontologia_Class35]
			[ontologia_Class10026])
		(Nombre "Garbanzos con setas variadas")
		(PVP 6.75)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class70029] of  Primero

		(Bebida_Menu [ontologia_Class57])
		(Estilo Tradicional)
		(Ingredientes
			[ontologia_Class70030]
			[ontologia_Class70032]
			[ontologia_Class40005]
			[ontologia_Class70031]
			[ontologia_Class70034]
			[ontologia_Class70035]
			[ontologia_Class40012]
			[ontologia_Class70033]
			[ontologia_Class70036]
			[ontologia_Class30028]
			[ontologia_Class20])
		(Nombre "Cocido Montanes")
		(PVP 7.2)
		(Racion Normal))

	([ontologia_Class70030] of  Verdura

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Alubias blancas")
		(PVP 0.65))

	([ontologia_Class70031] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Costilla adobada de cerdo")
		(PVP 4.3))

	([ontologia_Class70032] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Carne de cerdo")
		(PVP 1.65))

	([ontologia_Class70033] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Oreja de cerdo")
		(PVP 3.6))

	([ontologia_Class70034] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Lonchas gordas de panceta")
		(PVP 1.25))

	([ontologia_Class70035] of  Carne

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Manitas de cerdo")
		(PVP 2.56))

	([ontologia_Class70036] of  Verdura

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Col")
		(PVP 0.25))

	([ontologia_Class70037] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Carrilleras de cerdo")
		(PVP 11.2))

	([ontologia_Class70038] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Vino tinto")
		(PVP 5.2))

	([ontologia_Class70039] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pimiento choricero")
		(PVP 0.56))

	([ontologia_Class70040] of  Segundo

		(Bebida_Menu [ontologia_Class57])
		(Estilo Tradicional)
		(Ingredientes
			[ontologia_Class70037]
			[ontologia_Class22]
			[ontologia_Class10020]
			[ontologia_Class26]
			[ontologia_Class20]
			[ontologia_Class60001]
			[ontologia_Class20011]
			[ontologia_Class70039]
			[ontologia_Class35]
			[ontologia_Class10026]
			[ontologia_Class70038])
		(Nombre "Carrilleras de cerdo guisadas")
		(PVP 2.85)
		(Racion Normal))

	([ontologia_Class70041] of  Segundo

		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class70042]
			[ontologia_Class70047]
			[ontologia_Class70045]
			[ontologia_Class35]
			[ontologia_Class30008]
			[ontologia_Class70043]
			[ontologia_Class70048]
			[ontologia_Class52])
		(Nombre "Sushi de buey de mar con gildasbuew")
		(PVP 6.5)
		(Racion Normal))

	([ontologia_Class70042] of  Pescado

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Buey de mar")
		(PVP 12.35))

	([ontologia_Class70043] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Vinagre de arroz")
		(PVP 0.95))

	([ontologia_Class70045] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Algas nori")
		(PVP 1.25))

	([ontologia_Class70047] of  Pescado

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Gildas")
		(PVP 4.25))

	([ontologia_Class70048] of  Cereal

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Arroz de sushi")
		(PVP 2.5))

	([ontologia_Class70049] of  Marisco

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Navajas")
		(PVP 17.8))

	([ontologia_Class70050] of  Segundo

		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class70049]
			[ontologia_Class20]
			[ontologia_Class40]
			[ontologia_Class56]
			[ontologia_Class15])
		(Nombre "Navajas a la plancha")
		(PVP 5.0)
		(Racion Normal))

	([ontologia_Class70051] of  Segundo

		(Bebida_Menu [ontologia_Class57])
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class22]
			[ontologia_Class70024]
			[ontologia_Class10027]
			[ontologia_Class30008]
			[ontologia_Class35])
		(Nombre "Risotto de espinacas")
		(PVP 1.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class70052] of  Marisco

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Cigalas")
		(PVP 14.6))

	([ontologia_Class70053] of  Segundo

		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class70052]
			[ontologia_Class22]
			[ontologia_Class70054]
			[ontologia_Class10005]
			[ontologia_Class70055]
			[ontologia_Class20])
		(Nombre "Rissoto de cigalas")
		(PVP 3.5)
		(Racion Normal))

	([ontologia_Class70054] of  Cereal

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Arroz sin gluten")
		(PVP 0.8))

	([ontologia_Class70055] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Perejil")
		(PVP 0.1))

	([ontologia_Class70056] of  Condimento

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Fume de pesacdo")
		(PVP 3.45))

	([ontologia_Class70057] of  Segundo

		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class70058]
			[ontologia_Class35]
			[ontologia_Class70059])
		(Nombre "Paletilla de cordero lechal macerada en Salsa Teriyaki")
		(PVP 3.0)
		(Racion Normal))

	([ontologia_Class70058] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Paletilla de lechal")
		(PVP 8.5))

	([ontologia_Class70059] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Salsa teriyaki")
		(PVP 2.7))

	([ontologia_Class70061] of  Cereal

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Espaguetis")
		(PVP 2.3))

	([ontologia_Class70062] of  Segundo

		(Bebida_Menu [ontologia_Class57])
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class20]
			[ontologia_Class60001]
			[ontologia_Class10010]
			[ontologia_Class35]
			[ontologia_Class20010]
			[ontologia_Class50018]
			[ontologia_Class22]
			[ontologia_Class10005]
			[ontologia_Class38]
			[ontologia_Class70063])
		(Nombre "Pollo en pepitoria")
		(PVP 2.7)
		(Racion Normal))

	([ontologia_Class70063] of  Frutos_secos

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Almendras")
		(PVP 0.4))

	([ontologia_Class70064] of  Postre

		(Bebida_Menu [ontologia_Class57])
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class20003]
			[ontologia_Class30017]
			[ontologia_Class70067]
			[ontologia_Class40003]
			[ontologia_Class70065]
			[ontologia_Class70068]
			[ontologia_Class70066])
		(Nombre "Macedonia de frutas con zumo de mango")
		(PVP 0.9)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class70065] of  Fruta

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Melocoton")
		(PVP 0.7))

	([ontologia_Class70066] of  Fruta

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Platano")
		(PVP 1.1))

	([ontologia_Class70067] of  Fruta

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Mango")
		(PVP 1.1))

	([ontologia_Class70068] of  Fruta

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pera")
		(PVP 0.5))

	([ontologia_Class70069] of  Postre

		(Bebida_Menu [ontologia_Class57])
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class30022]
			[ontologia_Class50]
			[ontologia_Class50018]
			[ontologia_Class52]
			[ontologia_Class70066]
			[ontologia_Class60])
		(Nombre "Mousse de chocolate con Platano y mermelada de frutos rojos")
		(PVP 1.2)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class70070] of  Derivado

		(Gluten FALSE)
		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Queso mascarpone")
		(PVP 1.2))

	([ontologia_Class70071] of  Postre

		(Bebida_Menu [ontologia_Class57])
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class50018]
			[ontologia_Class70070]
			[ontologia_Class70072]
			[ontologia_Class50]
			[ontologia_Class52])
		(Nombre "Flan de queso mascarpone")
		(PVP 2.3)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class70072] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Leche condensada")
		(PVP 0.25))

	([ontologia_Class70073] of  Postre

		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class70074]
			[ontologia_Class70075]
			[ontologia_Class30008]
			[ontologia_Class52]
			[ontologia_Class70079]
			[ontologia_Class70077]
			[ontologia_Class70080]
			[ontologia_Class70076]
			[ontologia_Class70081]
			[ontologia_Class10032]
			[ontologia_Class70078]
			[ontologia_Class50018]
			[ontologia_Class35]
			[ontologia_Class3])
		(Nombre "Pastel Gales")
		(PVP 4.75)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class70074] of  Grasas

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Mantequilla sin gluten")
		(PVP 0.7))

	([ontologia_Class70075] of  Fruta

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Uva")
		(PVP 1.2))

	([ontologia_Class70076] of  Condimento

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Ron")
		(PVP 1.3))

	([ontologia_Class70077] of  Condimento

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Cafe soluble")
		(PVP 0.4))

	([ontologia_Class70078] of  Cereal

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Harina sin gluten")
		(PVP 0.8))

	([ontologia_Class70079] of  Condimento

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Bicarbonato de sodio")
		(PVP 0.75))

	([ontologia_Class70080] of  Condimento

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Especias para pastel")
		(PVP 0.9))

	([ontologia_Class70081] of  Fruta

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Frutas desecadas")
		(PVP 2.56))

	([ontologia_Class70084] of  Postre

		(Bebida_Menu [ontologia_Class57])
		(Estilo Tradicional)
		(Ingredientes
			[ontologia_Class52]
			[ontologia_Class30020]
			[ontologia_Class50018]
			[ontologia_Class54]
			[ontologia_Class70070]
			[ontologia_Class10016]
			[ontologia_Class70063]
			[ontologia_Class70086]
			[ontologia_Class70085])
		(Nombre "Tarta Mont Blanc")
		(PVP 3.5)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class70085] of  Frutos_secos

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Castanas")
		(PVP 1.4))

	([ontologia_Class70086] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Crema de leche")
		(PVP 1.1))

	([ontologia_Class70087] of  Postre

		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class52]
			[ontologia_Class30020]
			[ontologia_Class70089]
			[ontologia_Class56]
			[ontologia_Class50018]
			[ontologia_Class70090]
			[ontologia_Class70092]
			[ontologia_Class70091]
			[ontologia_Class70078]
			[ontologia_Class10009]
			[ontologia_Class70074])
		(Nombre "Sablee de Cardamomo, Crema Limon e interior de Yogur y Chocolate Blanco")
		(PVP 2.5)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class70089] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Gelatina")
		(PVP 1.2))

	([ontologia_Class70090] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Yogur griego")
		(PVP 1.3))

	([ontologia_Class70091] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Vainas de cardomomo")
		(PVP 1.1))

	([ontologia_Class70092] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Cremor tartaro")
		(PVP 2.5))

	([ontologia_Class70093] of  Postre

		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class70095]
			[ontologia_Class70094]
			[ontologia_Class70096]
			[ontologia_Class20003])
		(Nombre "Stilt Fisherman Indulgence")
		(PVP 5.6)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class70094] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Crema irlandesa")
		(PVP 2.3))

	([ontologia_Class70095] of  Cereal

		(Gluten TRUE)
		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pan de oro")
		(PVP 3.1))

	([ontologia_Class70096] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Salsa de champapana")
		(PVP 5.3))

	([ontologia_Class70097] of  Postre

		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class70074]
			[ontologia_Class30021]
			[ontologia_Class70098])
		(Nombre "Macarons Haute Couture")
		(PVP 6.7)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class70098] of  Grasas

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Merengue")
		(PVP 1.2))
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
	(slot vino (type SYMBOL) (allowed-values FALSE TRUE UNDEF) (default UNDEF)) ;;;nuevo
	(slot numComensalesVino (type FLOAT) (default -1.0)) ;;;nuevo
	(slot ninos (type SYMBOL) (allowed-values FALSE TRUE UNDEF) (default UNDEF)) ;;;nuevo
	(slot numComensalesNinos (type INTEGER) (default -1));;; nuevo
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
	(slot Categoria (type SYMBOL) (allowed-values Bajo Medio Alto) (create-accessor read-write))
	(slot SubCategoria (type SYMBOL) (allowed-values Bajo Medio Alto) (create-accessor read-write))
	(slot Puntuacion (type INTEGER) (create-accessor read-write) (default 0))
)

(defclass PlatoAbstracto (is-a USER) (role concrete)
	(slot Precio (type FLOAT) (create-accessor read-write) (default 0.0))
	(slot Categoria (type SYMBOL) (allowed-values Bajo Medio Alto) (create-accessor read-write))
	(slot SubCategoria (type SYMBOL) (allowed-values Bajo Medio Alto) (create-accessor read-write))
	(slot Puntuacion (type INTEGER) (create-accessor read-write) (default 0))
	(slot Complejidad (type SYMBOL) (allowed-values Bajo Medio Alto) (create-accessor read-write))
	(slot Plato (type INSTANCE) (create-accessor read-write))
	(multislot Puntos (type INTEGER) (create-accessor read-write))
)

;                   ======================================================================
;                   =================   Declaracion de handler DEUG   ===================
;                   ======================================================================



(defmessage-handler MAIN::Vino imprimir-vino ()
    (printout t "------------------- Recomendacion vino ----------------" crlf)
    (bind ?nombre (send ?self get-Nombre))
    (printout t "Nombre: " ?nombre crlf)
    (bind ?precio (send ?self get-PVP))
    (printout t "Precio: " ?precio crlf)
)

(defmessage-handler MAIN::PlatoAbstracto imprimir-debug ()
	(printout t "------------------- Informacion del plato  ----------------" crlf)
	(bind ?plato ?self:Plato)
	(send ?plato imprimir)
	(printout t "Precio: " ?self:Precio crlf)
	(printout t "Categoria: " ?self:Categoria crlf)
	(printout t "Sub-Categoria: " ?self:SubCategoria crlf)
	(printout t "Puntuacion: " ?self:Puntuacion crlf)
	(printout t "Complejidad: " ?self:Complejidad crlf)
)

(defmessage-handler MAIN::MenuAbstracto imprimir-debug ()
	(printout t "------------------- Informacion del Menu  ----------------" crlf)
	(bind ?menu ?self:Menu)
	(send ?menu imprimir)
	(printout t "Precio: " ?self:Precio crlf)
	(printout t "Categoria: " ?self:Categoria crlf)
	(printout t "Sub-Categoria: " ?self:SubCategoria crlf)
	(printout t "Puntuacion: " ?self:Puntuacion crlf)
)
(defmessage-handler MAIN::Ingrediente imprimir-debug ()
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



;                   ======================================================================
;                   ====================   Declaracion de handler   ======================
;                   ======================================================================



;                   ======================================================================
;                   ====================   Handler PlatoAbstracto   ======================
;                   ======================================================================

(defmessage-handler MAIN::PlatoAbstracto calcula-sub-categoria "Handler que calcula la sub-categoria dado dos parametros" (?precioMedio ?precioAlto)
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
    (if (eq ?presupuesto Bajo)
        then (if (eq ?self:Categoria Bajo)
            then (bind ?puntos 2)
            else (if (eq ?self:Categoria Medio)
                    then (bind ?puntos 1)
            )
        )
        else (if (eq ?presupuesto Medio)
            then (if (eq ?self:Categoria Medio)
                then (bind ?puntos 2)
                else (if (eq ?self:Categoria Bajo)
                    then (bind ?puntos 1)
                )
            )
            else (if (eq ?presupuesto Alto)
                then (if (eq ?self:Categoria Medio)
                    then (bind ?puntos 1)
                    else (if (eq ?self:Categoria Alto)
                        then (bind ?puntos 2)
                    )
                )
                else (if (eq ?self:Categoria Alto)
                    then (bind ?puntos 3)
                    else (if (eq ?self:Categoria Medio)
                        then (bind ?puntos 1)
                    )
                )
            )
        )
    )

    (send ?self put-Puntuacion (+ ?puntos (send ?self get-Puntuacion)))
    ;(slot-insert$ ?self Puntos 0 ?puntos)
)

(defmessage-handler MAIN::PlatoAbstracto calcula-puntuacion-estilo "" (?estilo)
	(if (eq ?estilo (send ?self:Plato get-Estilo))
		then (send ?self put-Puntuacion (+ 1 (send ?self get-Puntuacion)))
	)
)

(defmessage-handler MAIN::PlatoAbstracto calcula-puntuacion-complejidad "" (?numComensales)
    (bind ?puntos 0)
    (if (eq ?numComensales Medio)
        then (if (eq ?self:Complejidad Medio)
            then (bind ?puntos 2)
            else (if (eq ?self:Complejidad Bajo)
                    then (bind ?puntos 1)
            )
        )
        else (if (eq ?numComensales Alto)
            then (if (eq ?self:Complejidad Bajo)
                then (bind ?puntos 2)
                else (if (eq ?self:Complejidad Medio)
                    then (bind ?puntos 1)
                )
            )
            else (if (eq ?numComensales MuyAlto)
                then (if (eq ?self:Complejidad Bajo)
                    then (bind ?puntos 3)
                    else (if (eq ?self:Complejidad Medio)
                        then (bind ?puntos 1)
                    )
                )
            )
        )
    )

    (send ?self put-Puntuacion (+ ?puntos (send ?self get-Puntuacion)))
    ;(slot-insert$ ?self Puntos 1 ?puntos)
)

(defmessage-handler MAIN::PlatoAbstracto calcula-puntuacion-temporada "" (?temporada)
	(bind ?plato (send ?self get-Plato))

	(bind ?puntuacion 0)
	(bind ?ingredientesTemporales 0)
	(bind ?ingredientesTemporalesOk 0)

	;(send ?plato imprimir-debug)

	(bind $?listaIngredientes (send ?plato get-Ingredientes))
	(bind ?lenLista (length$ ?listaIngredientes))
	(loop-for-count (?i 1 ?lenLista) do
			(bind ?ingrediente (nth$ ?i ?listaIngredientes))

	;		(send ?ingrediente imprimir-debug)

			(if (send ?ingrediente es-ingrediente-temporal)
					then
						(bind ?ingredientesTemporales (+ 1 ?ingredientesTemporales))
						(if (send ?ingrediente es-ingrediente-temporada ?temporada)
							then
								(bind ?ingredientesTemporalesOk (+ 1 ?ingredientesTemporalesOk))

	;							(printout t "Ok ^^" crlf)
						)
			)
	)

	;(format t "Ingtemp: %d, IngOk: %d" ?ingredientesTemporales ?ingredientesTemporalesOk)
	;(printout t crlf)
	;(printout t "-------" crlf)

	(if (= ?ingredientesTemporalesOk ?ingredientesTemporales)
			then (bind ?puntuacion 4)
			else (if (>= ?ingredientesTemporalesOk (* 0.75 ?ingredientesTemporales))
					then (bind ?puntuacion 3)
					else (if (>= ?ingredientesTemporalesOk (* 0.50 ?ingredientesTemporales))
							then (bind ?puntuacion 2)
							else (if (>= ?ingredientesTemporalesOk (* 0.25 ?ingredientesTemporales))
									then (bind ?puntuacion 1)
							)
					)
			)
	)

	(if (and (eq ?temporada Otono) (eq (send ?plato get-Caliente) TRUE))
			then (bind ?puntuacion (+ 1 ?puntuacion))
	)
	(if (and (eq ?temporada Invierno) (eq (send ?plato get-Caliente) TRUE))
			then (bind ?puntuacion (+ 2 ?puntuacion))
	)
	(if (and (eq ?temporada Primavera) (eq (send ?plato get-Caliente) FALSE))
			then (bind ?puntuacion (+ 1 ?puntuacion))
	)
	(if (and (eq ?temporada Verano) (eq (send ?plato get-Caliente) FALSE))
		 then (bind ?puntuacion (+ 2 ?puntuacion))
	)

	(send ?self put-Puntuacion (+ ?puntuacion (send ?self get-Puntuacion)))
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
;                   ========================     Handler Bebida    =======================
;                   ======================================================================

(defmessage-handler MAIN::Bebida imprimir "Handler que imprime por la salida estandard la informacion basica de un vino" ()
	(printout t "Nombre      : " ?self:Nombre crlf)
	(printout t "Precio      :" ?self:PVP crlf)
)


;                   ======================================================================
;                   =====================     Handler Ingrediente     ====================
;                   ======================================================================

(defmessage-handler MAIN::Ingrediente imprimir "Handler que imprime el nombre del ingrediente" ()
	(printout t ?self:Nombre)
)
(defmessage-handler MAIN::Ingrediente es-ingrediente-temporal "" ()
	(if (or (not (eq ?self:Mes_Inicio_Temporada 1)) (not (eq ?self:Mes_Final_Temporada 12)))
		then TRUE
		else FALSE
	)
)
;Sandia inicio:5, final:9
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

(defmessage-handler MAIN::MenuAbstracto generar-menu (?tipoCategoria ?categoria)
	(bind ?indiceMaxPrimero 0)
	(bind ?indiceMaxSegundo 0)
	(bind ?indiceMaxPostre 0)


	(bind ?listaPlatosAbstractos (find-all-instances ((?inst PlatoAbstracto)) TRUE))
	(loop-for-count (?i 1 (length$ ?listaPlatosAbstractos)) do
		(bind ?platoAbstracto (nth$ ?i ?listaPlatosAbstractos))
		;(send ?platoAbstracto imprimir-debug)
		(bind ?plato (send ?platoAbstracto get-Plato))
		(bind ?tipoPlato (class (instance-address * ?plato)))


		;Peta si no hay un plato de una subcategoria dada
		;por lo cual tenemos que asegurarnos que haya almenos uno en la ontologia
		(if (and(eq (send ?platoAbstracto get-SubCategoria) ?tipoCategoria)
				(eq (send ?platoAbstracto get-Categoria) ?categoria))
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
	(send ?self put-Categoria ?categoria)
	(send ?self put-SubCategoria ?tipoCategoria)
	(send ?self put-Puntuacion
		(+ (send (nth$ ?indiceMaxPrimero ?listaPlatosAbstractos) get-Puntuacion)
		(+ (send (nth$ ?indiceMaxSegundo ?listaPlatosAbstractos) get-Puntuacion)
		(send (nth$ ?indiceMaxPostre ?listaPlatosAbstractos) get-Puntuacion))))
)

;                   ======================================================================
;                   ===================      Handler Bebida Concreto    ==================
;                   ======================================================================

;;;nuevo
(defmessage-handler MAIN::Vino vino-categoria-correcta (?vino ?categoria)
	(bind ?precio (send ?vino get-PVP))
	(bind ?correcto FALSE)
	(if (and(eq ?categoria Bajo)(> ?precio 0)(< ?precio 6))
		then (bind ?correcto TRUE)
		else(if (and(eq ?categoria Medio)(>= ?precio 6)(< ?precio 10))
            then (bind ?correcto TRUE)
            else(if (and(eq ?categoria Alto)(>= ?precio 10)(< ?precio 20))
                then (bind ?correcto TRUE))
		)
    )
	?correcto
)

(defmessage-handler MAIN::Vino vino-subcategoria-correcta (?categoria ?subcategoria)
	(bind ?precio (send ?self get-PVP))
	(bind ?correcto FALSE)
	(if(eq ?categoria Bajo)
		then(if (and(eq ?subcategoria Bajo)(< ?precio 3))
			then (bind ?correcto TRUE)
            else (if (and (eq ?subcategoria Medio)(>= ?precio 3)(< ?precio 5))
                then (bind ?correcto TRUE)
                else (if (and(eq ?subcategoria Alto)(>= ?precio 5)(< ?precio 6))
                    then(bind ?correcto TRUE)
                )
                    
            )
		)
		else (if(eq ?categoria Medio)
            then(if (and(eq ?subcategoria Bajo)(>= ?precio 6)(< ?precio 7))
                then (bind ?correcto TRUE)
                else (if (and (eq ?subcategoria Medio)(>= ?precio 7)(< ?precio 9))
                    then (bind ?correcto TRUE)
                    else (if (and(eq ?subcategoria Alto)(>= ?precio 9)(< ?precio 10))
                            then(bind ?correcto TRUE)
                        
                    )
                )
                
            )
            else (if(eq ?categoria Alto)
                then(if (and(eq ?subcategoria Bajo)(>= ?precio 10)(< ?precio 13))
                    then (bind ?correcto TRUE)
                    else (if (and (eq ?subcategoria Medio)(>= ?precio 13)(< ?precio 16))
                        then(bind ?correcto TRUE)
                        else(if (and(eq ?subcategoria Alto)(>= ?precio 16)(< ?precio 20))
                            then(bind ?correcto TRUE)
                        )
                    )
                    
                )
            )
        )
	)
	?correcto
)

(defmessage-handler MAIN::Vino generar-vino (?tipoVino ?categoria ?subcategoria)
	(bind ?listaVinos (find-all-instances ((?inst Vino)) TRUE))
	(bind ?candidato (nth$ 1 ?listaVinos))
	(loop-for-count (?i 1 (length$ ?listaVinos)) do
		(bind ?vino (nth$ ?i ?listaVinos))
		(bind ?tipo (class (instance-address * ?vino)))

		(bind ?correcto FALSE)
		(if (eq ?tipo ?tipoVino) 
			then 
            (bind ?correcto (send ?vino vino-categoria-correcta ?vino ?categoria))
            (if (eq ?correcto TRUE) 
                then 
                    (bind ?correcto (send ?vino vino-subcategoria-correcta ?categoria ?subcategoria))
                    (if (eq ?correcto TRUE) 
                        then 
                        (bind ?candidato ?vino)
                    )
            )
		)
	)
	(printout t "---------------------" crlf)
	(send ?candidato imprimir-vino)
	(printout t "---------------------" crlf)
	?candidato
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

;;;nuevo
(defmessage-handler MAIN::Menu EncontrarIngredientePrincipal (?segundo)
	(bind $?listaIngredientes (send ?segundo get-Ingredientes))
	(loop-for-count (?i 1 (length$ $?listaIngredientes)) do
		(bind ?ingrediente (nth$ ?i $?listaIngredientes))
		(bind ?tipoIngrediente(class (instance-address * ?ingrediente)))
		(if (eq ?tipoIngrediente Carne)
			then(bind ?ingredientePrincipal Carne)
			else (if (or (eq ?tipoIngrediente Marisco)(eq ?tipoIngrediente Pescado))
				then(bind ?ingredientePrincipal Pescado)
				else(bind ?ingredientePrincipal Vegetal)
			)
		)
	)
	?ingredientePrincipal
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
  ;(format t "pregunta general: %s" ?respuesta)
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
    (if (eq ?respuesta t)
        then (modify ?e (estilo Tradicional))
        else (if (eq ?respuesta s)
            then (modify ?e (estilo Sibarita))
            else (if (eq ?respuesta c)
                then (modify ?e (estilo Clasico))
                else (modify ?e (estilo Moderno))
            )
        )
    )
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
    (bind ?presupuesto (pregunta-numerica-min "¿Cual el presupuesto del menu por persona?" 10))
    (modify ?e (presupuestoMax ?presupuesto))
)

;;;nuevo
(defrule recopilacion::pregunta-ninos "Pregunta si acurian menores al evento"
		?e <- (Entrada (ninos ?ninos))
		(test (eq ?ninos UNDEF))
		(Entrada (tipoEvento ?tipoEvento))
    (test (not (eq ?tipoEvento Congreso)))
		(Entrada (numComensalesNinos ?numComensalesNinos))
		=>
		(if (pregunta-binaria "¿Acudiran menores al evento?")
        then (modify ?e (ninos TRUE))
        else (modify ?e (ninos FALSE))
    )
)
;;,nuevo
(defrule recopilacion::ninos "Pone ninos a 0"
		?e <- (Entrada (ninos ?ninos))
		(test (eq ?ninos UNDEF))
		(Entrada (tipoEvento ?tipoEvento))
    (test (eq ?tipoEvento Congreso))
		=>
		(modify ?e (ninos FALSE))
)
;;;nuevo
(defrule recopilacion::numComensalesNinos "Pone numComensalesNinos a 0"
		?e <- (Entrada (numComensalesNinos ?comensalesNinos))
		(test (eq ?comensalesNinos -1))
		(Entrada (ninos ?ninos))
		(test (eq ?ninos FALSE))
		=>
		(modify ?e (numComensalesNinos 0))
)

;;;nuevo
(defrule recopilacion::pregunta-comensales-ninos "Pregunta al cliente cuantos menores acudiran"
    ?e <- (Entrada (numComensalesNinos ?comensalesNinos))
    (test (eq ?comensalesNinos -1))
		(Entrada (ninos ?ninos))
		(test (eq ?ninos TRUE))
		(Entrada (numComensales ?numComensales))
    =>
		(bind ?num (pregunta-numerica-rango "¿Cuantos?" 1 (- ?numComensales 2)))
		(modify ?e (numComensalesNinos ?num))
)
;;;nuevo
(defrule recopilacion::pregunta-vino "Pregunta si se quiere incluir vino en el menu"
		?e <- (Entrada (vino ?vino))
		(test (eq ?vino UNDEF))
		=>
		(if (pregunta-binaria "¿Se quiere incluir vino en el menu?")
        then (modify ?e (vino TRUE))
        else (modify ?e (vino FALSE))
    )

)
;;;nuevo
(defrule recopilacion::pregunta-comensales-vino "Pregunta al cliente cuantos van a beber vino"
    ?e <- (Entrada (numComensalesVino ?comensalesVino))
		(Entrada (numComensales ?numComensales))
		(Entrada (numComensalesNinos ?numComensalesNinos))
		(Entrada (vino ?vino))
    (test (eq ?comensalesVino -1.0))
		(test (eq ?vino TRUE))
    =>
    (bind ?respuesta (pregunta-general "¿Cuantos beberan vino? (A)lgunos (M)itad (Ma)yoria (T)odos" a m ma t))
		(if (eq ?respuesta a) ;;;25%
				then (modify ?e (numComensalesVino (* 0.25 (- ?numComensales ?numComensalesNinos))))
				else (if (eq ?respuesta m);;;50%
						then (modify ?e (numComensalesVino (* 0.5 (- ?numComensales ?numComensalesNinos))))
						else (if (eq ?respuesta ma) ;;;75%
								then (modify ?e (numComensalesVino (* 0.75 (- ?numComensales ?numComensalesNinos))))
								else (modify ?e (numComensalesVino (- ?numComensales ?numComensalesNinos))) ;;;100%
						)
				)
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

		(Entrada (vino ?vino))
    (test (not (eq ?vino UNDEF)))

		(Entrada (numComensales ?numComensalesVino))
    (test (>= ?numComensalesVino 0))

    (Entrada (ninos ?ninos))
    (test (not (eq ?ninos UNDEF)))

		(Entrada (numComensales ?numComensalesNinos))
    (test (>= ?numComensalesNinos 0))

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

;(defrule abstraccion::imprimir
	;(not (ProblemaAbstracto))
	;(Entrada (numComensalesVino ?numComensalesVino))
	;=>
	;(printout t "num comensales vino " ?numComensalesVino crlf)
;)
(defrule abstraccion::abstraer-presupuesto "Regla que nos permite abstraer del presupuesto propuesto por el usuario a unos valores abstractos"
    (not (ProblemaAbstracto))
    (Entrada (presupuestoMax ?presupuestoMax))
    =>
    (if  (< ?presupuestoMax 25)
        then (assert (ProblemaAbstracto (presupuesto Bajo)))
        else (if (< ?presupuestoMax 49)
            then (assert (ProblemaAbstracto (presupuesto Medio)))
            else (if (< ?presupuestoMax 81)
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
    (if (< ?numComensales 30)
        then (modify ?e (numComensales Bajo))
        else (if (< ?numComensales 50)
            then (modify ?e (numComensales Medio))
            else (if (< ?numComensales 100)
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

;(defrule abstraccion::abstraer-complejidad "Regla que nos permite abstraer el estilo propuesto por el usuario a unos valores abstractos"
;   ?e <- (ProblemaAbstracto (complejidad ?dificultad))
;   (test (eq ?dificultad UNDEF))
;    (Entrada (estilo ?estilo))
;    ?plato <-(object(is-a Plato))
;    =>
;    (if (or (eq ?estilo Tradicional) (eq ?estilo Sibarita))
;        then (modify ?e (complejidad Facil))
;        else (if (eq ?estilo Clasico)
;            then (modify ?e (complejidad Normal))
;            else (modify ?e (complejidad Alto))
;        )
;    )
;)

(defrule abstraccion::abstraccion-completada "Regla que comprueba que todas las preguntas han sido respondidas"
    (ProblemaAbstracto (presupuesto ?presupuesto))
    (test (not (eq ?presupuesto UNDEF)))

    (ProblemaAbstracto (numComensales ?numComensales))
    (test (not (eq ?numComensales UNDEF)))

    (ProblemaAbstracto (temporada ?temporada))
    (test (not (eq ?temporada UNDEF)))


;    (ProblemaAbstracto (complejidad ?complejidad))
;    (test (not (eq ?complejidad UNDEF)))
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
	(Entrada (estilo ?estilo))
	=>
	(bind ?listaPlatosAbstractos (find-all-instances ((?inst PlatoAbstracto)) TRUE))
	(loop-for-count (?i 1 (length$ ?listaPlatosAbstractos)) do
		(bind ?platoAbstracto (nth$ ?i ?listaPlatosAbstractos))
		(send ?platoAbstracto calcula-puntuacion-presupuesto ?presupuesto)
		(send ?platoAbstracto calcula-puntuacion-complejidad ?numComensales)
		(send ?platoAbstracto calcula-puntuacion-temporada ?temporada)
		(send ?platoAbstracto calcula-puntuacion-estilo ?estilo)
	)
	(focus solucionConcreta)
)

;                   ======================================================================
;                   ===================   Modulo de solucion concreta   ==================
;                   ======================================================================

;;;nuevo
;(defrule solucionConcreta::generar-bebida "Añade la bebida agua por defecto"
	;(not (BebidaConcreto))
	;(Entrada (vino ?vino))
	;(test (eq ?vino TRUE))
	;=>
	;(assert (BebidaConcreto))
;)

;;;nuevo
(defrule  solucionConcreta::generar-vino-bajo "genera el vino para el menu bajo"
	(Entrada (vino ?vino))
	(test (eq ?vino TRUE))
	(not (generarVinoBajo))
	(final)
	=>
	(bind ?menu (send (instance-address * [menuAbstractoBarato]) get-Menu))
	(bind ?categoria (send (instance-address * [menuAbstractoBarato]) get-Categoria))
	(bind ?segundo (send (instance-address * ?menu) get-Relacion_Menu_Segundo))
	(bind ?ingredientePrincipal (send (instance-address * ?menu) EncontrarIngredientePrincipal ?segundo))
	(if (eq ?ingredientePrincipal Carne)
		then(bind ?tipoVino Tinto)
		else(bind ?tipoVino Blanco)
	)
	(bind ?vinoBajo (make-instance vinoMenuBajo of Vino))
	;;
	(bind ?candidato (send ?vinoBajo generar-vino ?tipoVino ?categoria Bajo))
	(printout t "---------------------" crlf)
	(send ?candidato imprimir-vino)
	(printout t "---------------------" crlf)
	(bind ?nombre (send ?candidato get-Nombre))
	(send ?vinoBajo put-Nombre ?nombre)
	(bind ?precio (send ?candidato get-PVP))
	(send ?vinoBajo put-PVP ?precio)
	;;
	(assert (generarVinoBajo))
)

;;;nuevo
(defrule  solucionConcreta::generar-vino-medio "genera el vino para el menu medio"
	(Entrada (vino ?vino))
	(test (eq ?vino TRUE))
	(not (generarVinoMedio))
	(final)
	=>
	(bind ?menu (send (instance-address * [menuAbstractoMedio]) get-Menu))
	(bind ?categoria (send (instance-address * [menuAbstractoMedio]) get-Categoria))
	(bind ?segundo (send (instance-address * ?menu) get-Relacion_Menu_Segundo))
	(bind ?ingredientePrincipal (send (instance-address * ?menu) EncontrarIngredientePrincipal ?segundo))
	(if (eq ?ingredientePrincipal Carne)
		then(bind ?tipoVino Tinto)
		else(bind ?tipoVino Blanco)
	)
	(bind ?vinoMedio (make-instance vinoMenuMedio of Vino))
	(send ?vinoMedio generar-vino ?tipoVino ?categoria Medio)
	;;
	(bind ?candidato (send ?vinoMedio generar-vino ?tipoVino ?categoria Bajo))
	(bind ?nombre (send ?candidato get-Nombre))
	(send ?vinoMedio put-Nombre ?nombre)
	(bind ?precio (send ?candidato get-PVP))
	(send ?vinoMedio put-PVP ?precio)
	;;
	;(printout t "generar-vino-medio" crlf)
	;(send ?vinoMedio imprimir-vino)
	(assert (generarVinoMedio))
)

;;;nuevo
(defrule  solucionConcreta::generar-vino-alto "genera el vino para el menu alto"
	(Entrada (vino ?vino))
	(test (eq ?vino TRUE))
	(not (generarVinoAlto))
	(final)
	=>
	(bind ?menu (send (instance-address * [menuAbstractoAlto]) get-Menu))
	(bind ?categoria (send (instance-address * [menuAbstractoAlto]) get-Categoria))
	(bind ?segundo (send (instance-address * ?menu) get-Relacion_Menu_Segundo))
	(bind ?ingredientePrincipal (send (instance-address * ?menu) EncontrarIngredientePrincipal ?segundo))
	(if (eq ?ingredientePrincipal Carne)
		then(bind ?tipoVino Tinto)
		else(bind ?tipoVino Blanco)
	)
	(bind ?vinoAlto (make-instance vinoMenuAlto of Vino))
	(send ?vinoAlto generar-vino ?tipoVino ?categoria Alto)
	;;
	(bind ?candidato (send ?vinoAlto generar-vino ?tipoVino ?categoria Bajo))
	(bind ?nombre (send ?candidato get-Nombre))
	(send ?vinoAlto put-Nombre ?nombre)
	(bind ?precio (send ?candidato get-PVP))
	(send ?vinoAlto put-PVP ?precio)
	;;
	;(printout t "generar-vino-alto" crlf)
	;(send ?vinoAlto imprimir-vino)
	(assert (generarVinoAlto))
)

(defrule solucionConcreta::generar-menu-bajo ""
	(ProblemaAbstracto (presupuesto ?categoria))
	(not (generarMenuBajo))
	=>
	(bind ?menuAbstracto (make-instance menuAbstractoBarato of MenuAbstracto))
	(if (eq ?categoria MuyAlto) then
		(bind ?categoria Alto))
	(send ?menuAbstracto generar-menu Bajo ?categoria)
	(assert (generarMenuBajo))
)

(defrule solucionConcreta::generar-menu-medio ""
	(ProblemaAbstracto (presupuesto ?categoria))
	(not (generarMenuMedio))
	=>
	(bind ?menuAbstracto (make-instance menuAbstractoMedio of MenuAbstracto))
	(if (eq ?categoria MuyAlto) then
		(bind ?categoria Alto))
	(send ?menuAbstracto generar-menu Medio ?categoria)
	(assert (generarMenuMedio))
)

(defrule solucionConcreta::generar-menu-alto ""
	(ProblemaAbstracto (presupuesto ?categoria))
	(not (generarMenuAlto))
	=>
	(bind ?menuAbstracto (make-instance menuAbstractoAlto of MenuAbstracto))
	(if (eq ?categoria MuyAlto) then
		(bind ?categoria Alto))
	(send ?menuAbstracto generar-menu Alto ?categoria)
	(assert (generarMenuAlto))
)

(defrule solucionConcreta::imprimirVinos
	(Entrada (vino ?vino))
	(test (eq ?vino TRUE))
	(generarVinoBajo)
	(generarVinoMedio)
	(generarVinoAlto)
	(not (vinosImprimidos))
	=>
	;vino bajo
	(send (instance-address * [vinoMenuBajo]) imprimir-vino)

	;vino medio
	(send (instance-address * [vinoMenuMedio]) imprimir-vino)

	;vino alto
	(send (instance-address * [vinoMenuAlto]) imprimir-vino)

	(assert (vinosImprimidos))
)

;(defrule  solucionConcreta::imprimirBebidasInfantiles
	;(Entrada (ninos ?ninos))
	;(test (eq ?ninos TRUE))
	;(not (ninos))
	;(generarMenuBajo)
	;(generarMenuMedio)
	;(generarMenuAlto)
	;=>
	;(printout t "Zumos, refrescos variados" crlf)
	;(assert (ninos))
;)

(defrule solucionConcreta::imprimirResultado
	(generarMenuBajo)
	(generarMenuMedio)
	(generarMenuAlto)

	(Entrada (numComensales ?numComensales))
	(not (final))
	=>
	(printout t "====================  Menu Barato ===================== " crlf)
	;(send (instance-address * [menuAbstractoBarato]) imprimir)
	(send (instance-address * [menuAbstractoBarato]) imprimir-debug)
	(bind ?precio (* ?numComensales (send (instance-address * [menuAbstractoBarato]) get-Precio)))
	(printout t "Precio total: " ?precio crlf)

	(printout t "====================  Menu Medio ===================== " crlf)
	;(send (instance-address * [menuAbstractoMedio]) imprimir)
	(send (instance-address * [menuAbstractoMedio]) imprimir-debug)
	(bind ?precio (* ?numComensales (send (instance-address * [menuAbstractoMedio]) get-Precio)))
	(printout t "Precio total: " ?precio crlf)

	(printout t "====================  Menu Alto ===================== " crlf)
	;(send (instance-address * [menuAbstractoAlto]) imprimir)
	(send (instance-address * [menuAbstractoAlto]) imprimir-debug)
	(bind ?precio (* ?numComensales (send (instance-address * [menuAbstractoAlto]) get-Precio)))
	(printout t "Precio total: " ?precio crlf)

	(assert (final))
)
