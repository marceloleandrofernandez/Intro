Imports Escuela
Module Alumnostest
    Sub Main()
        Dim alu As New Alumno("Juuan", 31911244)
        Dim mate As New Asignatura("Prog1", 5)
        Dim mate2 As New Asignatura("Seminario", 6)

        alu.AddAsignatura(mate)
        alu.AddAsignatura(mate2)
        For Each item In alu.GetAllAsignaturas()
            Console.WriteLine(item.Nombre)
        Next

        Console.WriteLine("--------")
        alu.RemoveAsignatura(mate)

        For Each item In alu.GetAllAsignaturas()
            Console.WriteLine(item.Nombre)
        Next
        Console.ReadKey()

    End Sub
End Module
