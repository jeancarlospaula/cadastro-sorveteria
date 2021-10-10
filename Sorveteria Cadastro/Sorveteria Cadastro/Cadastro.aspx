<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Cadastro.aspx.vb" Inherits="Sorveteria_Cadastro.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="Style/StyleSheet.css" rel="stylesheet" />
    <link rel="shortcut icon" href="../Imagens/favicon.png" />
    <title>Cadastro | Sorveteria</title>
</head>
<body>
    <nav class="nav-bar">
        <img src="../Imagens/favicon.png" alt="logo-sorveteria" class="logo"/>

        <div class="botoes-nav">
            <nav href="#" class="nav-button">Home</nav>
            <nav href="#" class="nav-button">Produtos</nav>
            <nav href="#" class="nav-button">Contato</nav>
        </div>

        <a href="#"><img src="../Imagens/carrinho-de-comprar.png" alt="carrinho-comprar" class="logo-carrinho"></a>
    </nav>

    <div class="main-card">
        <h1>Cadastro</h1>

        <form class="formulario" action="#" runat="server">
            <div class="coluna1">
                <div class="inputColuna1">
                    <label class="nome">Nome Completo
                    <asp:TextBox runat="server" ID="txtNome" CssClass="userInput txtNome" required/>
                    </label>

                    <label class="labelInput">Cidade
                    <asp:TextBox runat="server" ID="txtCidade" CssClass="userInput txtCidade" required/>
                    </label>

                    <label class="labelInput">Rua
                    <asp:TextBox runat="server" ID="txtRua" CssClass="userInput txtRua" required/>
                    </label>

                    <label class="labelInput">Número
                    <asp:TextBox runat="server" ID="txtNumero" CssClass="userInput txtNumero" required TextMode="Number"/>
                    </label>

                    <label class="labelInput">Telefone
                    <asp:TextBox runat="server" ID="txtTelefone" CssClass="userInput txtTelefone" placeholder="(99) 99999-9999" MaxLength="14" required TextMode="Phone"/>
                    </label>
                </div>
            </div>

            <div class="coluna2">
                <label class="labelInput">Email
                <asp:TextBox runat="server" ID="txtEmail" CssClass="userInput txtEmail" required TextMode="Email" onblur="verificaEmail()" />
                </label>

                <label class="labelInput">Senha
                <asp:TextBox runat="server" ID="txtSenha" CssClass="userInput txtSenha" required/>
                </label>

                <label class="labelInput">Confirmar Senha
                <asp:TextBox runat="server" ID="txtConfirmarSenha" CssClass="userInput txtConfirmarSenha" required/>
                </label>

                <p class="senhaIncorreta">Certifique de ter digitado as senhas corretamente</p>

                <asp:Button ID="btnCriarConta" CssClass="btnCriarConta" Text="Criar conta" runat="server" OnClientClick="if (nomeInput.value.length != 0 && cidadeInput.value.length != 0 && ruaInput.value.length != 0 && numeroInput.value.length != 0 && telefoneInput.value.length != 0 && emailInput.value.length != 0 && senhaInput.value.length != 0 && senhaConfirmaInput.value.length != 0) {verificaSenha(); return false;}"/>
                <p class="mensagem-login">Já tem uma conta? Faça <a href="#">LOGIN</a></p>

                <asp:LinkButton ID="btnContaCriada" CssClass="btnContaCriada" runat="server" />
            </div>
        </form>
    </div>
</body>
<script src="Scripts/app.js"></script>
</html>