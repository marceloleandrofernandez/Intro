Imports Viajes
Module PasajeroTest
    Sub Main()
        Dim fechaNacimiento = New Date
        fechaNacimiento = "21/08/1985"
        Dim pasaj = New Pasajero(313131313, "Cacho", "Lavalle 123", fechaNacimiento, 123123123)
        Console.WriteLine(pasaj.isMayorEdad().ToString)
        Console.WriteLine(DateDiff(DateInterval.Year, fechaNacimiento, Date.Now, ))
        Console.ReadKey()
    End Sub
End Module
