Public Class Loro
    Private _memoria As Queue(Of String)
    Private _fechaNacimiento As Date
    Private _nombre As String
    Sub New()
        _memoria = New Queue(Of String)
        _fechaNacimiento = #9/21/1985#
        _nombre = "Pepe"
    End Sub
    Public Property FechaNacimiento As Date
        Get
            Return _fechaNacimiento
        End Get
        Set(value As Date)
            _fechaNacimiento = value
        End Set
    End Property
    Public Property Nombre As String
        Get
            Return _nombre
        End Get
        Set(value As String)
            _nombre = value
        End Set
    End Property
    Public ReadOnly Property Edad As Short
        Get
            Return CalcularEdad()
        End Get
    End Property
    Private Function CalcularEdad() As Short
        Return DateDiff(DateInterval.Year, FechaNacimiento, DateTime.Now)
    End Function
    Public Sub Escuchar(frase As String)
        _memoria.Enqueue(frase)
    End Sub
    Public Overrides Function ToString() As String
        Return Nombre
    End Function
    Public Function Hablar() As String
        If _memoria.Count > 1 Then
            Return _memoria.Dequeue
        End If
        Return ""
    End Function
End Class
