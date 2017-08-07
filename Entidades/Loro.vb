Public Class Loro
    Private _memoria As Queue(Of String)
    Private _fechaNacimiento As Date
    Private _nombre As String
    Private _frase As String
    Sub New()
        _memoria = New Queue(Of String)
        _fechaNacimiento = #8/21/1990#
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
    Public Overridable Sub Escuchar(frase As String)
        _memoria.Enqueue(frase)
    End Sub
    Public Overrides Function ToString() As String
        Return Nombre
    End Function
    Public Function Hablar() As String
        If _memoria.Count >= 1 Then
            _frase += _memoria.Dequeue & " "
        End If
        Return _frase
    End Function
End Class
