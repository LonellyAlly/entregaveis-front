"""Módulo com operações matemáticas básicas."""


def somar(primeiro_numero, segundo_numero):
    """Retorna a soma de dois números."""
    return primeiro_numero + segundo_numero


def subtrair(primeiro_numero, segundo_numero):
    """Retorna a subtração de dois números."""
    return primeiro_numero - segundo_numero


def multiplicar(primeiro_numero, segundo_numero):
    """Retorna a multiplicação de dois números."""
    return primeiro_numero * segundo_numero


def dividir(primeiro_numero, segundo_numero):
    """Divide dois números e retorna None se o divisor for zero."""
    if segundo_numero == 0:
        return None

    return primeiro_numero / segundo_numero


if __name__ == "__main__":
    print(f"Soma: {somar(10, 5)}")
    print(f"Subtração: {subtrair(10, 5)}")
    print(f"Multiplicação: {multiplicar(10, 5)}")
    print(f"Divisão: {dividir(10, 5)}")
    print(f"Divisão por zero: {dividir(10, 0)}")