#language: pt

Funcionalidade: registrar conta bancária

Cenário: chegar na tela de registro de conta
Dado que tenha acessado a aplicação BugBank
Quando fizer uma solicitação para registrar conta
Então estou na tela de registro de conta

Cenário: registrar conta com sucesso
Dado que estou na tela de registro de conta
E ter todos os campos preenchidos "corretamente"
Quando registrar a conta 
Então terei uma conta registrada com sucesso