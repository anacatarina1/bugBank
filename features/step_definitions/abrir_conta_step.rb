Dado('que tenha acessado a aplicação BugBank') do
  @conta = Conta.new
  @conta.load
end

Quando('fizer uma solicitação para registrar conta') do
  @conta = Conta.new
  @conta.registrar_conta
end

Então('estou na tela de registro de conta') do
  @conta = Conta.new
  @conta.form_conta
end

Dado('que estou na tela de registro de conta') do
  steps %(
    Dado que tenha acessado a aplicação BugBank
    Quando fizer uma solicitação para registrar conta
    Então estou na tela de registro de conta
  )
end

Dado('ter todos os campos preenchidos {string}') do |string|
  @conta = Conta.new
  @conta.form_campos string
end

Quando('registrar a conta') do
  @conta = Conta.new
  @conta.send_conta
end

Então('terei uma conta registrada com sucesso') do
  @conta = Conta.new
end