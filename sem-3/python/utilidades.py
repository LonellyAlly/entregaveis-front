def converter_temperatura(valor, origem="C", destino="F"):
    origem = origem.upper()
    destino = destino.upper()

    if origem == destino:
        return valor

    if origem == "C":
        celsius = valor
    elif origem == "F":
        celsius = (valor - 32) * 5 / 9
    elif origem == "K":
        celsius = valor - 273.15
    else:
        raise ValueError(f"Unidade de origem inválida: {origem}")

    if destino == "C":
        return celsius
    elif destino == "F":
        return celsius * 9 / 5 + 32
    elif destino == "K":
        return celsius + 273.15
    else:
        raise ValueError(f"Unidade de destino inválida: {destino}")


def validar_senha(senha):
    problemas = []

    if len(senha) < 8:
        problemas.append("A senha deve ter pelo menos 8 caracteres.")
    if not any(c.isupper() for c in senha):
        problemas.append("A senha deve conter pelo menos 1 letra maiúscula.")
    if not any(c.islower() for c in senha):
        problemas.append("A senha deve conter pelo menos 1 letra minúscula.")
    if not any(c.isdigit() for c in senha):
        problemas.append("A senha deve conter pelo menos 1 número.")
    if not any(not c.isalnum() for c in senha):
        problemas.append("A senha deve conter pelo menos 1 caractere especial.")

    return problemas


def caixa(*precos, desconto=0.0):
    subtotal = sum(precos)
    valor_desconto = subtotal * (desconto / 100)
    total = subtotal - valor_desconto

    return {
        "subtotal": subtotal,
        "desconto": valor_desconto,
        "total": total,
    }


def ficha_aluno(**dados):
    print("=" * 40)
    print("FICHA DO ALUNO".center(40))
    print("=" * 40)

    for chave, valor in dados.items():
        print(f"{chave.capitalize()}: {valor}")

    print("=" * 40)
