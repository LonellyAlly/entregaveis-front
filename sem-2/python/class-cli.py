idade = int(input("Insira a idade do cliente: "))
renda = float(input("Insira a renda mensal do cliente: "))

if idade < 18:
    categoria = "Bronze"
elif renda < 2000:
    categoria = "Bronze"
elif renda < 5000:
    categoria = "Prata"
elif renda < 10000:
    categoria = "Ouro"
else:
    categoria = "Diamante"

print(f"Idade: {idade} anos")
print(f"Renda: R$ {renda:.2f}")
print(f"Categoria do cliente: {categoria}")
