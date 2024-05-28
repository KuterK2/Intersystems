Class PilkaNozna.Pilkarz Extends PilkaNozna.Osoba
{
    Property Pozycja As %String(MAXLEN = 50);
    Property Gole As %Integer;

    Method WyswietlSzczegoly() As %String
    {
        Quit "Pilkarz: "_..Imie_" | Pozycja: "_..Pozycja_" | Wiek: "_..Wiek_" | Gole: "_..Gole
    }

    ClassMethod StworzPilkarza(Imie As %String, Wiek As %Integer, Pozycja As %String, Gole As %Integer) As %Status
    {
        Set pilkarz = ##class(PilkaNozna.Pilkarz).%New()
        Set pilkarz.Imie = Imie
        Set pilkarz.Wiek = Wiek
        Set pilkarz.Pozycja = Pozycja
        Set pilkarz.Gole = Gole
        Quit pilkarz.%Save()
    }

}