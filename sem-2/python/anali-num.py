soma = 0
maior_numero = None
menor_numero = None

for contador in range(1, 6):
    numero = float(input(f"Digite o {contador}º número: "))

    soma += numero

    if maior_numero is None or numero > maior_numero:
        maior_numero = numero

    if menor_numero is None or numero < menor_numero:
        menor_numero = numero

media = soma / 5

print(f"Soma: {soma}")
print(f"Média: {media}")
print(f"Maior valor: {maior_numero}")
print(f"Menor valor: {menor_numero}")