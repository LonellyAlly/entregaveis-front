algoritmo "estatistica"

funcao media(numeros: vetor de real; quantidade: inteiro)
var
    soma: real
    i: inteiro
inicio
    se quantidade = 0 entao
        retorne 0
    fimse

    soma <- 0
    para i de 1 ate quantidade faca
        soma <- soma + numeros[i]
    fimpara

    retorne soma / quantidade
fimfuncao

funcao mediana(numeros: vetor de real; quantidade: inteiro)
var
    ordenado: vetor[1..100] de real
    i, j, meio: inteiro
    aux: real
inicio
    se quantidade = 0 entao
        retorne 0
    fimse

    para i de 1 ate quantidade faca
        ordenado[i] <- numeros[i]
    fimpara

    para i de 1 ate quantidade - 1 faca
        para j de i + 1 ate quantidade faca
            se ordenado[i] > ordenado[j] entao
                aux <- ordenado[i]
                ordenado[i] <- ordenado[j]
                ordenado[j] <- aux
            fimse
        fimpara
    fimpara

    meio <- quantidade div 2

    se quantidade mod 2 = 0 entao
        retorne (ordenado[meio] + ordenado[meio + 1]) / 2
    fimse

    retorne ordenado[meio + 1]
fimfuncao

funcao moda(numeros: vetor de inteiro; quantidade: inteiro)
var
    i, j, contador, maior_frequencia, valor_moda: inteiro
inicio
    se quantidade = 0 entao
        retorne 0
    fimse

    maior_frequencia <- 0
    valor_moda <- numeros[1]

    para i de 1 ate quantidade faca
        contador <- 0
        para j de 1 ate quantidade faca
            se numeros[i] = numeros[j] entao
                contador <- contador + 1
            fimse
        fimpara

        se contador > maior_frequencia entao
            maior_frequencia <- contador
            valor_moda <- numeros[i]
        fimse
    fimpara

    retorne valor_moda
fimfuncao

funcao fatorial(numero: inteiro)
inicio
    se numero < 0 entao
        retorne -1
    fimse
    se numero = 0 ou numero = 1 entao
        retorne 1
    fimse
    retorne numero * fatorial(numero - 1)
fimfuncao

procedimento relatorio(titulo: caractere; linhas: vetor de caractere; qtd_linhas: inteiro; aluno, turma: caractere; nota: real)
var
    i: inteiro
inicio
    escreval("========================================")
    escreval(titulo)
    escreval("========================================")

    se qtd_linhas > 0 entao
        escreval("----------------------------------------")
        para i de 1 ate qtd_linhas faca
            escreval(linhas[i])
        fimpara
    fimse

    escreval("----------------------------------------")
    escreval("aluno: ", aluno)
    escreval("turma: ", turma)
    escreval("nota: ", nota)
    escreval("========================================")
fimprocedimento

inicio
    numeros_reais: vetor[1..8] de real
    numeros_inteiros: vetor[1..8] de inteiro
    linhas: vetor[1..2] de caractere
    i: inteiro

    numeros_reais[1] <- 1
    numeros_reais[2] <- 2
    numeros_reais[3] <- 2
    numeros_reais[4] <- 3
    numeros_reais[5] <- 4
    numeros_reais[6] <- 5
    numeros_reais[7] <- 5
    numeros_reais[8] <- 5

    para i de 1 ate 8 faca
        numeros_inteiros[i] <- numeros_reais[i]
    fimpara

    escreval("Media: ", media(numeros_reais, 8))
    escreval("Mediana: ", mediana(numeros_reais, 8))
    escreval("Moda: ", moda(numeros_inteiros, 8))

    escreval("")
    para i de 0 ate 5 faca
        escreval(i, "! = ", fatorial(i))
    fimpara

    escreval("")
    linhas[1] <- "Presenca ok"
    linhas[2] <- "Entregas em dia"
    relatorio("Resumo do aluno", linhas, 2, "Fulano", "Sem-3", 9.5)
fimalgoritmo
