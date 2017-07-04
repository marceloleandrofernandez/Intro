Imports Entidades
Module LoroTest

    Sub Main()
        Dim lodo As New Loro
        Dim cadena As String = ""
        lodo.Nombre = "Ramon"
        lodo.FechaNacimiento = #12/12/1990#
        Console.WriteLine("Nombre = {0}", lodo.Nombre)
        Console.WriteLine("Edad = {0}", lodo.Edad)


        lodo.Escuchar("Papita")
        lodo.Escuchar("pa el loro")
        lodo.Escuchar("Juan")

        cadena += lodo.Hablar()
        Console.WriteLine(cadena)
        cadena += lodo.Hablar()
        Console.WriteLine(cadena)
        cadena += lodo.Hablar()
        Console.WriteLine(cadena)
        cadena += lodo.Hablar()
        Console.WriteLine(cadena)

        Console.ReadKey()
    End Sub

End Module
