Public Class Agencia

    Shared _ventas As List(Of Ventas)

    Shared Sub AddVenta(venta As Ventas)
        _ventas.Add(venta)
    End Sub
    Shared Sub RemoveVenta(venta As Ventas)
        _ventas.Remove(venta)
    End Sub
    Shared Function GetAllVentas() As List(Of Ventas)
        Return _ventas
    End Function
End Class
