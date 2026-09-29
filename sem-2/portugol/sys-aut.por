algoritmo "sys-aut"

var
    senha_correta: caractere
    senha: caractere
    tentativas, maximo_tentativas, restantes: inteiro
    acesso_liberado: logico

inicio
    senha_correta <- "python123"
    maximo_tentativas <- 3
    tentativas <- 0
    acesso_liberado <- falso

    enquanto tentativas < maximo_tentativas faca
        escreva("Insira a senha: ")
        leia(senha)

        tentativas <- tentativas + 1

        se senha = senha_correta entao
            acesso_liberado <- verdadeiro
            interrompa
        fimse

        restantes <- maximo_tentativas - tentativas
        se restantes > 0 entao
            escreval("Senha incorreta. Tentativas restantes: ", restantes)
        fimse
    fimenquanto

    se acesso_liberado entao
        escreval("Acesso liberado apos ", tentativas, " tentativa(s).")
    senao
        escreval("Acesso bloqueado apos ", tentativas, " tentativas.")
    fimse
fimalgoritmo
