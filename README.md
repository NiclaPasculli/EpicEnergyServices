# EpicEnergyServices
 Progetto Finale Epicode
 
 E' stato realizzato il backend di un sistema CRM per un'azienda fornitrice di energia, denominata "EPIC ENERGY SERVICES", per gestire i contatti con i propri clienti business.
Il sistema è basato su Web Service REST Spring Boot e database PostgreSQL, dove permette di gestire un elenco di clienti e le relative fatture, indirizzi,fornendo tutte le funzioni necessarie per gestire in modo completo(Aggiungere,modificare ed eliminare) i suddetti elementi. E' possibile ordinare o filtrare la ricerca dei clienti per diversi fattori(Fatturato annuale, data di inserimento , provincia della sede legale).Inoltre per gestire in modo efficiente un numero copiscuo di elementi, si può utilizzare la paginazione.
Prevede un sistema di autentificazione e autorizzazione basato su token JWT che permette a diversi utenti di accedere alle funzioni del backend e di registrarsi al sistema. Gli utenti possono essere di tipo USER, abilitato alle sole operazioni di lettura, oppure ADMIN, abilitato a tutte le operazioni. Un utente può avere più ruoli. 
Viene fornito un elenco dei comuni in formato CSV , che deve essere importato nel sistema per mezzo di una appositoa procedura Java da eseguire manualmente per popolare il db. Viene fornito inoltre un secondo file contenente la corrispondenza tra nome provincia e sigla ed anch'esso deve essere importato ed integrato con le informazioni relative ai comuni.
Contestualmente è stata realizzata una collection POSTMAN contenente tutte le chiamate alle API del servizio, comprese quelle di autenticazione e, implementati i principali test con JUnit.
Opzionale: 
 Realizzato un piccolo frontend per l'applicativo/api di backend, sfruttando le tecnologie di Thymeleaf. Realizzato un piccolo portalino con delle pagine che permettano l'accesso alle funzioni CRUD e di ricerca sulle entità Cliente, Fattura, Utente, Comune, Provincia.



Documentate le API con OpenApi e Swagger.

-------------------------------------------------
PER POPOLARE IL DB IN MODO CORRETTO

Per popolare in db in modo corretto occorre eseguire le seguenti chiamate nell' ordine indicato:

-Salvare indirizzo
-Salvare cliente
-Salvare Fattura

Alcuni esempi e immagini della funzionalità dell'app

SWAGGER:
Url: http://localhost:8080/swagger-ui.html
![Screenshot (158)](https://user-images.githubusercontent.com/98736298/159686252-7c9c68ae-20ab-444f-8e32-93ea8d3cbc14.png)


Collezione Postman 

![Screenshot (159)](https://user-images.githubusercontent.com/98736298/159686594-d7afa6b3-bd49-4c2b-866a-8c1b7211f3d9.png)

Frontend utilizzando le tecnologie di Thymeleaf e, per l'elenco di comuni e province ho utilizzato la paginazione di Bootstrap.
Url: http://localhost:8080 

![Screenshot (154)](https://user-images.githubusercontent.com/98736298/159687205-935e1d94-3001-49a1-9b74-652b863a7698.png)

Per inserire un nuovo cliente eseguendo il popolamento del db in modo corretto:

Inseriamo uno o più indirizzi:

![Screenshot (155)](https://user-images.githubusercontent.com/98736298/159687522-34ff7b84-ad56-4e08-a2bf-94e26a3f17ba.png)

Inseriamo un cliente :

![Screenshot (156)](https://user-images.githubusercontent.com/98736298/159687644-64d470d6-721c-48fd-8288-891381a01b66.png)

Infine inseriamo una fattura associando un cliente già presente nel DB:

![Screenshot (157)](https://user-images.githubusercontent.com/98736298/159687754-42b3c6dc-6d26-4866-b5b2-51eca3f75672.png)














 


