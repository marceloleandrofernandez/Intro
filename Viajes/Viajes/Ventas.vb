Public Class Ventas
    Implements Cotizacion

    Private _fecha As Date
    Private Shared _cotizacionDolarPesos As Decimal
    Private _cliente As Cliente
    Private _pasajeros As List(Of Pasajero)
    Private _noches As Byte
    Private _precioDiaria As Decimal
    Public Property Cliente As Cliente
        Get
            Return _cliente
        End Get
        Set(value As Cliente)
            _cliente = value
        End Set
    End Property
    Public Property Fecha As Date
        Get
            Return _fecha
        End Get
        Set(value As Date)
            _fecha = value
        End Set
    End Property
    Public Shared Property CotizacionDolarPesos As Decimal
        Get
            Return _cotizacionDolarPesos
        End Get
        Set(value As Decimal)
            _cotizacionDolarPesos = value
        End Set
    End Property
    Public Sub AddPasajero(pasajero As IPasajero)
        _pasajeros.Add(pasajero)
    End Sub
    Public Sub RemovePasajero(pasajero As IPasajero)
        _pasajeros.Remove(pasajero)
    End Sub
    Public Function GetAllPasajero() As List(Of Pasajero)
        Return _pasajeros
    End Function
    Public ReadOnly Property PrecioDolar As Decimal Implements Cotizacion.PrecioDolar
        Get
            Return PrecioDolar
        End Get
    End Property

    Public ReadOnly Property PrecioPesos As Decimal Implements Cotizacion.PrecioPesos
        Get
            Return PrecioPesos
        End Get
    End Property
    Sub New(fecha As Date, cliente As Cliente)
        Me.Fecha = fecha
        Me.Cliente = cliente

    End Sub

End Class
