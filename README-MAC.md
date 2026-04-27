# DUK Integrator - macOS Version

Aceasta este o versiune pre-configurata a DUK Integrator (distributia ANAF) optimizata pentru a rula nativ pe macOS.

## Versiuni Componente
- **DUK Integrator:** v1.4.18.3.3
- **D112 Validator:** J6.1.6
- **D112 PDF Generator:** P2.3.3
- **D230 Validator:** J8.0.0
- **D230 PDF Generator:** P7.0.0

## Pre-rechirite (Instalare obligatorie)
Pentru ca semnarea electronica sa functioneze pe macOS, trebuie sa aveti instalate urmatoarele:

1.  **Java 8 (JRE 1.8):**
    - Este versiunea recomandata pentru compatibilitate maxima cu token-urile de semnatura.
    - Puteti instala **Zulu OpenJDK 8** (recomandat pentru Mac-urile cu procesor M1/M2/M3) sau varianta de la Oracle/Adoptium.
2.  **Driverul Token-ului (SafeNet Authentication Client):**
    - Necesar pentru recunoasterea smart-card-ului.
    - Acesta instaleaza libraria PKCS#11 in `/usr/local/lib/libeTPkcs11.dylib`.

## Mod de Utilizare
In loc de fisierele `.bat` folosite pe Windows, utilizati noile scripturi de lansare:

*   **`DUKIntegrator-mac.command`**: Lanseaza interfata principala a programului.
*   **`Download-mac.command`**: Lanseaza utilitarul de actualizare a declaratiilor.

### Primul Pas (Securitate macOS)
La prima rulare, macOS ar putea sa blocheze aplicatia deoarece nu este semnata de un dezvoltator Apple:
1.  Dati **click dreapta** pe `DUKIntegrator-mac.command`.
2.  Selectati **Open**.
3.  In fereastra care apare, apasati din nou pe **Open**.

## Configurare Semnatura (Smart Card)
Programul este configurat sa caute driverul SafeNet in locatia standard de macOS. Daca folositi alt tip de token:
1.  Deschideti folderul `config/`.
2.  Editati fisierul `.cfg` corespunzator token-ului dumneavoastra.
3.  Modificati linia `library=` pentru a indica calea catre fisierul `.dylib` al driverului dumneavoastra.

## Note Tehnice
- Scripturile de lansare forteaza utilizarea Java 8 si configureaza mediul de lucru (PATH) pentru a evita erorile de tip "IllegalAccessException" sau "NoSuchMethodException" specifice versiunilor mai noi de Java.
- Folderul `jre6/` inclus in kit este specific pentru Windows si poate fi ignorat/sters pe macOS.
