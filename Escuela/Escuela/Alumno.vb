Public Class Alumno
    Inherits Persona
    Private _promedio As Decimal

    Public ReadOnly Property Promedio As Decimal
        Get
            Return _promedio
        End Get
    End Property
    Sub New(nombre As String, dni As UInteger)
        MyBase.New(nombre, dni)

    End Sub
    Public Overrides Function ToString() As String
        Return Nombre + Dni
    End Function
    Public Overrides Sub AddAsignatura(asignatura As Asignatura)
        _asignaturas.Add(asignatura)
    End Sub

End Class
