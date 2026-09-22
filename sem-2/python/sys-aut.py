senha_correta = "1234"
tentativas = 0
acesso_concedido = False

while tentativas < 3:
    senha = input("Digite a sua senha: ")
    tentativas += 1

    if senha == senha_correta:
        acesso_concedido = True
        print(f"Acesso autorizado na tentativa {tentativas}.")
        break

    print(f"Senha incorreta. Tentativa {tentativas} de 3.")

if not acesso_concedido:
    print(f"Acesso bloqueado após {tentativas} tentativas.")