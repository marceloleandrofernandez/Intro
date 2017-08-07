Imports Entidades
Module JaulaTest
    Sub main()
        Console.WriteLine("[*]-TEST CLASE JAULA-[*]")
        Dim jaula As New Jaula
        Dim loro As New Loro
        Dim cot1 As New Cotorra
        Dim cot2 As New Cotorra
        Dim cot3 As New Cotorra
        Dim cot4 As New Cotorra
        jaula.Nombre = "Jau#7765"
        loro.Nombre = "Ramon"
        loro.FechaNacimiento = #12/12/1990#
        Console.WriteLine("Nombre = {0}", loro.Nombre)
        Console.WriteLine("Edad = {0}", loro.Edad)
        cot1.Nombre = "cot1"
        cot2.Nombre = "cot2"
        cot3.Nombre = "cot3"
        cot4.Nombre = "cot4"
        jaula.AddCotorra(cot2)
        jaula.AddCotorra(cot1)
        jaula.AddCotorra(cot3)
        jaula.AddCotorra(cot4)
        Console.WriteLine("Nombre de la Jaula: {0}", jaula.Nombre)

        For Each item In jaula.getAllCotorras
            Console.WriteLine("Cotorra {0}", item)
        Next

        Console.WriteLine("El tu strin dice: ({0})", jaula.ToString)
        Console.ReadKey()
    End Sub



End Module
