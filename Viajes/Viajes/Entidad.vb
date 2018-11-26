Public Class Entidad
    Private _nombre As String
    Private _domicilio As String

    Public Property Nombre As String
        Get
            Return _nombre
        End Get
        Set(value As String)
            _nombre = value
        End Set
    End Property
    Public Property Domicilio As String
        Get
            Return _domicilio
        End Get
        Set(value As String)
            _domicilio = value
        End Set
    End Property
    Public Overrides Function ToString() As String
        Return Nombre + Domicilio
    End Function
    Sub New(nombre As String, domicilio As String)
        Me.Nombre = nombre
        Me.Domicilio = domicilio
    End Sub
End Class
