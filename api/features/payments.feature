# language: pt

Funcionalidade: Validação de Pagamento

    Cenário: Realizar um pagamento com sucesso
        Dado que informo um end-to-end válido
        E informo um ID de conciliação válido
        E informo um valor válido para o pagamento
        Quando eu envio uma requisição POST 
        Então a API deve retornar o status code 201
        E deve retornar uma mensagem de sucesso.

    Cenário: Parâmetro: End-to-end inválido
        Dado que informo um end-to-end inválido
        E informo um ID de conciliação válido
        E informo um valor válido para o pagamento
        Quando eu envio uma requisição POST 
        Então a API deve retornar o status code 400
        E deve retornar uma mensagem de erro informando que o end-to-end é inválido.