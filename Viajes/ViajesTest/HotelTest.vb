Imports Viajes
Module HotelTest

    Sub Main()
        Dim ciu = New Ciudad("Posadas")
        Dim hotel = New Hotel("Caacupeiros", Date.Now, ciu, 3, 345.99)

        Console.WriteLine(hotel.Descripcion)
        Console.WriteLine(hotel.Ciudad)
        Console.WriteLine(hotel.FechaInicial)
        Console.WriteLine(hotel.PrecioDiaria)
        Console.WriteLine(hotel.Habitaciones)
        Console.WriteLine(hotel.PrecioPesos)
        Console.WriteLine(hotel.PrecioDolar)
        Console.WriteLine("to String de hotel {0}", hotel.ToString)
        hotel.Descripcion = "hotel Caa Cupe"
        Dim ciu2 = New Ciudad("Encarnacion")
        hotel.Ciudad = ciu2
        hotel.FechaInicial = Date.Now().AddDays(15)
        hotel.Noches = 5
        hotel.PrecioDiaria = 755.25
        hotel.Habitaciones = 1
        Console.WriteLine(hotel.Descripcion)
        Console.WriteLine(hotel.Ciudad)
        Console.WriteLine(hotel.FechaInicial)
        Console.WriteLine(hotel.PrecioDiaria)
        Console.WriteLine(hotel.Habitaciones)
        Console.WriteLine(hotel.PrecioPesos)
        Console.WriteLine(hotel.PrecioDolar)
        Console.WriteLine("to String de hotel {0}", hotel.ToString)

        Console.ReadKey()
    End Sub

End Module
