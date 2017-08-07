Public Class Jaula
    Private _nombre As String
    Private _loro As New Loro
    Private _cotorras As New List(Of Cotorra)
    Sub New()
        _nombre = ""
        _loro = New Loro
        _cotorras = New List(Of Cotorra)
    End Sub
    Public Property Nombre As String
        Get
            Return _nombre
        End Get
        Set(value As String)
            _nombre = value
        End Set
    End Property
    Public Overrides Function ToString() As String
        Return "Esta es La Jaula " + Nombre
    End Function
    Public Sub AddCotorra(cotorra As Cotorra)
        If _cotorras.Count < 3 Then
            _cotorras.Add(cotorra)
        Else
            Console.WriteLine("Se Lleno la jaula")
        End If
    End Sub
    Public Function getAllCotorras()
        Return _cotorras
    End Function
End Class
