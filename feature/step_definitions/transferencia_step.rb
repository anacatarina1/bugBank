# frozen_string_literal: true

Dado('que esteja na page do login do BugBank') do
  @transferencia = Transferencia.new
  @transferencia.load
end

Quando('entrar com o login da Ana') do
  @transferencia = Transferencia.new
  @transferencia.realizar_login string
end

Então('acesso a conta da Ana') do
  pending # Write code here that turns the phrase above into concrete actions
end
