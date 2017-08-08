Public Class Cotorra
    Inherits Loro
    Private _edadHumana As UShort
    Private _cont As Integer
    Sub New()
        MyBase.New()
        _cont = 1
    End Sub
    Public ReadOnly Property EdadHumana As UShort
        Get
            Return MyBase.Edad * 2
        End Get
    End Property
    Public Overrides Sub Escuchar(frase As String)
        If _cont Mod 2 <> 0 Then
            MyBase.Escuchar(frase)
        End If
        _cont += 1
    End Sub
End Class
