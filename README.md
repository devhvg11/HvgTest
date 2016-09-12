Feladat:
--------

Webapp ami github push esetén(hook), végigjárja az összes commitot amit tartalmaz a push. A commitokból kigyűjti a trello hivatkozások és a commit azonosítót(sha-1) és az aktuális branchet. Ezt az adatot letárolja nosql adatbázisba (az AppHarbor szolgáltatási használhatóak noSql-nek: CloudAnt(CouchDB), ElasticSearch, Mongo), hogy a későbbiekben lehessen keresni benne. Másik feladat még a letárolás után, hogy trelloba is az adott kártyához kommentként rögzítse be a git commit azonosítót és a commit message-et. A kereséshez elég annyit csinálni, hogy ha megkapja az sha-1 azonosítót akkor visszaadja, mely kártyák tartalmazzák ezt, ha a kártya azonosítót kapja pedig, az érintet sha-1 azonosítókat adja vissza. 

Felületet nem szükséges hozzá készíteni, elég ha GET-tel van hívva a keresés akkor json adattal tér vissza.

- Minta trello shorturl: `https://trello.com/c/YdyqHd3R`
- Trello komment szöveg: `$Új kommit:{{sha-1id}}({{branchname}})\n${{message}}`
- Git komment szöveg: `$TICKETID:{{trelloshorturl}} Valami komment`
- Keresés url:

`/search/card.json?sha1id={{sha-1id}}`
`/search/commit.json?trelloshorturl={{trelloshorturl}}`
  
Egyéb megjegyzés:
  8 óra alatt nem feltétlenül lehet teljesíteni, de fontos hogy meddig jutsz el és az elkészült milyen lett.
  
---

pre requirements:
-----------------

- felhasználó létrehozása trelloban.
- board létrehozása teszt feladatokkal
- git repo létrehozása(github)
- appharbor létrehozása