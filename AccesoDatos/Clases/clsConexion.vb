Imports System.Configuration  'permite trabajar con el app.config
Imports System.Data.SqlClient

Public Class clsConexion

#Region "Campos"
    Private usuario As String
    Private clave As String
    Private servidor As String
    Private base As String
    Private autent As Boolean = False 'True=autenticación sqlserver False= autenticación mixta
    Private msConn As SqlConnection
#End Region

#Region "Property"
    Public Property Usuario1 As String
        Get
            Return usuario
        End Get
        Set(value As String)
            usuario = value
        End Set
    End Property

    Public Property Clave1 As String
        Get
            Return clave
        End Get
        Set(value As String)
            clave = value
        End Set
    End Property

    Public Property Servidor1 As String
        Get
            Return servidor
        End Get
        Set(value As String)
            servidor = value
        End Set
    End Property

    Public Property Base1 As String
        Get
            Return base
        End Get
        Set(value As String)
            base = value
        End Set
    End Property

    Public Property Autent1 As Boolean
        Get
            Return autent
        End Get
        Set(value As Boolean)
            autent = value
        End Set
    End Property

    Public Property MsConn1 As SqlConnection
        Get
            Return msConn
        End Get
        Set(value As SqlConnection)
            msConn = value
        End Set
    End Property
#End Region

#Region "Constructor"
    Public Sub New() 'Constructor
        'Me.servidor = "ARGOS\SQLEXPRESS"
        'Me.base = "DBSupermercado"
        'Me.usuario = ""
        'Me.clave = ""
        Me.msConn = New SqlConnection(CadenaConexion)
    End Sub

#End Region

#Region "Metodos"

    Private Function CadenaConexion() As String
        Try

            Dim strCon As String
            'If Me.autent = True Then
            '    '"Server= local; database=BDSupermercado; user Id= sa; password=1234"; EJEMPLO
            '    strCon = "Server =" & Me.servidor & ";" & "database=" & Me.base & ";" & "user id=" & Me.usuario & ";" & "password=" & ";" & Me.clave
            'Else
            '    '"Server= local; database=BDSupermercado; Integrated security=SSPI
            '    strCon = "Server =" & Me.servidor & ";" & "database=" & Me.base _
            '    & ";Integrated Security = SSPI"

            'End If

            strCon = ConfigurationManager.ConnectionStrings("CnSupermercado").ConnectionString 'ESTA ES LA CADENA DE CONEXION  que usa el app.config

            Return strCon
        Catch ex As Exception
            Throw ex
        End Try
    End Function


#End Region
End Class
