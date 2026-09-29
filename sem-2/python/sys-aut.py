SENHA_CORRETA = "python123"
MAXIMO_TENTATIVAS = 3

tentativas = 0
acesso_liberado = False

while tentativas < MAXIMO_TENTATIVAS:
    senha = input("Insira a senha: ")
    tentativas += 1

    if senha == SENHA_CORRETA:
        acesso_liberado = True
        break

    restantes = MAXIMO_TENTATIVAS - tentativas
    if restantes > 0:
        print(f"Senha incorreta. Tentativas restantes: {restantes}")

if acesso_liberado:
    print(f"Acesso liberado após {tentativas} tentativa(s).")
else:
    print(f"Acesso bloqueado após {tentativas} tentativas.")
