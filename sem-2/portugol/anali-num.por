8programa
{
    funcao inicio()
    {
        real numero
        real soma = 0
        real media
        real maior_numero
        real menor_numero

        para (inteiro contador = 1; contador <= 5; contador++)
        {
            escreva("Digite o ", contador, "º número: ")
            leia(numero)

            soma = soma + numero

            se (contador == 1)
            {
                maior_numero = numero
                menor_numero = numero
            }
            senao
            {
                se (numero > maior_numero)
                {
                    maior_numero = numero
                }

                se (numero < menor_numero)
                {
                    menor_numero = numero
                }
            }
        }

        media = soma / 5

        escreva("\nSoma: ", soma, "\n")
        escreva("Média: ", media, "\n")
        escreva("Maior valor: ", maior_numero, "\n")
        escreva("Menor valor: ", menor_numero, "\n")
    }
}