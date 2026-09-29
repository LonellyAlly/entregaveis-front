print("=== Menu de Operações Matemáticas ===")
print("1 - Soma")
print("2 - Subtração")
print("3 - Multiplicação")
print("4 - Divisão")

opcao = input("Escolha uma opção (1-4): ")

primeiro_numero = float(input("Insira o primeiro número: "))
segundo_numero = float(input("Insira o segundo número: "))

match opcao:
    case "1":
        resultado = primeiro_numero + segundo_numero
        print(f"Soma: {resultado}")
    case "2":
        resultado = primeiro_numero - segundo_numero
        print(f"Subtração: {resultado}")
    case "3":
        resultado = primeiro_numero * segundo_numero
        print(f"Multiplicação: {resultado}")
    case "4":
        if segundo_numero == 0:
            print("Erro: divisão por zero não é permitida.")
        else:
            resultado = primeiro_numero / segundo_numero
            print(f"Divisão: {resultado}")
    case _:
        print("Opção inválida.")
