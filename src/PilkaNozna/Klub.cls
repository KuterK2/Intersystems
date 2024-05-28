Class PilkaNozna.Klub Extends (%Persistent)
{
    Property NazwaKlubu As %String(MAXLEN = 100);
    Property Trener As PilkaNozna.Trener; // Kompozycja
    Property Pilkarze As list Of PilkaNozna.Pilkarz; // Agregacja

    Method DodajPilkarza(pilkarz As PilkaNozna.Pilkarz) As %Status
    {
        Set tSC = ..Pilkarze.Insert(pilkarz)
        Quit tSC
    }

    Method WyswietlSzczegoly() As %String
    {
        Set szczegoly = "Klub: "_..NazwaKlubu_" | Trener: "_..Trener.Imie
        Set szczegoly = szczegoly_" | Pilkarze: "

        For i=1:1:..Pilkarze.Count()
        {
            Set pilkarz = ..Pilkarze.GetAt(i)
            Set szczegoly = szczegoly_pilkarz.Imie_", "
        }

        Quit szczegoly
    }
}