programa
{
    // Retorna a soma de dois números.
    funcao real somar(real primeiro_numero, real segundo_numero)
    {
        retorne primeiro_numero + segundo_numero
    }

    // Retorna a subtração de dois números.
    funcao real subtrair(real primeiro_numero, real segundo_numero)
    {
        retorne primeiro_numero - segundo_numero
    }

    // Retorna a multiplicação de dois números.
    funcao real multiplicar(real primeiro_numero, real segundo_numero)
    {
        retorne primeiro_numero * segundo_numero
    }

    // Realiza a divisão.
    // A divisão por zero é verificada antes da operação.
    funcao real dividir(real primeiro_numero, real segundo_numero)
    {
        se (segundo_numero == 0)
        {
            retorne 0
        }

        retorne primeiro_numero / segundo_numero
    }

    funcao inicio()
    {
        real primeiro_numero = 20
        real segundo_numero = 5

        escreva("Soma: ", somar(primeiro_numero, segundo_numero), "\n")
        escreva("Subtração: ", subtrair(primeiro_numero, segundo_numero), "\n")
        escreva("Multiplicação: ", multiplicar(primeiro_numero, segundo_numero), "\n")
        escreva("Divisão: ", dividir(primeiro_numero, segundo_numero), "\n")
    }
}