algoritmo "calculadora"

funcao somar(primeiro_numero, segundo_numero)
inicio
    retorne primeiro_numero + segundo_numero
fimfuncao

funcao subtrair(primeiro_numero, segundo_numero)
inicio
    retorne primeiro_numero - segundo_numero
fimfuncao

funcao multiplicar(primeiro_numero, segundo_numero)
inicio
    retorne primeiro_numero * segundo_numero
fimfuncao

funcao dividir(primeiro_numero, segundo_numero)
inicio
    se segundo_numero = 0 entao
        retorne nulo
    fimse
    retorne primeiro_numero / segundo_numero
fimfuncao

inicio
    escreva("Insira o primeiro numero: ")
    leia(primeiro_numero)
    escreva("Insira o segundo numero: ")
    leia(segundo_numero)

    escreval("Soma: ", somar(primeiro_numero, segundo_numero))
    escreval("Subtracao: ", subtrair(primeiro_numero, segundo_numero))
    escreval("Multiplicacao: ", multiplicar(primeiro_numero, segundo_numero))
    escreval("Divisao: ", dividir(primeiro_numero, segundo_numero))
    escreval("Divisao por zero: ", dividir(primeiro_numero, 0))
fimalgoritmo
