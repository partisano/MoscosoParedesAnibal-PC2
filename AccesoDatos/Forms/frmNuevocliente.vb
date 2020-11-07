Public Class frmNuevocliente


    Private Sub CbTipo_SelectedIndexChanged(sender As Object, e As EventArgs) Handles CbTipo.SelectedIndexChanged

    End Sub

    Private Sub frmNuevocliente_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'CbTipo.Items.Add("Persona Natural")
        'CbTipo.Items.Add("Persona Juridica")
        CbTipo.Items.Insert(0, "Persona NAtural")
        CbTipo.Items.Insert(1, "Persona Juridica")
    End Sub


    Private Sub CmdRegistrar_Click(sender As Object, e As EventArgs) Handles CmdRegistrar.Click

        'validar todos los campos obligatorios
        If TxtApellido.Text.Trim = String.Empty Then
            MsgBox("Debe Ingresar apellido")
            Exit Sub

        End If
        If TxtNom.Text.Trim = String.Empty Then
            MsgBox("Debe Ingresar el nombre")
            Exit Sub
        End If
        Dim clie As New clsCliente

        With clie
            .Nombres1 = Me.TxtNom.Text
            .Apellidos1 = Me.TxtApellido.Text
            .Dni1 = Me.TxtDNI.Text
            .Fecha1 = Me.DTFecha.Value
            If Me.RbMas.Checked = True Then
                .Genero1 = 1
            Else
                .Genero1 = 0

            End If

            .Tipocliente1 = Me.CbTipo.SelectedValue
            .Ruc1 = Me.Txtruc.Text
            If Me.ChEstado.Checked = True Then .Estado1 = 1 Else .Estado1 = 0
        End With
        clie.registrarPersona()
        MsgBox("registrado ok")

    End Sub

    Private Sub CmdCerrar_Click(sender As Object, e As EventArgs) Handles CmdCerrar.Click
        Me.Close()
    End Sub

End Class