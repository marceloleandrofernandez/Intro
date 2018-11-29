Public Class Preceptor
    Inherits Persona
    Implements IEmpleados

    Private _sueldobase As Decimal

    Public Property SueldoBase As Decimal Implements IEmpleados.SueldoBase
        Get
            Return _sueldobase
        End Get
        Set(value As Decimal)
            _sueldobase = value
        End Set
    End Property
    Public Overrides Sub AddAsignatura(asignatura As Asignatura)

    End Sub

    Sub New(nombre As String, dni As UInteger, sueldobase As Decimal)
        MyBase.New(nombre, dni)
        Me.SueldoBase = sueldobase
    End Sub
    Public Overrides Function ToString() As String
        Return Nombre
    End Function

    Public Function CalcularSueldo() As Decimal Implements IEmpleados.CalcularSueldo
        Return SueldoBase * 2
    End Function
End Class
