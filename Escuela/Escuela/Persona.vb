Public MustInherit Class Persona
    Private _nombre As String
    Private _dni As UInteger
    Friend _asignaturas As List(Of Asignatura)

    Public Property Nombre As String
        Get
            Return _nombre
        End Get
        Set(value As String)
            If value.Length < 3 Or value.Length > 30 Then
                Throw New Exception("La Cadena debe Contener Al menos 3 Caracteres y no mas de 30 !")
            Else
                _nombre = value
            End If
        End Set
    End Property
    Public Property Dni As UInteger
        Get
            Return _dni
        End Get
        Set(value As UInteger)
            _dni = value
        End Set
    End Property

    ' METODOS 

    Public MustOverride Sub AddAsignatura(asignatura As Asignatura)

    Public Sub RemoveAsignatura(asignatura As Asignatura)
        _asignaturas.Remove(asignatura)
    End Sub
    Public Function GetAllAsignaturas() As List(Of Asignatura)
        Return _asignaturas
    End Function

    Public Overrides Function ToString() As String
        Return Nombre
    End Function
    Sub New(nombre As String, dni As UInteger)
        Me.Nombre = nombre
        Me.Dni = dni
        Me._asignaturas = New List(Of Asignatura)
    End Sub

End Class
