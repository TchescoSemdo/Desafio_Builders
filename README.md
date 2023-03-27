# Desafio_Builders

Testes automatizados com Ruby Esse projeto é composto por dois projetos separados para testes de UI e testes de API. Ambos os projetos foram desenvolvidos em Ruby, seguindo o padrão Page Object e utilizando diversas bibliotecas, como o Appium para testes de UI e o HTTParty para testes de API.

Pré-requisitos Antes de executar os testes automatizados, é necessário ter instalado os seguintes softwares:

Ruby (versão 2.5 ou superior) Bundler (para gerenciamento de dependências) Android SDK (para testes de UI)

Instalação Para instalar as dependências do projeto, execute o seguinte comando:

$ bundle install

Executando os testes Testes de UI Antes de executar os testes de UI, é necessário iniciar o servidor do Appium. Para fazer isso, execute o seguinte comando:

$ appium

Em seguida, para executar os testes de UI, execute o seguinte comando:

$ cucumber -t @ui Este comando irá executar todos os testes marcados com a tag "@ui" no arquivo de features.

Testes de API

Para executar os testes de API, execute o seguinte comando:

$ cucumber -t @api Este comando irá executar todos os testes marcados com a tag "@api" no arquivo de features.

Relatórios e logs Após a execução dos testes, o relatório será gerado automaticamente na pasta reports. Além disso, os logs de execução podem ser encontrados na pasta logs.

Conclusão Com essas informações, você já pode executar os testes automatizados em ambos os projetos de UI e API usando o Ruby. Para mais informações, consulte-me para qualquer informação
