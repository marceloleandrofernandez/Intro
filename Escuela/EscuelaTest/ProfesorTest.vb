Imports Escuela
Module ProfesorTest
    Sub Main()
        Dim mate As New Asignatura("Prog1", 5)
        Dim mate2 As New Asignatura("Seminario", 6)

        Dim profe As New Profesor("Fabio", 334455, 3456, 12.785)

       
        profe.AddAsignatura(mate)
        Console.WriteLine(mate.Nombre)
        Console.WriteLine(mate.HorasSemanales)
        Console.WriteLine(profe.GetAllAsignaturas().Count())
        ' For Each item In profe.GetAllAsignaturas()
        'Console.WriteLine(item.HorasSemanales)
        'Next

        profe.AddAsignatura(mate2)
        'For Each item In profe.GetAllAsignaturas()
        'Console.WriteLine(item.HorasSemanales)
        'Next
        Console.WriteLine(profe.CalcularTotalHoras)
        Colegio.MontoHora() = 177.75
        Console.WriteLine(profe.CalcularSueldo)
        Console.ReadKey()
    End Sub
End Module
