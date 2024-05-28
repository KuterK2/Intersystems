Class PilkaNozna.Stadion Extends %RegisteredObject
{
    Property NazwaStadionu As %String(MAXLEN = 100);
    Property Pojemnosc As %Integer;
    Property Lokalizacja As %String(MAXLEN = 100);
    Property Druzyny As list Of PilkaNozna.Druzyna; // Drużyny grające na stadionie

    Method DodajDruzyne(druzyna As PilkaNozna.Druzyna) As %Status
    {
        Set tSC = ..Druzyny.Insert(druzyna)
        Quit tSC
    }

    Method WyswietlSzczegoly() As %String
    {
        Set szczegoly = "Stadion: " _ ..NazwaStadionu _ " | Pojemność: " _ ..Pojemnosc _ " | Lokalizacja: " _ ..Lokalizacja
        Set szczegoly = szczegoly _ " | Drużyny grające: "

        For i=1:1:..Druzyny.Count()
        {
            Set druzyna = ..Druzyny.GetAt(i)
            Set szczegoly = szczegoly _ druzyna.NazwaDruzyny _ ", "
        }

        Quit szczegoly
    }

}