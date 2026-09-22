programa
{
    funcao inicio()
    {
        cadeia senha_correta = "1234"
        cadeia senha
        inteiro tentativas = 0
        logico acesso_concedido = falso

        enquanto (tentativas < 3)
        {
            escreva("Digite a sua senha: ")
            leia(senha)

            tentativas = tentativas + 1

            se (senha == senha_correta)
            {
                acesso_concedido = verdadeiro

                escreva("Acesso autorizado na tentativa ", tentativas, ".\n")

                pare
            }

            escreva("Senha incorreta. Tentativa ", tentativas, " de 3.\n")
        }

        se (acesso_concedido == falso)
        {
            escreva("Acesso bloqueado após ", tentativas, " tentativas.")
        }
    }
}