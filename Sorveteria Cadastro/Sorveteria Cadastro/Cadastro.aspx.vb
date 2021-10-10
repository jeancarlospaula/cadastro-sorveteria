Imports System.Data.SqlClient
Public Class WebForm1
    Inherits System.Web.UI.Page

    Dim conexao As New SqlConnection("Data Source=.;
                                      Initial Catalog=Clientes_Sorveteria;
                                      User ID=;
                                      Password=")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnContaCriada_Click(sender As Object, e As EventArgs) Handles btnContaCriada.Click
        Dim nome = txtNome.Text
        Dim cidade = txtCidade.Text
        Dim rua = txtRua.Text
        Dim numero = CDbl(txtNumero.Text)
        Dim telefone = txtTelefone.Text
        Dim email = txtEmail.Text
        Dim senha = txtSenha.Text
        Dim senhaConfima = txtConfirmarSenha.Text

        conexao.Open()
        Dim comando As New SqlCommand("INSERT INTO Clientes (nome, cidade, rua, numero, telefone, email, senha) VALUES ('" & nome & "','" & cidade & "', '" & rua & "', '" & numero & "', '" & telefone & "', 
                                       '" & email & "', '" & senha & "')", conexao)
        comando.ExecuteNonQuery()
        conexao.Close()

        txtNome.Text = Nothing
        txtCidade.Text = Nothing
        txtRua.Text = Nothing
        txtTelefone.Text = Nothing
        txtEmail.Text = Nothing
        txtNumero.Text = Nothing
        txtSenha.Text = Nothing
        txtConfirmarSenha.Text = Nothing

        ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Cliente Cadastrado com Sucesso');", True)
    End Sub
End Class