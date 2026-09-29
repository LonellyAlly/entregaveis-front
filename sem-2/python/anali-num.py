soma = 0
maior = None
menor = None

for indice in range(1, 6):
    numero = float(input(f"Insira o {indice}º número: "))
    soma += numero

    if maior is None or numero > maior:
        maior = numero

    if menor is None or numero < menor:
        menor = numero

media = soma / 5

print(f"Soma: {soma}")
print(f"Média: {media}")
print(f"Maior valor: {maior}")
print(f"Menor valor: {menor}")
