Imports System.Data.SqlClient

Public Class clsCliente
    'Inherits clsConexion --> Heredo la clase
    Private idCliente As Integer
    Private nombres As String
    Private apellidos As String
    Private dni As String
    Private fecha As Date
    Private genero As Boolean
    Private tipocliente As Boolean

    Private ruc As String
    Private estado As Boolean
    Private texto As String


    Public Property IdCliente1 As Integer
        Get
            Return idCliente
        End Get
        Set(value As Integer)
            idCliente = value
        End Set
    End Property

    Public Property Nombres1 As String
        Get
            Return nombres
        End Get
        Set(value As String)
            nombres = value
        End Set
    End Property

    Public Property Apellidos1 As String
        Get
            Return apellidos
        End Get
        Set(value As String)
            apellidos = value
        End Set
    End Property

    Public Property Dni1 As String
        Get
            Return dni
        End Get
        Set(value As String)
            dni = value
        End Set
    End Property

    Public Property Fecha1 As Date
        Get
            Return fecha
        End Get
        Set(value As Date)
            fecha = value
        End Set
    End Property

    Public Property Genero1 As Boolean
        Get
            Return genero
        End Get
        Set(value As Boolean)
            genero = value
        End Set
    End Property



    Public Property Ruc1 As String
        Get
            Return ruc
        End Get
        Set(value As String)
            ruc = value
        End Set
    End Property

    Public Property Estado1 As Boolean
        Get
            Return estado
        End Get
        Set(value As Boolean)
            estado = value
        End Set
    End Property

    Public Property Tipocliente1 As Boolean
        Get
            Return tipocliente
        End Get
        Set(value As Boolean)
            tipocliente = value
        End Set
    End Property

    Public Property Texto1 As String
        Get
            Return texto
        End Get
        Set(value As String)
            texto = value
        End Set
    End Property



    Public Function listarClientes() As DataTable
        'para recuperar o leer datos   no modofica nada
        Dim dt As New DataTable
        Dim con As New clsConexion
        Dim da As New SqlDataAdapter("listarCliente", con.MsConn1)
        da.SelectCommand.CommandType = CommandType.StoredProcedure
        da.Fill(dt)
        Return dt

    End Function
    Public Sub registrarPersona()
        Try
            Dim con As New clsConexion
            Dim com As New SqlCommand("sp_RegistrarCliente", con.MsConn1)
            com.CommandType = CommandType.StoredProcedure

            With com.Parameters
                .Add("@nombres", SqlDbType.VarChar).Value = Me.nombres
                .Add("@apellidos", SqlDbType.VarChar).Value = Me.apellidos
                .Add("@dni", SqlDbType.Char).Value = Me.dni
                .Add("@fechNacimiento", SqlDbType.Date).Value = Me.fecha
                .Add("@genero", SqlDbType.Bit).Value = Me.genero
                .Add("@tipocliente", SqlDbType.Bit).Value = Me.tipocliente
                .Add("@ruc", SqlDbType.Char).Value = Me.ruc
                .Add("@estado", SqlDbType.Bit).Value = Me.estado

            End With
            con.MsConn1.Open()
            com.ExecuteNonQuery() 'ejecuta SIN devolucion de valores
            con.MsConn1.Close()
        Catch ex As Exception
            Throw ex
        End Try

    End Sub
    Public Function BuscarClientes() As DataTable
        Dim Tabla As New DataTable
        Dim resultado As SqlDataReader

        Dim con As New clsConexion
        Dim com As New SqlCommand("Sp_BuscarCliente", con.MsConn1)
        com.CommandType = CommandType.StoredProcedure

        With com.Parameters
            .Add("@texto", SqlDbType.VarChar).Value = Me.texto
        End With

        con.MsConn1.Open()
        resultado = com.ExecuteReader
        Tabla.Load(resultado)
        con.MsConn1.Close()
        Return Tabla

    End Function
End Class
