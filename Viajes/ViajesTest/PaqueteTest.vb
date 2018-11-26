Imports Viajes
Module PaqueteTest
    Sub Main()
        Dim city = New Paquete("LePetitPaquet", Date.Now, Date.Now.AddDays(5))


        Console.WriteLine(city.NumeroDias)
        Console.WriteLine("To String de Paquete {0}", city.ToString)
        Console.WriteLine(city.PrecioPesos)
        Console.WriteLine(city.PrecioDolar)

        Console.WriteLine(city.getAllServicios)
        Console.WriteLine("To String de Paquete {0}", city.ToString)
        Console.WriteLine(city.FechaInicial)

        Console.ReadKey()
    End Sub
End Module
