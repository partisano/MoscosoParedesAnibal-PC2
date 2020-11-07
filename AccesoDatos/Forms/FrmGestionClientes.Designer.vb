<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FrmGestionClientes
    Inherits System.Windows.Forms.Form

    'Form reemplaza a Dispose para limpiar la lista de componentes.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Requerido por el Diseñador de Windows Forms
    Private components As System.ComponentModel.IContainer

    'NOTA: el Diseñador de Windows Forms necesita el siguiente procedimiento
    'Se puede modificar usando el Diseñador de Windows Forms.  
    'No lo modifique con el editor de código.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.DGVcliente = New System.Windows.Forms.DataGridView()
        Me.Textbuscar = New System.Windows.Forms.TextBox()
        Me.CmdBuscar = New System.Windows.Forms.Button()
        Me.CmdNew = New System.Windows.Forms.Button()
        Me.Button3 = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        CType(Me.DGVcliente, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'DGVcliente
        '
        Me.DGVcliente.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DGVcliente.Location = New System.Drawing.Point(12, 129)
        Me.DGVcliente.Name = "DGVcliente"
        Me.DGVcliente.Size = New System.Drawing.Size(622, 226)
        Me.DGVcliente.TabIndex = 0
        '
        'Textbuscar
        '
        Me.Textbuscar.Location = New System.Drawing.Point(69, 83)
        Me.Textbuscar.Name = "Textbuscar"
        Me.Textbuscar.Size = New System.Drawing.Size(307, 20)
        Me.Textbuscar.TabIndex = 1
        '
        'CmdBuscar
        '
        Me.CmdBuscar.Location = New System.Drawing.Point(468, 82)
        Me.CmdBuscar.Name = "CmdBuscar"
        Me.CmdBuscar.Size = New System.Drawing.Size(70, 20)
        Me.CmdBuscar.TabIndex = 2
        Me.CmdBuscar.Text = "Buscar"
        Me.CmdBuscar.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.CmdBuscar.UseVisualStyleBackColor = True
        '
        'CmdNew
        '
        Me.CmdNew.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.CmdNew.Location = New System.Drawing.Point(26, 381)
        Me.CmdNew.Name = "CmdNew"
        Me.CmdNew.Size = New System.Drawing.Size(85, 37)
        Me.CmdNew.TabIndex = 3
        Me.CmdNew.Text = "Nuevo &Cliente"
        Me.CmdNew.UseVisualStyleBackColor = True
        '
        'Button3
        '
        Me.Button3.Location = New System.Drawing.Point(143, 381)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(85, 36)
        Me.Button3.TabIndex = 4
        Me.Button3.Text = "Button3"
        Me.Button3.UseVisualStyleBackColor = True
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.BackColor = System.Drawing.Color.Transparent
        Me.Label1.Font = New System.Drawing.Font("Verdana", 15.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(138, 30)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(325, 25)
        Me.Label1.TabIndex = 7
        Me.Label1.Text = "Manejo de datos con CRUD"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(69, 64)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(49, 13)
        Me.Label2.TabIndex = 8
        Me.Label2.Text = "Apellidos"
        '
        'FrmGestionClientes
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackgroundImage = Global.AccesoDatos.My.Resources.Resources.photo_1451920234221_fb740099cdab
        Me.ClientSize = New System.Drawing.Size(717, 484)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.Button3)
        Me.Controls.Add(Me.CmdNew)
        Me.Controls.Add(Me.CmdBuscar)
        Me.Controls.Add(Me.Textbuscar)
        Me.Controls.Add(Me.DGVcliente)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "FrmGestionClientes"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        CType(Me.DGVcliente, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents DGVcliente As DataGridView
    Friend WithEvents Textbuscar As TextBox
    Friend WithEvents CmdBuscar As Button
    Friend WithEvents CmdNew As Button
    Friend WithEvents Button3 As Button
    Friend WithEvents Label1 As Label
    Friend WithEvents Label2 As Label
End Class
