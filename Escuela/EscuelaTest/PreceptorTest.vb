Imports Escuela
Module PreceptorTest
    Sub Main()
        Dim panBimbo As New Preceptor("PanBimbo", 22332211, 450.77)

        Console.WriteLine("Nombre: {0}", panBimbo.Nombre)
        Console.WriteLine("Nombre: {0}", panBimbo.Dni)
        Console.WriteLine("Nombre: {0}", panBimbo.SueldoBase)
        Console.WriteLine("Nombre: {0}", panBimbo.CalcularSueldo)
        Console.WriteLine("Nombre: {0}", panBimbo.ToString)
        Console.ReadKey()

    End Sub
End Module
