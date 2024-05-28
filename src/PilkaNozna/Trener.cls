Class PilkaNozna.Trener Extends PilkaNozna.Osoba
{

    Property Doswiadczenie As %String(MAXLEN = 50);

    Method WyswietlSzczegoly() As %String
    {
        Quit "Trener: "_..Imie_" | Doswiadczenie: "_..Doswiadczenie_" | Wiek: "_..Wiek
    }

    ClassMethod StworzTrenera(Imie As %String, Wiek As %Integer, Doswiadczenie As %String) As %Status
    {
        Set trener = ##class(PilkaNozna.Trener).%New()
        Set trener.Imie = Imie
        Set trener.Wiek = Wiek
        Set trener.Doswiadczenie = Doswiadczenie
        Quit trener.%Save()
    }

}