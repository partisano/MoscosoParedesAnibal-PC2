Public Class FrmGestionClientes
    Dim Cliente As New clsCliente

    Public Sub cargarDatos()
        Me.DGVcliente.DataSource = Cliente.listarClientes()
    End Sub
    Private Sub FrmGestionClientes_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        cargarDatos()
    End Sub

    Private Sub CmdNew_Click(sender As Object, e As EventArgs) Handles CmdNew.Click
        Dim formul As New frmNuevocliente
        formul.ShowDialog()
        cargarDatos()
    End Sub

    Private Sub Button5_Click(sender As Object, e As EventArgs) 
        Me.Close()
    End Sub

    Private Sub DGVcliente_CellContentClick(sender As Object, e As DataGridViewCellEventArgs) Handles DGVcliente.CellContentClick

    End Sub

    Private Sub CmdBuscar_Click(sender As Object, e As EventArgs) Handles CmdBuscar.Click
        If Me.Textbuscar.Text.Trim = String.Empty Then
            MsgBox("Ingrese apellidos a buscar")
            Exit Sub
        End If
        Dim clie As New clsCliente
        clie.Texto1 = Me.Textbuscar.Text
        Me.DGVcliente.DataSource = clie.BuscarClientes()
    End Sub
End Class
