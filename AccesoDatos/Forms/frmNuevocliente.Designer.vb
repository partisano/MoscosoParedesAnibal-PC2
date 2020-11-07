<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmNuevocliente
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
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.ChEstado = New System.Windows.Forms.CheckBox()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.Txtruc = New System.Windows.Forms.TextBox()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.CbTipo = New System.Windows.Forms.ComboBox()
        Me.RbFem = New System.Windows.Forms.RadioButton()
        Me.RbMas = New System.Windows.Forms.RadioButton()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.DTFecha = New System.Windows.Forms.DateTimePicker()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.TxtDNI = New System.Windows.Forms.TextBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.TxtNom = New System.Windows.Forms.TextBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.TxtApellido = New System.Windows.Forms.TextBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.CmdRegistrar = New System.Windows.Forms.Button()
        Me.CmdCerrar = New System.Windows.Forms.Button()
        Me.GroupBox1.SuspendLayout()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.BackgroundImage = Global.AccesoDatos.My.Resources.Resources.photo_1451920234221_fb740099cdab
        Me.GroupBox1.Controls.Add(Me.ChEstado)
        Me.GroupBox1.Controls.Add(Me.Label8)
        Me.GroupBox1.Controls.Add(Me.Txtruc)
        Me.GroupBox1.Controls.Add(Me.Label7)
        Me.GroupBox1.Controls.Add(Me.Label6)
        Me.GroupBox1.Controls.Add(Me.CbTipo)
        Me.GroupBox1.Controls.Add(Me.RbFem)
        Me.GroupBox1.Controls.Add(Me.RbMas)
        Me.GroupBox1.Controls.Add(Me.Label5)
        Me.GroupBox1.Controls.Add(Me.DTFecha)
        Me.GroupBox1.Controls.Add(Me.Label4)
        Me.GroupBox1.Controls.Add(Me.TxtDNI)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Controls.Add(Me.TxtNom)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.TxtApellido)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Location = New System.Drawing.Point(38, 0)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(387, 258)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        '
        'ChEstado
        '
        Me.ChEstado.AutoSize = True
        Me.ChEstado.Checked = True
        Me.ChEstado.CheckState = System.Windows.Forms.CheckState.Checked
        Me.ChEstado.Location = New System.Drawing.Point(123, 219)
        Me.ChEstado.Name = "ChEstado"
        Me.ChEstado.Size = New System.Drawing.Size(56, 17)
        Me.ChEstado.TabIndex = 8
        Me.ChEstado.Text = "Activo"
        Me.ChEstado.UseVisualStyleBackColor = True
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.BackColor = System.Drawing.Color.Transparent
        Me.Label8.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label8.Location = New System.Drawing.Point(37, 222)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(51, 15)
        Me.Label8.TabIndex = 32
        Me.Label8.Text = "Estado"
        '
        'Txtruc
        '
        Me.Txtruc.Location = New System.Drawing.Point(123, 179)
        Me.Txtruc.Name = "Txtruc"
        Me.Txtruc.Size = New System.Drawing.Size(130, 20)
        Me.Txtruc.TabIndex = 7
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.BackColor = System.Drawing.Color.Transparent
        Me.Label7.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label7.Location = New System.Drawing.Point(31, 179)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(36, 15)
        Me.Label7.TabIndex = 30
        Me.Label7.Text = "RUC"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.BackColor = System.Drawing.Color.Transparent
        Me.Label6.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label6.Location = New System.Drawing.Point(31, 153)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(84, 15)
        Me.Label6.TabIndex = 29
        Me.Label6.Text = "Tipo Cliente"
        '
        'CbTipo
        '
        Me.CbTipo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.CbTipo.FormattingEnabled = True
        Me.CbTipo.Location = New System.Drawing.Point(123, 152)
        Me.CbTipo.Name = "CbTipo"
        Me.CbTipo.Size = New System.Drawing.Size(150, 21)
        Me.CbTipo.TabIndex = 6
        '
        'RbFem
        '
        Me.RbFem.AutoSize = True
        Me.RbFem.Location = New System.Drawing.Point(222, 118)
        Me.RbFem.Name = "RbFem"
        Me.RbFem.Size = New System.Drawing.Size(31, 17)
        Me.RbFem.TabIndex = 5
        Me.RbFem.Text = "F"
        Me.RbFem.UseVisualStyleBackColor = True
        '
        'RbMas
        '
        Me.RbMas.AutoSize = True
        Me.RbMas.Checked = True
        Me.RbMas.Location = New System.Drawing.Point(112, 118)
        Me.RbMas.Name = "RbMas"
        Me.RbMas.Size = New System.Drawing.Size(34, 17)
        Me.RbMas.TabIndex = 4
        Me.RbMas.TabStop = True
        Me.RbMas.Text = "M"
        Me.RbMas.UseVisualStyleBackColor = True
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.BackColor = System.Drawing.Color.Transparent
        Me.Label5.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label5.Location = New System.Drawing.Point(29, 120)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(39, 15)
        Me.Label5.TabIndex = 25
        Me.Label5.Text = "Sexo"
        '
        'DTFecha
        '
        Me.DTFecha.Location = New System.Drawing.Point(179, 92)
        Me.DTFecha.Name = "DTFecha"
        Me.DTFecha.Size = New System.Drawing.Size(200, 20)
        Me.DTFecha.TabIndex = 3
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.BackColor = System.Drawing.Color.Transparent
        Me.Label4.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label4.Location = New System.Drawing.Point(30, 92)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(143, 15)
        Me.Label4.TabIndex = 23
        Me.Label4.Text = "Fecha de Nacimiento"
        '
        'TxtDNI
        '
        Me.TxtDNI.Location = New System.Drawing.Point(123, 66)
        Me.TxtDNI.Name = "TxtDNI"
        Me.TxtDNI.Size = New System.Drawing.Size(130, 20)
        Me.TxtDNI.TabIndex = 22
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.BackColor = System.Drawing.Color.Transparent
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.Location = New System.Drawing.Point(31, 66)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(39, 15)
        Me.Label3.TabIndex = 21
        Me.Label3.Text = "DNI :"
        '
        'TxtNom
        '
        Me.TxtNom.Location = New System.Drawing.Point(123, 40)
        Me.TxtNom.Name = "TxtNom"
        Me.TxtNom.Size = New System.Drawing.Size(233, 20)
        Me.TxtNom.TabIndex = 2
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.BackColor = System.Drawing.Color.Transparent
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(31, 40)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(65, 15)
        Me.Label2.TabIndex = 19
        Me.Label2.Text = "Nombres"
        '
        'TxtApellido
        '
        Me.TxtApellido.Location = New System.Drawing.Point(123, 19)
        Me.TxtApellido.Name = "TxtApellido"
        Me.TxtApellido.Size = New System.Drawing.Size(233, 20)
        Me.TxtApellido.TabIndex = 1
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.BackColor = System.Drawing.Color.Transparent
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(31, 19)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(66, 15)
        Me.Label1.TabIndex = 17
        Me.Label1.Text = "Apellidos"
        '
        'CmdRegistrar
        '
        Me.CmdRegistrar.Location = New System.Drawing.Point(243, 264)
        Me.CmdRegistrar.Name = "CmdRegistrar"
        Me.CmdRegistrar.Size = New System.Drawing.Size(75, 23)
        Me.CmdRegistrar.TabIndex = 1
        Me.CmdRegistrar.Text = "&Registrar"
        Me.CmdRegistrar.UseVisualStyleBackColor = True
        '
        'CmdCerrar
        '
        Me.CmdCerrar.Location = New System.Drawing.Point(342, 264)
        Me.CmdCerrar.Name = "CmdCerrar"
        Me.CmdCerrar.Size = New System.Drawing.Size(75, 23)
        Me.CmdCerrar.TabIndex = 2
        Me.CmdCerrar.Text = "Cancelar"
        Me.CmdCerrar.UseVisualStyleBackColor = True
        '
        'frmNuevocliente
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackgroundImage = Global.AccesoDatos.My.Resources.Resources.photo_1451920234221_fb740099cdab
        Me.ClientSize = New System.Drawing.Size(479, 304)
        Me.Controls.Add(Me.CmdCerrar)
        Me.Controls.Add(Me.CmdRegistrar)
        Me.Controls.Add(Me.GroupBox1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "frmNuevocliente"
        Me.RightToLeft = System.Windows.Forms.RightToLeft.No
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Registro de nuevo cliente"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents GroupBox1 As GroupBox
    Friend WithEvents ChEstado As CheckBox
    Friend WithEvents Label8 As Label
    Friend WithEvents Txtruc As TextBox
    Friend WithEvents Label7 As Label
    Friend WithEvents Label6 As Label
    Friend WithEvents CbTipo As ComboBox
    Friend WithEvents RbFem As RadioButton
    Friend WithEvents RbMas As RadioButton
    Friend WithEvents Label5 As Label
    Friend WithEvents DTFecha As DateTimePicker
    Friend WithEvents Label4 As Label
    Friend WithEvents TxtDNI As TextBox
    Friend WithEvents Label3 As Label
    Friend WithEvents TxtNom As TextBox
    Friend WithEvents Label2 As Label
    Friend WithEvents TxtApellido As TextBox
    Friend WithEvents Label1 As Label
    Friend WithEvents CmdRegistrar As Button
    Friend WithEvents CmdCerrar As Button
End Class
