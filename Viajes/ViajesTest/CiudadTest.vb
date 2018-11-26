Imports Viajes
Module CiudadTest
    Sub Main()
        Dim city = New Ciudad("Posadas")

        Console.WriteLine(city.Nombre)
        Console.WriteLine(city.ToString)
        city.Nombre = "Candelaria"
        Console.WriteLine(city.Nombre)
        Console.WriteLine(city.ToString)

        Console.ReadKey()
    End Sub
End Module
