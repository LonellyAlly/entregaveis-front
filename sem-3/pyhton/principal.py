"""Programa principal para demonstrar a modularização."""


from calculadora import (
    somar,
    subtrair,
    multiplicar,
    dividir,
)

from utilidades import (
    converter_temperatura,
    validar_senha,
    calcular_total,
    criar_ficha_aluno,
    adicionar_item_seguro,
)


def main():
    """Executa os exemplos de utilização dos módulos."""

    print("=== CALCULADORA ===")

    primeiro_numero = 20
    segundo_numero = 5

    print(f"Soma: {somar(primeiro_numero, segundo_numero)}")
    print(f"Subtração: {subtrair(primeiro_numero, segundo_numero)}")
    print(f"Multiplicação: {multiplicar(primeiro_numero, segundo_numero)}")

    resultado_divisao = dividir(primeiro_numero, segundo_numero)

    if resultado_divisao is not None:
        print(f"Divisão: {resultado_divisao}")
    else:
        print("Não é possível dividir por zero.")

    print("\n=== CONVERSOR DE TEMPERATURA ===")

    temperatura = converter_temperatura(30, "C", "F")
    print(f"30 °C correspondem a {temperatura:.2f} °F.")

    print("\n=== VALIDADOR DE SENHA ===")

    senha = "Python123"
    senha_valida = validar_senha(senha)

    print(f"A senha '{senha}' é válida: {senha_valida}")

    print("\n=== CAIXA ===")

    total = calcular_total(15.50, 20.00, 7.50, 12.00)
    print(f"Valor total da compra: R$ {total:.2f}")

    print("\n=== FICHA DO ALUNO ===")

    ficha = criar_ficha_aluno(
        nome="Carlos",
        idade=21,
        curso="Desenvolvimento de Sistemas",
        nota=8.5,
    )

    print(f"Ficha cadastrada: {ficha}")

    print("\n=== LISTA SEGURA ===")

    disciplinas = ["Python", "Banco de Dados", "HTML"]
    nova_disciplina = "JavaScript"

    nova_lista = adicionar_item_seguro(
        disciplinas,
        nova_disciplina,
    )

    print(f"Lista original: {disciplinas}")
    print(f"Lista após a cópia: {nova_lista}")


if __name__ == "__main__":
    main()