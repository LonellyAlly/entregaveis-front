algoritmo "class-cli"

var
    idade: inteiro
    renda: real
    categoria: caractere

inicio
    escreva("Insira a idade do cliente: ")
    leia(idade)

    escreva("Insira a renda mensal do cliente: ")
    leia(renda)

    se idade < 18 entao
        categoria <- "Bronze"
    senao se renda < 2000 entao
        categoria <- "Bronze"
    senao se renda < 5000 entao
        categoria <- "Prata"
    senao se renda < 10000 entao
        categoria <- "Ouro"
    senao
        categoria <- "Diamante"
    fimse

    escreval("Idade: ", idade, " anos")
    escreval("Renda: R$ ", renda:0:2)
    escreval("Categoria do cliente: ", categoria)
fimalgoritmo
