Public Class Cliente
    Inherits Entidad
    Private _cuit_cuil As String
    Private _ventas As List(Of Ventas)

    Public Property CuitCuil As String
        Get
            Return _cuit_cuil
        End Get
        Set(value As String)
            _cuit_cuil = value
        End Set
    End Property
    Sub New(cuit_cuil As String, nombre As String, domicilio As String)
        MyBase.New(nombre, domicilio)
        Me.CuitCuil = cuit_cuil
    End Sub
    Public Function getAllVentas() As List(Of Ventas)
        Return _ventas
    End Function
    Public Overrides Function ToString() As String
        Return CuitCuil
    End Function
End Class
