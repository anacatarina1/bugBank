#language: pt

Funcionalidade: trasferência bancária

Cenário: visualizar o formulário para fazer transferência
Dado que tenha logado na conta da Ana
Quando solicitar uma transferência
Então vejo o formulário para transferência

Cenário: fazer transferência da conta da Ana para a conta do Marcos
Dado que esteja vendo o formulário para transferência
E tenha informado os dados da conta do Marcos
Quando confirmar a transferência
Então vejo a msn Transferencia realizada com sucesso