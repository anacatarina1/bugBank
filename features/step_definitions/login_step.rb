Dado('que esteja na page do login do BugBank') do
  @transferencia = Transferencia.new
  @transferencia.load
end

Quando('entrar com o login da Ana {string}') do |string|
  @transferencia = Transferencia.new
  @transferencia.realizar_login string
end

Então('acesso a conta da Ana') do
  @transferencia = Transferencia.new
  @transferencia.acesso_app_web
end