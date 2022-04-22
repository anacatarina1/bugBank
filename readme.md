## Selenium Webdriver com Cucumber em Ruby 

## Pre requisitos:

## [Homebrew](https://brew.sh/index_pt-br) 
* É um sistema de gerenciamento de pacotes de softwares

## [rbenv](https://github.com/danilopolicarpos/rbenv)
* É um gerenciador de versões ruby,similar ao RVM, porém mais "limpo", construída por Sam Stephenson.

## [bundler](https://bundler.io/man/bundle-install.1.html)
* É o gerenciador de dependencias das gems do Ruby

## Browsers:
* [Chromedriver via download](https://chromedriver.chromium.org/downloads)
* Headless
* [Chromedriver via homebrew](https://stackoverflow.com/questions/50086506/brew-install-chromedriver-not-working)

Após o download no link acima copie o driver e cole nessa pasta
```
     open /usr/local/bin/
```


## Como rodar os testes :

# 1 - Navegue no projeto até o arquivo Gemfile em seguida execute o comando 
```
bundle install
```
# 2 - Para rodar todas as features execute o comando
* Ambiente de Desenvolvimento
```
cucumber -p dev --publish-quiet features/

Obs: '--publish-quiet' serve para não exibir o anúncio no Terminal quando executa os testes. Tem a opção de rodar os testes sem pôr o '--publish-quiet'.

* Ambiente de Produção
```
cucumber -p prod -t @prod
```

# 3 - Para rodar features especificas execute o comando 

```
cucumber -p dev features/nome_do_arquivo.feature
```
# 4 - Para rodar um cenário especifico execute o comando

```
cucumber -p dev features/nome_do_arquivo.feature:24
```

# 5 - Para rodar por tags execute o comando
```
cucumber -p dev --tags @nome_da_tag
```

# 6 - Instalando e Gerando [feature express](https://www.npmjs.com/package/feature-express) 
```
npm install -g feature-express 
```
```
# 6.1 - Levantar o browser com as features
```
 feature-express ./ pt 4444
```
# 6.2 - Ainda no Terminal, pressiona o COMMAND e click em: [Encontrar linha de comando](https://www.npmjs.com/package/feature-express)
```
 'http://localhost:4444/'
```

# 7 - Dicionários de tags
- @prod - O Cenário com essa tag executa no ambiente de dev e prod
- @mock - O Cenário com essa tag não executa em nenhum ambiente 

# 8 - Instalando e Gerando Report de Cobertura e Métricas de Qualidade
```
cucumber -p dev   --format json --out reports/cucumber_json
```
abrir o arquivo report.html em qualquer browser

# 9 - Rodando lint de código com o Rubocop

Instalando o rubocop


```
gem install rubocop
```

Executando Rubocop em todo projeto
```
rubocop
```

Executando Rubocop em um arquivo único 
```
rubocop  /Users/danilopolicarpo/dev/odete-test-react/features/support/hooks.rb
```

Sugestão de correção do Rubocop no arquivo 
```
rubocop --auto-correct  /Users/danilopolicarpo/dev/odete-test-react/features/support/hooks.rb
```




![See you later](https://media.giphy.com/media/fxe8v45NNXFd4jdaNI/giphy.gif)

