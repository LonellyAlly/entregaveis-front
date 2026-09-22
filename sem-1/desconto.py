v = float(input("insira o valor do produto:"))
d = float(input("insira o valor do desconto:"))
vd = float(v*d/100)
vf = v - vd
print("valor com o desconto é de R$",vf)