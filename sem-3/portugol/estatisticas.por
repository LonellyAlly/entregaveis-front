programa
{
    funcao real media(real numeros[], inteiro quantidade)
    {
        real soma = 0
        inteiro i

        para (i = 0; i < quantidade; i++)
        {
            soma = soma + numeros[i]
        }

        retorne soma / quantidade
    }

    funcao inicio()
    {
        real numeros[5]

        numeros[0] = 10
        numeros[1] = 8
        numeros[2] = 9
        numeros[3] = 7
        numeros[4] = 6

        escreva(
            "Média: ",
            media(numeros, 5),
            "\n"
        )
    }
}