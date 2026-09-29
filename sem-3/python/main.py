import estatistica as est
from calculadora import somar, subtrair, multiplicar, dividir
from utilidades import converter_temperatura, validar_senha, caixa, ficha_aluno
from lista_segura import adicionar_item, adicionar_varios


def demonstrar_calculadora():
    print("\n=== Calculadora ===")
    a, b = 10, 5
    print(f"{a} + {b} = {somar(a, b)}")
    print(f"{a} - {b} = {subtrair(a, b)}")
    print(f"{a} * {b} = {multiplicar(a, b)}")
    print(f"{a} / {b} = {dividir(a, b)}")
    print(f"{a} / 0 = {dividir(a, 0)}")


def demonstrar_utilidades():
    print("\n=== Conversor de temperatura ===")
    print(f"0°C em °F: {converter_temperatura(0, 'C', 'F'):.2f}")
    print(f"100°C em K: {converter_temperatura(100, 'C', 'K'):.2f}")
    print(f"32°F em °C: {converter_temperatura(32, 'F', 'C'):.2f}")

    print("\n=== Validador de senha ===")
    for senha in ["abc", "Senha123!", "senha123", "SENHA123!"]:
        problemas = validar_senha(senha)
        status = "OK" if not problemas else problemas
        print(f"{senha!r}: {status}")

    print("\n=== Caixa ===")
    resultado = caixa(10.0, 20.0, 30.0, desconto=10)
    for chave, valor in resultado.items():
        print(f"{chave}: R$ {valor:.2f}")

    print("\n=== Ficha do aluno ===")
    ficha_aluno(nome="Fulano", turma="Sem-3", nota=9.5, faltas=2)


def demonstrar_lista_segura():
    print("\n=== Lista segura ===")
    original = [1, 2, 3]
    nova = adicionar_item(original, 4)
    print(f"Original: {original}")
    print(f"Nova:     {nova}")
    print(f"Original foi alterada? {original != [1, 2, 3]}")

    nova2 = adicionar_varios(original, 4, 5, 6)
    print(f"Nova com vários: {nova2}")


def demonstrar_bonus():
    print("\n=== Estatística ===")
    numeros = [1, 2, 2, 3, 4, 5, 5, 5]
    print(f"Média:   {est.media(numeros)}")
    print(f"Mediana: {est.mediana(numeros)}")
    print(f"Moda:    {est.moda(numeros)}")

    print("\n=== Fatorial ===")
    for n in range(0, 6):
        print(f"{n}! = {est.fatorial(n)}")

    print("\n=== Relatório ===")
    est.relatorio(
        "Resumo do aluno",
        "Presença ok",
        "Entregas em dia",
        aluno="Fulano",
        turma="Sem-3",
        nota=9.5,
    )


if __name__ == "__main__":
    demonstrar_calculadora()
    demonstrar_utilidades()
    demonstrar_lista_segura()
    demonstrar_bonus()
