programa
{
    funcao inicio()
    {
        inteiro idade
        real renda
        cadeia categoria

        escreva("Digite a idade do cliente: ")
        leia(idade)

        escreva("Digite a renda mensal do cliente: ")
        leia(renda)

        se (idade < 18)
        {
            categoria = "Bronze"
        }
        senao se (renda < 3000)
        {
            categoria = "Prata"
        }
        senao se (renda < 10000)
        {
            categoria = "Ouro"
        }
        senao
        {
            categoria = "Diamante"
        }

        escreva("O cliente foi classificado na categoria ", categoria, ".")
    }
}