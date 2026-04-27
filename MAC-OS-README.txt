DUK Integrator pe macOS
=========================

Acest folder a fost configurat pentru a rula pe macOS.

Lansare:
--------
Pentru a lansa programul, dati dublu-click pe fisierul:
    DUKIntegrator-mac.command

Daca sistemul va avertizeaza ca fisierul nu poate fi deschis deoarece provine de la un dezvoltator neidentificat:
1. Click dreapta pe `DUKIntegrator-mac.command`.
2. Alegeti "Open".
3. In dialogul care apare, apasati din nou pe "Open".

Cerinte:
--------
- Java (JRE) instalat. Daca nu este instalat, puteti descarca OpenJDK (ex. de la https://adoptium.net/).
- Programul a fost testat cu Java 17 si pare sa functioneze pentru validari de baza.

Semnatura Electronica (Smart Card):
-----------------------------------
Fisierele de configurare din folderul `config/` sunt pre-configurate pentru Windows. 
Daca doriti sa semnati declaratii pe Mac, va trebui sa editati fisierul `.cfg` corespunzator token-ului dumneavoastra (ex. `aladdin.cfg`, `safeNet.cfg`, etc.) si sa modificati calea catre libraria PKCS#11.

Exemplu pentru SafeNet (Aladdin):
Schimbati:
    library=C:\WINDOWS\system32\eTPKCS11.dll
In:
    library=/usr/local/lib/libeTPKCS11.dylib
(Calea exacta depinde de unde a fost instalat driverul token-ului pe Mac).

Nota: 
Acest kit include un folder `jre6/` care este specific pentru Windows si poate fi ignorat pe macOS.
