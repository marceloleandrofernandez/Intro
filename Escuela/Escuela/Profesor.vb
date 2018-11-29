Public NotInheritable Class Profesor
    Inherits Persona
    Implements IEmpleados
    Private _legajo As UShort
    Private _sueldobase As Decimal
    Public Property Legajo As UShort
        Get
            Return _legajo
        End Get
        Set(value As UShort)
            _legajo = value
        End Set
    End Property
    Public Overrides Function ToString() As String
        Return Legajo
    End Function
    'CONSTRUCTOR
    Sub New(nombre As String, dni As UInteger, legajo As UShort, sueldobase As Decimal)
        MyBase.New(nombre, dni)
        Me.Legajo = legajo

    End Sub

    Public Overrides Sub AddAsignatura(asignatura As Asignatura)
        _asignaturas.Add(asignatura)
    End Sub
    Public Function CalcularSueldo() As Decimal Implements IEmpleados.CalcularSueldo
        Return SueldoBase + Colegio.MontoHora() * CalcularTotalHoras()
    End Function

    Public Function CalcularTotalHoras() As Decimal

        Dim totalHoras As Decimal
        For Each item In _asignaturas
            totalHoras += item.HorasSemanales
        Next
        Return totalHoras
    End Function

    Public Property SueldoBase As Decimal Implements IEmpleados.SueldoBase
        Get
            Return _sueldobase
        End Get
        Set(value As Decimal)
            _sueldobase = value
        End Set
    End Property
End Class
