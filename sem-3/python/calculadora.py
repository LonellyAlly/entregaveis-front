def somar(primeiro_numero, segundo_numero):
    return primeiro_numero + segundo_numero


def subtrair(primeiro_numero, segundo_numero):
    return primeiro_numero - segundo_numero


def multiplicar(primeiro_numero, segundo_numero):
    return primeiro_numero * segundo_numero


def dividir(primeiro_numero, segundo_numero):
    if segundo_numero == 0:
        return None

    return primeiro_numero / segundo_numero


if __name__ == "__main__":
    primeiro_numero = int(input("Insira o primeiro numero: "))
    segundo_numero = int(input("Insira o segundo numero: "))

    print(f"Soma: {somar(primeiro_numero, segundo_numero)}")
    print(f"Subtração: {subtrair(primeiro_numero, segundo_numero)}")
    print(f"Multiplicação: {multiplicar(primeiro_numero, segundo_numero)}")
    print(f"Divisão: {dividir(primeiro_numero, segundo_numero)}")
    print(f"Divisão por zero: {dividir(primeiro_numero, 0)}")
