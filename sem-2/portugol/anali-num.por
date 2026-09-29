algoritmo "anali-num"

var
    indice: inteiro
    numero, soma, media, maior, menor: real

inicio
    soma <- 0
    maior <- 0
    menor <- 0

    para indice de 1 ate 5 faca
        escreva("Insira o ", indice, "o numero: ")
        leia(numero)

        soma <- soma + numero

        se indice = 1 entao
            maior <- numero
            menor <- numero
        senao
            se numero > maior entao
                maior <- numero
            fimse
            se numero < menor entao
                menor <- numero
            fimse
        fimse
    fimpara

    media <- soma / 5

    escreval("Soma: ", soma)
    escreval("Media: ", media)
    escreval("Maior valor: ", maior)
    escreval("Menor valor: ", menor)
fimalgoritmo
