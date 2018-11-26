Public Class Paquete
    Implements Servicio
    Implements Cotizacion
    Private _fechaFinal As Date
    Private _numeroDias As UShort
    Private _numeroPasajeros As UShort
    Private _descripcion As String
    Private _fechainicial As Date
    Private _precio As Decimal
    Private _servicio As List(Of Servicio)


    Public Sub AddServicio(servicio As Servicio)
        _servicio.Add(servicio)
    End Sub
    Public Sub removeServicio(servicio As Servicio)
        _servicio.Remove(servicio)
    End Sub
    Public Function getAllServicios() As List(Of Servicio)
        Return _servicio
    End Function
    Public Property FechaFinal As Date
        Get
            Return _fechaFinal
        End Get
        Set(value As Date)
            _fechaFinal = value
        End Set
    End Property
    Public ReadOnly Property NumeroDias As UShort
        Get
            Return _numeroDias
        End Get
    End Property
    Public ReadOnly Property NumeroPasajeros As UShort
        Get
            Return _numeroPasajeros
        End Get
    End Property
    Public Property Descripcion As String Implements Servicio.Descripcion
        Get
            Return _descripcion
        End Get
        Set(value As String)
            _descripcion = value
        End Set
    End Property

    Public Property FechaInicial As Date Implements Servicio.FechaInicial
        Get
            Return _fechainicial
        End Get
        Set(value As Date)
            _fechainicial = value
        End Set
    End Property

    Public ReadOnly Property PrecioDolar As Decimal Implements Cotizacion.PrecioDolar
        Get
            Return _precio * 1.35
        End Get
    End Property

    Public ReadOnly Property PrecioPesos As Decimal Implements Cotizacion.PrecioPesos
        Get
            Return _precio
        End Get
    End Property
    Public Overrides Function ToString() As String
        Return Descripcion
    End Function

    Sub New(descripcion As String, fecha As Date, fechafinal As Date)
        Me.Descripcion = descripcion
        Me.FechaInicial = fecha
        Me.FechaFinal = fechafinal
        _servicio = New List(Of Servicio)
    End Sub
End Class
