print("=== Menu de Operações ===")
print("1 - Soma")
print("2 - Subtração")
print("3 - Multiplicação")
print("4 - Divisão")

opcao = input("Escolha uma opção: ")
primeiro_numero = float(input("Digite o primeiro número: "))
segundo_numero = float(input("Digite o segundo número: "))

match opcao:
    case "1":
        resultado = primeiro_numero + segundo_numero
        print(f"O resultado da soma é {resultado}.")
    case "2":
        resultado = primeiro_numero - segundo_numero
        print(f"O resultado da subtração é {resultado}.")
    case "3":
        resultado = primeiro_numero * segundo_numero
        print(f"O resultado da multiplicação é {resultado}.")
    case "4":
        if segundo_numero != 0:
            resultado = primeiro_numero / segundo_numero
            print(f"O resultado da divisão é {resultado}.")
        else:
            print("Não é possível dividir por zero.")
    case _:
        print(f"A opção {opcao} é inválida.")