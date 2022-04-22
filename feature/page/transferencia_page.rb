# frozen_string_literal: true
class Transferencia < SitePrism::Page
    set_url ENVIRONMENT['TR']
    def initialize
      @usuario = '[id="username"]'
      @senha = '[id="password"]'
    end
  
    def realizar_login(arg)
      user = CREDENTIALS[arg.tr(' ', '_').to_sym][:usuario]
      password = CREDENTIALS[arg.tr(' ', '_').to_sym][:senha]
      first(@usuario).set user
      first(@senha).set password
      click_button 'Entrar'
    end
  
  end
  