Class PilkaNozna.Osoba Extends %Persistent [ Abstract ]
{
    Property Imie As %String(MAXLEN = 50);
    Property Wiek As %Integer;

    // Metoda abstrakcyjna
    Method PobierzSzczegoly() As %String [ Abstract ]
    {
        // Zwróć prostą wiadomość zawierającą imię i wiek osoby
        Quit "Imię: "_..Imie_" | Wiek: "_..Wiek
    }
}
