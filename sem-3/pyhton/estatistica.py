"""Funções estatísticas básicas."""


def media(numeros):
    """Retorna a média aritmética de uma lista de números."""
    if not numeros:
        return None

    return sum(numeros) / len(numeros)


def mediana(numeros):
    """Retorna a mediana de uma lista de números."""
    if not numeros:
        return None

    valores = sorted(numeros)
    quantidade = len(valores)
    meio = quantidade // 2

    if quantidade % 2 == 0:
        return (valores[meio - 1] + valores[meio]) / 2

    return valores[meio]


def moda(numeros):
    """Retorna o valor que aparece mais vezes na lista."""
    if not numeros:
        return None

    frequencias = {}

    for numero in numeros:
        frequencias[numero] = frequencias.get(numero, 0) + 1

    maior_frequencia = max(frequencias.values())

    for numero, frequencia in frequencias.items():
        if frequencia == maior_frequencia:
            return numero


# Alias para o módulo.
est = media


def fatorial(numero):
    """Calcula o fatorial de um número usando recursividade."""
    if numero < 0:
        raise ValueError("O fatorial não existe para números negativos.")

    if numero == 0 or numero == 1:
        return 1

    return numero * fatorial(numero - 1)


def relatorio(titulo, *linhas, **config):
    """Exibe um relatório usando argumentos posicionais e nomeados."""

    print("=" * 40)
    print(titulo)
    print("=" * 40)

    for linha in linhas:
        print(linha)

    for chave, valor in config.items():
        print(f"{chave}: {valor}")

    print("=" * 40)