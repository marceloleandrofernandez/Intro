Imports Viajes
Module PasajeTest
    Sub Main()
        Dim oriyin As New Ciudad("Posadas")
        Dim destini As New Ciudad("Encarnaceaon")

        Dim pasajito = New Pasaje("Coso", Date.Now(), 178.35, 3, oriyin, destini)
        Console.WriteLine(pasajito.Descripcion)
        Console.WriteLine(pasajito.Origen)
        Console.WriteLine(pasajito.Destino)
        Console.WriteLine("Asientos {0}", pasajito.Asientos)
        Console.WriteLine(pasajito.FechaInicial)
        Console.WriteLine(pasajito.PrecioUnitario)
        Console.WriteLine("Precio dolar {0}", pasajito.PrecioDolar)
        Console.WriteLine("Precio Pesos {0}", pasajito.PrecioPesos)

        Console.WriteLine("To String de Pasaje {0}", pasajito.ToString)
        

        Console.ReadKey()
    End Sub
End Module
