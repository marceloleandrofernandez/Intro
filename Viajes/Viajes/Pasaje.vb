Public Class Pasaje
    Implements Cotizacion
    Implements Servicio
    Private _fecha As Date
    Private _descripcion As String
    Private _precioUnitario As Decimal
    Private _asientos As Byte
    Private _origen As Ciudad
    Private _destino As Ciudad

    Public Property Origen As Ciudad
        Get
            Return _origen
        End Get
        Set(value As Ciudad)
            _origen = value
        End Set
    End Property
    Public Property Destino As Ciudad
        Get
            Return _destino
        End Get
        Set(value As Ciudad)
            _destino = value
        End Set
    End Property
    Public Property PrecioUnitario As Decimal
        Get
            Return _precioUnitario
        End Get
        Set(value As Decimal)
            _precioUnitario = value
        End Set
    End Property
    Public Property Asientos As Byte
        Get
            Return _asientos
        End Get
        Set(value As Byte)
            _asientos = value
        End Set
    End Property

    Public ReadOnly Property PrecioDolar As Decimal Implements Cotizacion.PrecioDolar
        Get
            Return PrecioPesos * 1.36
        End Get
    End Property

    Public ReadOnly Property PrecioPesos As Decimal Implements Cotizacion.PrecioPesos
        Get
            Return PrecioUnitario * Asientos
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
            Return _fecha
        End Get
        Set(value As Date)
            _fecha = value
        End Set
    End Property
    Public Overrides Function ToString() As String
        Return Descripcion
    End Function
    Sub New(descipcion As String, fecha As Date, precio As Decimal, asientos As Byte, origen As Ciudad, destino As Ciudad)
        Me.Descripcion = descipcion
        Me.Asientos = asientos
        Me.PrecioUnitario = precio


        Me.FechaInicial = fecha
        Me.Origen = origen
        Me.Destino = destino
    End Sub
End Class
