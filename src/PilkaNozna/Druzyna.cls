Class PilkaNozna.Druzyna Extends (%Persistent)
{
    Property NazwaDruzyny As %String(MAXLEN = 100);
    Property Kluby As list Of PilkaNozna.Klub; // Agregacja
    Property Pilkarze As list Of PilkaNozna.Pilkarz; // Agregacja

    Method DodajKlub(klub As PilkaNozna.Klub) As %Status
    {
        Set tSC = ..Kluby.Insert(klub)
        Quit tSC
    }

    Method DodajPilkarza(pilkarz As PilkaNozna.Pilkarz) As %Status
    {
        Set tSC = ..Pilkarze.Insert(pilkarz)
        Quit tSC
    }

    Method WyswietlSzczegoly() As %String
    {
        Set szczegoly = "Druzyna: "_..NazwaDruzyny_" | Kluby: "
        
        For i=1:1:..Kluby.Count()
        {
            Set klub = ..Kluby.GetAt(i)
            Set szczegoly = szczegoly_klub.NazwaKlubu_", "
        }

        Set szczegoly = szczegoly_" | Pilkarze: "
        
        For j=1:1:..Pilkarze.Count()
        {
            Set pilkarz = ..Pilkarze.GetAt(j)
            Set szczegoly = szczegoly_pilkarz.Imie_", "
        }

        Quit szczegoly
    }


}