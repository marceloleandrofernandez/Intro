Public Class Asignatura
    Private _nombre As String
    Private _horasSemanales As Byte
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
    Public Property HorasSemanales As Byte
        Get
            Return _horasSemanales
        End Get
        Set(value As Byte)
            _horasSemanales = value
        End Set
    End Property
    Public Overrides Function ToString() As String
        Return Nombre
    End Function
    Sub New(nombre As String, horassemanales As Byte)
        Me.Nombre = nombre
        Me.HorasSemanales = horassemanales
    End Sub
End Class
