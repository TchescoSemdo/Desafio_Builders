# language: pt

@account
Funcionalidade: Consulta de contas

    Cenário: Solicitação bem-sucedida
        Dado que eu tenho um Id válido
        Quando eu enviar uma solicitação GET 
        Então a API deve retornar um status 200
        E as informações da conta associada ao Id informado

    # Cenário: Conta não encontrada
    #     Dado que eu tenho um Id válido, mas não existe uma conta associada a ele
    #     Quando eu enviar uma solicitação GET 
    #     Então a API deve retornar um status 404
    #     E a mensagem de erro "account_not_found"