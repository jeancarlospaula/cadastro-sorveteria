var nomeInput = document.querySelector('.txtNome')
var cidadeInput = document.querySelector('.txtCidade')
var ruaInput = document.querySelector('.txtRua')
var numeroInput = document.querySelector('.txtNumero')
var telefoneInput = document.querySelector('.txtTelefone')
var emailInput = document.querySelector('.txtEmail')
var senhaInput = document.querySelector('.txtSenha')
var senhaConfirmaInput = document.querySelector('.txtConfirmarSenha')

telefoneInput.mask("(99) 99999-9999")

emailInput.addEventListener("focus", function () {
    emailInput.style.backgroundColor = "#e29c49";
    emailInput.style.borderRadius = "5px 5px 0 0";
})
emailInput.addEventListener("blur", verificaEmail())


function verificaEmail() {
    emailInput.addEventListener("change", function () {
        if (emailInput.value.length > 0) {
            emailInput.style.backgroundColor = "#e29c49";
            emailInput.style.borderRadius = "5px 5px 0 0";
        }
        else {
            emailInput.style.background = "none";
        }
    })

    if (emailInput.value.length == 0) {
        emailInput.style.background = "none";
    }
}

function verificaSenha() {
        var buttonContaCriada = document.querySelector('.btnContaCriada')
        var mensagemSenhaErrada = document.querySelector('.senhaIncorreta')

        if (senhaInput.value == senhaConfirmaInput.value) {
            mensagemSenhaErrada.style.display = "none"
            senhaInput.style.border = "none"
            senhaConfirmaInput.style.border = "none"
            senhaConfirmaInput.style.borderBottom = "#cb0f71 solid 2px"
            senhaInput.style.borderBottom = "#cb0f71 solid 2px"
            mensagemSenhaErrada.style.display = "none"
            buttonContaCriada.click()
        } else {
            mensagemSenhaErrada.style.display = "block"
            senhaConfirmaInput.style.borderBottom = "red solid 2px"
            senhaInput.style.borderBottom = "red solid 2px"
        }
}