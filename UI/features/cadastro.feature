# language: pt

Funcionalidade: Cadastro de Novo Usuário

  @sttart  
  Cenário: Cadastrar usuário com número de telefone válido
    Dado que estou na tela de cadastro de usuário
    E eu insiro um número de telefone válido "<telefone>"
    E eu insiro um Nome Completo válido "<nome>"
    Quando clico no botão de localização e aceito compartilhar
    Então sou direcionado para tela inicial

    Exemplos:
    | telefone        | nome       | 
    | 11999999999     | joao Teste |

  # Cenário: Cadastro com número de telefone em formato internacional
  #   Dado que estou na tela de cadastro de usuário
  #   E eu insiro um número de telefone em formato internacional "<telefone>"
  #   E eu insiro um Nome Completo válido "<nome>"
  #   Quando eu clico no botão "Cadastrar"
  #   Então o sistema exibe uma mensagem de erro informando que o formato do número de telefone é inválido. O usuário não é cadastrado.

  #   Exemplos:
  #   | telefone                 | nome           | 
  #   | +55 11 99999-9999        | João da Silva  | 
  #   | +55 21 88888-8888        | Maria Souza    | 
  #   | +55 31 77777-7777        | Pedro Henrique | 

#   Cenário: Cadastro com número de telefone em formato nacional
#     Dado que estou na tela de cadastro de usuário
#     E eu insiro um número de telefone em formato nacional "<telefone>"
#     E insiro um Nome Completo
#     Quando clico no botão "Cadastrar"
#     Então o usuário é cadastrado com sucesso.

#     Exemplos:
#     | telefone        | nome            | 
#     | (11) 99999-9999 | João da Silva   | 
#     | (21) 88888-8888 | Maria Souza     | 
#     | (31) 77777-7777 | Pedro Henrique  |