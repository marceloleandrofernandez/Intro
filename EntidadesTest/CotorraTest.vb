Imports Entidades
Module CotorraTest
    Sub main()
        Dim cotorra As New Cotorra
        Console.WriteLine("[*]-TEST CLASE COTORRA-[*]")
        Console.WriteLine("Nombre: {0}", cotorra.Nombre)
        Console.WriteLine("Edad: {0}", cotorra.Edad)
        Console.WriteLine("Fecha Naciemiento: {0}", cotorra.FechaNacimiento)
        Console.WriteLine("Tu Strin: {0}", cotorra.ToString)
        cotorra.FechaNacimiento = "22/5/1999"
        Console.WriteLine("Edad Humana: {0}", cotorra.EdadHumana)
        cotorra.Escuchar("escucha 1")
        cotorra.Escuchar("escucha 2")
        cotorra.Escuchar("escucha 3")
        cotorra.Escuchar("escucha 4")
        
        Console.WriteLine(cotorra.Hablar())
        Console.WriteLine(cotorra.Hablar())
        Console.WriteLine(cotorra.Hablar())
        Console.WriteLine(cotorra.Hablar())
        Console.ReadKey()

    End Sub
End Module
