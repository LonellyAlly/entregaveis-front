programa
{
    funcao real somar(real a, real b)
    {
        retorne a + b
    }

    funcao real subtrair(real a, real b)
    {
        retorne a - b
    }

    funcao real multiplicar(real a, real b)
    {
        retorne a * b
    }

    funcao real dividir(real a, real b)
    {
        se (b == 0)
        {
            retorne 0
        }

        retorne a / b
    }

    funcao real converter_temperatura(real celsius)
    {
        retorne (celsius * 9 / 5) + 32
    }

    funcao logico validar_senha(cadeia senha)
    {
        retorne comprimento(senha) >= 8
    }

    funcao inicio()
    {
        real numero_1 = 10
        real numero_2 = 5

        escreva("===== CALCULADORA =====\n")

        escreva("Soma: ")
        escreva(somar(numero_1, numero_2), "\n")

        escreva("Subtração: ")
        escreva(subtrair(numero_1, numero_2), "\n")

        escreva("Multiplicação: ")
        escreva(multiplicar(numero_1, numero_2), "\n")

        escreva("Divisão: ")
        escreva(dividir(numero_1, numero_2), "\n")

        escreva("\n===== UTILIDADES =====\n")

        escreva(
            "30 °C em Fahrenheit: ",
            converter_temperatura(30),
            "\n"
        )

        se (validar_senha("python123"))
        {
            escreva("Senha válida.\n")
        }
        senao
        {
            escreva("Senha inválida.\n")
        }
    }
}