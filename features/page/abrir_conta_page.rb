# frozen_string_literal: true
class Conta < SitePrism::Page
  set_url ENVIRONMENT['TR']
  def initialize
    @form_conta = '[class="pages__Wrapper-sc-1ee1f2s-3 bRDVgF"]'
    @email = '[id="__next"]'
    @nome = '[placeholder="Informe seu Nome"]'
    @chave = ''
    @chave_bis = ''
  end

  def registrar_conta
    click_button 'Registrar'
  end
  def form_conta
    find(@form_conta)
  end
  def form_campos(arg)
    address = PERSONAL_INFORMATION[arg.tr(' ', '_').to_sym][:email]
    name = PERSONAL_INFORMATION[arg.tr(' ', '_').to_sym][:nome]
    pass = PERSONAL_INFORMATION[arg.tr(' ', '_').to_sym][:chave]
    check_pass = PERSONAL_INFORMATION[arg.tr(' ', '_').to_sym][:chave_bis]
    first(@email).set address
    first(@nome).set name
    first(@chave).set pass
    first(@chave_bis).set check_pass
    #click_button 'Acessar'
  end
  def send_conta
    click_button "Cadastrar"
  end
end