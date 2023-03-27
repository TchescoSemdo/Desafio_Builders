require_relative 'locators'

class CadastroPage
  include Locators

  def initialize(driver)
    @driver = driver
  end

  def preencher_telefone(telefone)
    telefone_field.send_keys(telefone)
    next_button.click
  end

  def preencher_nome(nome)
    nome_field.send_keys(nome)
    next_button.click
  end

  def clicar_cadastrar
    @driver.find_element(CADASTRAR_BUTTON).click
  end
    
  def clicar_compartilhar
    @driver.find_element(LOCALIZACAO_BUTTON).click
    @driver.find_element(COMPARTILHAR_PERMITIR_BUTTON).click  
  end

  def telefone_field
    @driver.find_element(TELEFONE_FIELD)
  end

  def next_button
    @driver.find_element(AVANCAR_BUTTON)
  end

  def nome_field
    @driver.find_element(NOME_FIELD)
  end

  def finalizar
    @driver.quit
  end
end
