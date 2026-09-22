programa
{
    // Converte Celsius para Fahrenheit.
    funcao real celsius_para_fahrenheit(real celsius)
    {
        retorne (celsius * 9 / 5) + 32
    }

    // Verifica se a senha possui pelo menos 8 caracteres.
    funcao logico validar_senha(cadeia senha)
    {
        se (comprimento(senha) >= 8)
        {
            retorne verdadeiro
        }

        retorne falso
    }

    // Demonstra o cálculo de um total.
    funcao real calcular_total(real primeiro_preco, real segundo_preco, real terceiro_preco)
    {
        retorne primeiro_preco + segundo_preco + terceiro_preco
    }

    funcao inicio()
    {
        real temperatura
        real total
        cadeia senha

        temperatura = celsius_para_fahrenheit(30)

        escreva("30 °C correspondem a ", temperatura, " °F.\n")

        senha = "Python123"

        se (validar_senha(senha))
        {
            escreva("A senha é válida.\n")
        }
        senao
        {
            escreva("A senha é inválida.\n")
        }

        total = calcular_total(15.50, 20.00, 7.50)

        escreva("Total da compra: R$ ", total, "\n")
    }
}