Public Class ClientePasajero
    Inherits Cliente
    Implements IPasajero
    Private _dni As UInteger
    Private _fechaNacimiento As Date
    Private _pasaporte As UInteger

    Sub New(cuit_cuil As String, dni As UInteger, nombre As String, domicilio As String, fechaNacimiento As Date)
        MyBase.New(cuit_cuil, nombre, domicilio)
        Me.Dni = dni
        Me.FechaNacimiento = fechaNacimiento

    End Sub
    Sub New(cuit_cuil As String, dni As UInteger, nombre As String, domicilio As String, fechaNacimiento As Date, pasaporte As UInteger)
        MyBase.New(cuit_cuil, nombre, domicilio)
        Me.Dni = dni
        Me.FechaNacimiento = fechaNacimiento
        Me.Pasaporte = pasaporte
    End Sub

    Public Property Dni As UInteger Implements IPasajero.Dni
        Get
            Return _dni
        End Get
        Set(value As UInteger)
            _dni = value
        End Set
    End Property
    Public Property FechaNacimiento As Date Implements IPasajero.FechaNacimiento
        Get
            Return _fechaNacimiento
        End Get
        Set(value As Date)
            _fechaNacimiento = value
        End Set
    End Property
    Public Property Pasaporte As UInteger Implements IPasajero.Pasaporte
        Get
            Return _pasaporte
        End Get
        Set(value As UInteger)
            _pasaporte = value
        End Set
    End Property
    Public Overrides Function ToString() As String
        Return Nombre
    End Function
End Class
