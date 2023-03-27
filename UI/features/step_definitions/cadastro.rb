

Dado('que estou na tela de cadastro de usuário') do
  @cadastro_page = CadastroPage.new(@driver)
  @cadastro_page.clicar_cadastrar
end

Dado('eu insiro um número de telefone válido {string}') do |telefone|
  @cadastro_page.preencher_telefone(telefone)
end

Dado('eu insiro um Nome Completo válido {string}') do |nome|
  @cadastro_page.preencher_nome(nome)  
end


Quando('clico no botão de localização e aceito compartilhar') do   
  @cadastro_page.clicar_compartilhar  
end                                                                           
                                                                              
Então('sou direcionado para tela inicial') do                                 
end                                                                           

# Então('o usuário é direcionado para compartilhar sua localização.') do        
#   pending # Write code here that turns the phrase above into concrete actions 
# end                                                                           

# Dado('eu insiro um número de telefone em formato internacional {string}') do |string|
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Então('o sistema exibe uma mensagem de erro informando que o formato do número de telefone é inválido. O usuário não é cadastrado.') do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Dado('eu insiro um número de telefone em formato nacional {string}') do |string|
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Dado('insiro um Nome Completo') do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Quando('clico no botão {string}') do |string|
#   pending # Write code here that turns the phrase above into concrete actions
# end