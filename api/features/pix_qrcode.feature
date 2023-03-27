# language: pt

Funcionalidade: Verificação de QR Code

    Cenário: Qrcode válido
        Dado que existe um código PIX válido
        Quando uma solicitação POST é enviada com o código PIX convertido
        Então a API deve retornar um status 200
        E a resposta deve indicar que o código PIX trouxe os dados com sucesso.

    Cenário: Qrcode inexistente
        Dado que eu envio uma solicitação POST inválida
        Quando uma solicitação POST é enviada com o código PIX convertido
        Então a API deve retornar um status 404
        E a mensagem de erro "qrcode_not_found".

        