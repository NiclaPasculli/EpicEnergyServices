# EpicEnergyServices
 Progetto Finale Epicode
 
 E' stato realizzato il backend di un sistema CRM per un'azienda fornitrice di energia, denominata "EPIC ENERGY SERVICES", per gestire i contatti con i propri clienti business.
Il sistema è basato su Web Service REST Spring Boot e database PostgreSQL, dove permette di gestire un elenco di clienti e le relative fatture, indirizzi,fornendo tutte le funzioni necessarie per gestire in modo completo(Aggiungere,modificare ed eliminare) i suddetti elementi. E' possibile ordinare o filtrare la ricerca dei clienti per diversi fattori(Fatturato annuale, data di inserimento , provincia della sede legale).Inoltre per gestire in modo efficiente un numero copiscuo di elementi, si può utilizzare la paginazione.
Prevede un sistema di autentificazione e autorizzazione basato su token JWT che permette a diversi utenti di accedere alle funzioni del backend e di registrarsi al sistema. Gli utenti possono essere di tipo USER, abilitato alle sole operazioni di lettura, oppure ADMIN, abilitato a tutte le operazioni. Un utente può avere più ruoli. 
Viene fornito un elenco dei comuni in formato CSV , che deve essere importato nel sistema per mezzo di una appositoa procedura Java da eseguire manualmente per popolare il db. Viene fornito inoltre un secondo file contenente la corrispondenza tra nome provincia e sigla ed anch'esso deve essere importato ed integrato con le informazioni relative ai comuni.
Contestualmente è stata realizzata una collection POSTMAN contenente tutte le chiamate alle API del servizio, comprese quelle di autenticazione e, implementati i principali test con JUnit.
Opzionale: 
 Realizzato un piccolo frontend per l'applicativo/api di backend, sfruttando le tecnologie di Thymeleaf. Realizzate un piccolo portalino con delle pagine che permettano l'accesso alle funzioni CRUD e di ricerca sulle entità Cliente, Fattura, Utente, Comune, Provincia.

Utilizzato un servizio di hosting (Heroku) per il deploy dell'applicazione

Documentate le API con OpenApi e Swagger.

-------------------------------------------------
PER POPOLARE IL DB IN MODO CORRETTO

Per popolare in db in modo corretto occorre eseguire le seguenti chiamate nell' ordine indicato:

-Salvare indirizzo
-Salvare cliente
-Salvare Fattura



 


