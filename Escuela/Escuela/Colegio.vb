Public Class Colegio
    Public Shared _montoHora As Decimal
    Public Shared _personas As List(Of Persona)
    Public Shared _profesores As List(Of Profesor)

    Public Shared Sub AddPersona(personas As Persona)
        _personas.Add(personas)
    End Sub
    Public Shared Function getAllProfesores()
        Return _profesores
    End Function
    Public Shared Function getPersona(dni As UInteger)
        Return _personas.Find(Function(c) c.Dni = dni)
    End Function
    Public Shared Function getPersonas(nombre As String) As List(Of Persona)
        Return _personas.FindAll(Function(c) c.Nombre.Contains(nombre))
    End Function
    Public Shared Property MontoHora As Decimal
        Get
            Return _montoHora
        End Get
        Set(value As Decimal)
            _montoHora = value
        End Set
    End Property

End Class
'entidad abstracto porque esta en cursiva (anota todo lo que te voy apuntando) 