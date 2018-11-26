Public Class Pasajero
    Inherits Entidad
    Implements IPasajero
    Private _dni As UInteger
    Private _pasaporte As UInteger
    Private _fechaNacimiento As Date

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
    Sub New(dni As UInteger, nombre As String, domicilio As String, fechaNacimiento As Date)
        MyBase.New(nombre, domicilio)
        Me.Dni = dni
        Me.FechaNacimiento = fechaNacimiento
    End Sub
    Sub New(dni As UInteger, nombre As String, domicilio As String, fechaNacimiento As Date, pasaporte As UInteger)
        MyBase.New(nombre, domicilio)
        Me.Dni = dni
        Me.FechaNacimiento = fechaNacimiento
        Me.Pasaporte = pasaporte
    End Sub
    Public Overrides Function ToString() As String
        Return MyBase.Nombre
    End Function
    Public Function isMayorEdad() As Boolean
        If DateDiff(DateInterval.Year, FechaNacimiento, Date.Now) < 18 Then
            Return False
        Else
            Return True
        End If
    End Function
End Class
