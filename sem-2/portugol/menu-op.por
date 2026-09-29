algoritmo "menu-op"

var
    opcao: inteiro
    primeiro_numero, segundo_numero, resultado: real

inicio
    escreval("=== Menu de Operacoes Matematicas ===")
    escreval("1 - Soma")
    escreval("2 - Subtracao")
    escreval("3 - Multiplicacao")
    escreval("4 - Divisao")

    escreva("Escolha uma opcao (1-4): ")
    leia(opcao)

    escreva("Insira o primeiro numero: ")
    leia(primeiro_numero)

    escreva("Insira o segundo numero: ")
    leia(segundo_numero)

    escolha opcao
        caso 1
            resultado <- primeiro_numero + segundo_numero
            escreval("Soma: ", resultado)
        caso 2
            resultado <- primeiro_numero - segundo_numero
            escreval("Subtracao: ", resultado)
        caso 3
            resultado <- primeiro_numero * segundo_numero
            escreval("Multiplicacao: ", resultado)
        caso 4
            se segundo_numero = 0 entao
                escreval("Erro: divisao por zero nao e permitida.")
            senao
                resultado <- primeiro_numero / segundo_numero
                escreval("Divisao: ", resultado)
            fimse
        outrocaso
            escreval("Opcao invalida.")
    fimescolha
fimalgoritmo
