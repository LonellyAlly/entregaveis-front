programa
{
    funcao inicio()
    {
        inteiro opcao
        real primeiro_numero
        real segundo_numero
        real resultado

        escreva("=== Menu de Operações ===\n")
        escreva("1 - Soma\n")
        escreva("2 - Subtração\n")
        escreva("3 - Multiplicação\n")
        escreva("4 - Divisão\n")

        escreva("Escolha uma opção: ")
        leia(opcao)

        escreva("Digite o primeiro número: ")
        leia(primeiro_numero)

        escreva("Digite o segundo número: ")
        leia(segundo_numero)

        escolha (opcao)
        {
            caso 1:
                resultado = primeiro_numero + segundo_numero
                escreva("O resultado da soma é ", resultado, ".")
                pare

            caso 2:
                resultado = primeiro_numero - segundo_numero
                escreva("O resultado da subtração é ", resultado, ".")
                pare

            caso 3:
                resultado = primeiro_numero * segundo_numero
                escreva("O resultado da multiplicação é ", resultado, ".")
                pare

            caso 4:
                se (segundo_numero != 0)
                {
                    resultado = primeiro_numero / segundo_numero
                    escreva("O resultado da divisão é ", resultado, ".")
                }
                senao
                {
                    escreva("Não é possível dividir por zero.")
                }
                pare

            caso contrario:
                escreva("A opção escolhida é inválida.")
        }
    }
}