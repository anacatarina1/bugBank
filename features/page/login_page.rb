# frozen_string_literal: true
class Transferencia < SitePrism::Page
    set_url ENVIRONMENT['TR']
    def initialize
      @usuario = '[placeholder="Informe seu e-mail"]'
      @senha = '[placeholder="Informe sua senha"]'
      @acesso_app_web = '[id="textAccountNumber"]'
    end
  
    def realizar_login(arg)
      user = CREDENTIALS[arg.tr(' ', '_').to_sym][:usuario]
      password = CREDENTIALS[arg.tr(' ', '_').to_sym][:senha]
      first(@usuario).set user
      first(@senha).set password
      click_button 'Acessar'
    end
    def acesso_app_web
      find(@acesso_app_web)
    end
  end