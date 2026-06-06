# Temat projektu

**GameHUB** to aplikacja internetowa służąca do przeglądania i kupowania gier komputerowych. Użytkownik może założyć konto, zalogować się, przeglądać katalog gier, kupować gry za monety oraz zarządzać swoją biblioteką. Administrator posiada panel zarządzania, w którym może dodawać, edytować i usuwać gry oraz zarządzać użytkownikami.

## Lista pytań pomocniczych

**Jaki problem rozwiązuje nasza aplikacja?**

Aplikacja pozwala w prosty sposób zarządzać cyfrowym katalogiem gier. Użytkownik nie musi pamiętać, które gry posiada, ponieważ wszystkie zakupione tytuły trafiają do jego biblioteki. System obsługuje również portfel z monetami, dzięki któremu można kupować gry i zwracać je po cenie zapisanej w momencie zakupu.

**Jeśli istnieją podobne rozwiązania, to czym nasza aplikacja się wyróżnia?**

GameHUB posiada prosty system zakupu gier za wirtualne monety oraz panel administratora do zarządzania bazą gier. Aplikacja zapamiętuje cenę zakupu, dlatego jeśli administrator później zmieni cenę gry, użytkownik przy zwrocie otrzyma dokładnie tyle monet, ile zapłacił wcześniej.

---

## Uruchomienie projektu (developer)

| Technologia | Zastosowanie | Oficjalna strona |
| :--- | :--- | :--- |
| **PHP** | Backend aplikacji | [php.net](https://www.php.net/) |
| **Laravel** | Główny framework projektu | [laravel.com](https://laravel.com/) |
| **PostgreSQL** | Baza danych | [postgresql.org](https://www.postgresql.org/) |
| **Blade** | Widoki HTML | [laravel.com/docs/blade](https://laravel.com/docs/blade) |
| **Tailwind CSS** | Stylowanie strony | [tailwindcss.com](https://tailwindcss.com/) |
| **Composer** | Zależności PHP | [getcomposer.org](https://getcomposer.org/) |
| **npm / Vite** | Obsługa plików frontendowych | [nodejs.org](https://nodejs.org/) / [vite.dev](https://vite.dev/) |

### Wymagania programowe

Do uruchomienia projektu potrzebne są:
* PHP,
* Composer,
* PostgreSQL,
* Node.js i npm,
* przeglądarka internetowa.

### Proces instalacji

Pobierz dostarczone archiwum z repozytorium `BN134953/aplikacje-internetowe.git` (`gamegub.7z`) i rozpakuj je w wybranym katalogu na swoim komputerze. Następnie otwórz terminal i przejdź do rozpakowanego folderu za pomocą komendy: `cd sciezka-do-rozpakowanego-folderu`

1. Otwórz terminal w katalogu projektu.
2. Przejdź do folderu aplikacji:

`cd biblioteka_gier`

3. Zainstaluj zależności PHP:

`composer install`

4. Zainstaluj zależności frontendowe:

`npm install`

### Proces konfiguracji

W pliku `.env` należy ustawić dane połączenia z bazą PostgreSQL, np.:

`DB_CONNECTION=pgsql`  
`DB_HOST=127.0.0.1`  
`DB_PORT=5432`  
`DB_DATABASE=biblioteka_gier`  
`DB_USERNAME=postgres`  
`DB_PASSWORD=admin`

Jeśli projekt nie ma jeszcze pliku `.env`, należy skopiować `.env.example` jako `.env` i wygenerować klucz aplikacji:

`php artisan key:generate`

Następnie należy uruchomić migracje:

`php artisan migrate`

### Uruchomienie projektu w terminalu

Aby uruchomić aplikację, wpisz:

`php artisan serve`

Aby uruchomić frontend, wpisz:

`npm run dev`

Po uruchomieniu aplikacja będzie dostępna pod adresem:

`http://127.0.0.1:8000`

---

## Uruchomienie projektu (user)

Użytkownik korzysta z aplikacji przez przeglądarkę internetową. Po wejściu na stronę główną widoczny jest katalog gier.

Aplikacja lokalnie działa pod adresem:

`http://127.0.0.1:8000`

Do działania aplikacji potrzebna jest przeglądarka internetowa oraz uruchomiony serwer Laravel i baza danych PostgreSQL.

---

## Podręcznik użytkownika

### Rejestracja

Na stronie głównej kliknij przycisk **ZAREJESTRUJ SIĘ**.  
Wypełnij formularz, podając nazwę użytkownika, adres e-mail oraz hasło.  
Po utworzeniu konta użytkownik zostanie przeniesiony do panelu głównego.

### Logowanie

Na stronie głównej kliknij **ZALOGUJ**.  
Wpisz adres e-mail i hasło.  
Po poprawnym logowaniu użytkownik trafia do swojego centrum gier.

Przykładowe konto użytkownika:

Login: `user1@gmail.com`  
Hasło: `zaq1@WSX`

### Katalog gier

Na stronie głównej widoczny jest katalog gier.  
Każda gra posiada tytuł, gatunek oraz cenę w monetach.  
Użytkownik niezalogowany może tylko przeglądać gry.  
Kupowanie wymaga zalogowania.

### Panel użytkownika

Po zalogowaniu użytkownik widzi panel z polecanymi grami.  
Polecane gry są losowane z bazy danych.  
Użytkownik może przejść do sklepu lub swojej biblioteki.

### Sklep

W sklepie użytkownik może wyszukiwać gry, filtrować je po gatunku oraz sortować według tytułu, ceny lub daty premiery.

### Portfel

Użytkownik posiada portfel z monetami.  
Monety można doładować w sklepie.  
Służą one do kupowania gier.

### Kupowanie gry

Przy grze dostępny jest przycisk **KUP**.  
Po kliknięciu system sprawdza, czy użytkownik ma wystarczającą liczbę monet.  
Jeśli tak, gra trafia do biblioteki użytkownika.

### Zwracanie gry

Jeśli użytkownik posiada grę, może ją zwrócić.  
System oddaje tyle monet, ile użytkownik zapłacił w momencie zakupu.  
Zmiana ceny gry przez administratora nie wpływa na wartość zwrotu.

---

## Strefa Administratora

Login: `admin@gamehub.pl`  
Hasło: `zaq1@WSX`

### Panel administratora

Administrator po zalogowaniu widzi panel zarządzania systemem.  
Może przejść do katalogu gier, dodać nową grę lub zarządzać użytkownikami.

### Zarządzanie grami

Administrator może dodawać, edytować i usuwać gry.  
Dla każdej gry można ustawić tytuł, opis, producenta, gatunek, datę premiery, cenę oraz link do okładki.

### Zarządzanie użytkownikami

Administrator może przeglądać listę użytkowników, edytować ich dane oraz usuwać konta.

---

## Wizualny opis interfejsu

Strona główna aplikacji posiada ciemny wygląd i pokazuje katalog gier w formie kart.  
Panel użytkownika wyświetla polecane gry losowane z bazy danych.  
Sklep zawiera wyszukiwarkę, filtrowanie i sortowanie.  
Panel administratora zawiera kafelki prowadzące do najważniejszych funkcji zarządzania.

---

## Plany rozbudowy

W przyszłości aplikację można rozbudować o:
* system ocen gier,
* szczegółową stronę pojedynczej gry,
* historię zakupów,
* koszyk,
* raport sprzedaży dla administratora,
* wgrywanie okładek jako plików,
* role użytkowników zapisane w bazie danych.
