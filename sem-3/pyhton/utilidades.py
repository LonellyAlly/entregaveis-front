"""Funções utilitárias para diferentes exercícios."""


def converter_temperatura(valor, escala_origem, escala_destino):
    """Converte uma temperatura entre Celsius, Fahrenheit e Kelvin."""
    escala_origem = escala_origem.upper()
    escala_destino = escala_destino.upper()

    if escala_origem == escala_destino:
        return valor

    # Primeiro converte para Celsius.
    if escala_origem == "C":
        celsius = valor
    elif escala_origem == "F":
        celsius = (valor - 32) * 5 / 9
    elif escala_origem == "K":
        celsius = valor - 273.15
    else:
        return None

    # Depois converte de Celsius para a escala desejada.
    if escala_destino == "C":
        return celsius
    elif escala_destino == "F":
        return (celsius * 9 / 5) + 32
    elif escala_destino == "K":
        return celsius + 273.15

    return None


def validar_senha(senha):
    """Valida uma senha de acordo com critérios básicos."""
    possui_tamanho = len(senha) >= 8
    possui_maiuscula = any(caractere.isupper() for caractere in senha)
    possui_minuscula = any(caractere.islower() for caractere in senha)
    possui_numero = any(caractere.isdigit() for caractere in senha)

    return (
        possui_tamanho
        and possui_maiuscula
        and possui_minuscula
        and possui_numero
    )


def calcular_total(*precos):
    """Calcula o total de uma quantidade variável de preços."""
    return sum(precos)


def criar_ficha_aluno(**dados):
    """Cria e retorna um dicionário com os dados do aluno."""
    return dados


def adicionar_item_seguro(lista_original, item):
    """Adiciona um item a uma cópia da lista sem alterar a original."""
    nova_lista = lista_original.copy()
    nova_lista.append(item)

    return nova_lista


if __name__ == "__main__":
    temperatura = converter_temperatura(25, "C", "F")
    print(f"25 °C correspondem a {temperatura:.2f} °F.")

    senha_valida = validar_senha("Python123")
    print(f"A senha é válida: {senha_valida}")

    total = calcular_total(10.50, 20.00, 5.50)
    print(f"Total dos produtos: R$ {total:.2f}")

    ficha = criar_ficha_aluno(
        nome="Ana",
        idade=20,
        curso="Desenvolvimento de Sistemas",
    )
    print(f"Ficha do aluno: {ficha}")

    lista_original = ["Python", "Java"]
    lista_nova = adicionar_item_seguro(lista_original, "Portugol")

    print(f"Lista original: {lista_original}")
    print(f"Nova lista: {lista_nova}")