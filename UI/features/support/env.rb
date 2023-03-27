require 'em/pure_ruby'
require 'allure-cucumber'
require 'fileutils'
require 'appium_lib'

# Importa as classes necessárias das pages
require_relative '../pages/cadastro_page'

AllureCucumber.configure do |config|
  config.results_directory = "reports/allure"
  config.clean_results_directory = true
end

# o codigo aqui é responsável apenas pela configuração do driver e inicialização do timeout global de espera