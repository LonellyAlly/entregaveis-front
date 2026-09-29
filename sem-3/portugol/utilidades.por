algoritmo "utilidades"

funcao converter_temperatura(valor, origem, destino)
var
    celsius: real
inicio
    origem <- maiusculo(origem)
    destino <- maiusculo(destino)

    se origem = destino entao
        retorne valor
    fimse

    se origem = "C" entao
        celsius <- valor
    senao se origem = "F" entao
        celsius <- (valor - 32) * 5 / 9
    senao se origem = "K" entao
        celsius <- valor - 273.15
    senao
        retorne "Unidade de origem invalida"
    fimse

    se destino = "C" entao
        retorne celsius
    senao se destino = "F" entao
        retorne celsius * 9 / 5 + 32
    senao se destino = "K" entao
        retorne celsius + 273.15
    senao
        retorne "Unidade de destino invalida"
    fimse
fimfuncao

funcao validar_senha(senha)
var
    problemas: vetor[1..5] de caractere
    total: inteiro
    i: inteiro
    tem_maiuscula, tem_minuscula, tem_numero, tem_especial: logico
inicio
    total <- 0
    tem_maiuscula <- falso
    tem_minuscula <- falso
    tem_numero <- falso
    tem_especial <- falso

    se compr(senha) < 8 entao
        total <- total + 1
        problemas[total] <- "A senha deve ter pelo menos 8 caracteres."
    fimse

    para i de 1 ate compr(senha) faca
        se copia(senha, i, 1) >= "A" e copia(senha, i, 1) <= "Z" entao
            tem_maiuscula <- verdadeiro
        fimse
        se copia(senha, i, 1) >= "a" e copia(senha, i, 1) <= "z" entao
            tem_minuscula <- verdadeiro
        fimse
        se copia(senha, i, 1) >= "0" e copia(senha, i, 1) <= "9" entao
            tem_numero <- verdadeiro
        fimse
        se nao ((copia(senha, i, 1) >= "A" e copia(senha, i, 1) <= "Z") ou
                (copia(senha, i, 1) >= "a" e copia(senha, i, 1) <= "z") ou
                (copia(senha, i, 1) >= "0" e copia(senha, i, 1) <= "9")) entao
            tem_especial <- verdadeiro
        fimse
    fimpara

    se nao tem_maiuscula entao
        total <- total + 1
        problemas[total] <- "A senha deve conter pelo menos 1 letra maiuscula."
    fimse
    se nao tem_minuscula entao
        total <- total + 1
        problemas[total] <- "A senha deve conter pelo menos 1 letra minuscula."
    fimse
    se nao tem_numero entao
        total <- total + 1
        problemas[total] <- "A senha deve conter pelo menos 1 numero."
    fimse
    se nao tem_especial entao
        total <- total + 1
        problemas[total] <- "A senha deve conter pelo menos 1 caractere especial."
    fimse

    retorne problemas
fimfuncao

funcao caixa(precos: vetor de real, quantidade: inteiro, desconto: real)
var
    subtotal, valor_desconto, total: real
    i: inteiro
inicio
    subtotal <- 0
    para i de 1 ate quantidade faca
        subtotal <- subtotal + precos[i]
    fimpara

    valor_desconto <- subtotal * (desconto / 100)
    total <- subtotal - valor_desconto

    escreval("Subtotal: ", subtotal)
    escreval("Desconto: ", valor_desconto)
    escreval("Total: ", total)
fimfuncao

procedimento ficha_aluno(nome, turma: caractere; nota: real; faltas: inteiro)
inicio
    escreval("========================================")
    escreval("             FICHA DO ALUNO")
    escreval("========================================")
    escreval("Nome: ", nome)
    escreval("Turma: ", turma)
    escreval("Nota: ", nota)
    escreval("Faltas: ", faltas)
    escreval("========================================")
fimprocedimento

inicio
    escreval("=== Conversor de temperatura ===")
    escreval("0 C em F: ", converter_temperatura(0, "C", "F"))
    escreval("100 C em K: ", converter_temperatura(100, "C", "K"))
    escreval("32 F em C: ", converter_temperatura(32, "F", "C"))

    escreval("")
    escreval("=== Validador de senha ===")
    validar_senha("abc")
    validar_senha("Senha123!")

    escreval("")
    escreval("=== Caixa ===")
    caixa({10.0, 20.0, 30.0}, 3, 10.0)

    escreval("")
    escreval("=== Ficha do aluno ===")
    ficha_aluno("Fulano", "Sem-3", 9.5, 2)
fimalgoritmo
