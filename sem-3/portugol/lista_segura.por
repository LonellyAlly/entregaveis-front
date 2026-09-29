algoritmo "lista_segura"

funcao adicionar_item(lista_original: vetor de inteiro; tamanho: inteiro; item: inteiro)
var
    nova_lista: vetor[1..100] de inteiro
    i: inteiro
inicio
    para i de 1 ate tamanho faca
        nova_lista[i] <- lista_original[i]
    fimpara

    nova_lista[tamanho + 1] <- item
    retorne nova_lista
fimfuncao

inicio
    original: vetor[1..3] de inteiro
    nova: vetor[1..100] de inteiro
    i: inteiro

    original[1] <- 1
    original[2] <- 2
    original[3] <- 3

    nova <- adicionar_item(original, 3, 4)

    escreva("Original: ")
    para i de 1 ate 3 faca
        escreva(original[i], " ")
    fimpara
    escreval("")

    escreva("Nova: ")
    para i de 1 ate 4 faca
        escreva(nova[i], " ")
    fimpara
    escreval("")
fimalgoritmo
