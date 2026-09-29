# Semana 02 — Estruturas de Controle e Repetição

Resolução dos 4 mini-desafios da Prática Independente da Semana 02, com
versões em **Python** e em **Portugol** para cada desafio.

## Estrutura

sem-2/
├── portugol/
│   ├── anali-num.por
│   ├── class-cli.por
│   ├── menu-op.por
│   └── sys-aut.por
└── python/
    ├── anali-num.py
    ├── class-cli.py
    ├── menu-op.py
    └── sys-aut.py

## Desafios

### 1. Classificador de Cliente (`class-cli`)

Recebe idade e renda do cliente e classifica em Bronze, Prata, Ouro ou Diamante.

Regras aplicadas:

- Idade menor que 18 → Bronze
- Renda menor que 2000 → Bronze
- Renda menor que 5000 → Prata
- Renda menor que 10000 → Ouro
- Caso contrário → Diamante

Estrutura usada: `if` / `elif` / `else` (Python) e `se` / `senao se` / `senao` (Portugol).

### 2. Menu de Operações Matemáticas (`menu-op`)

Exibe menu com 4 operações, lê a escolha do usuário e dois números, e executa
a operação correspondente.

Estrutura usada:

- Python: `match` / `case` / `case _`
- Portugol: `escolha` / `caso` / `outrocaso`

Trata divisão por zero no caso 4.

### 3. Análise de Números (`anali-num`)

Lê 5 números via `input()` e calcula soma, média, maior e menor valor.

Estrutura usada: `for` (Python) e `para ... faca` (Portugol).

Detalhes:

- O maior e o menor são inicializados com o primeiro número lido (em Portugol)
  ou com `None` (em Python), evitando bugs com valores negativos.
- `range(1, 6)` gera 1, 2, 3, 4, 5 (limite final exclusivo).

### 4. Sistema de Autenticação (`sys-aut`)

Solicita senha até acertar ou até atingir 3 tentativas, contando tentativas
e bloqueando acesso após 3 erros.

Estrutura usada: `while` (Python) e `enquanto ... faca` (Portugol).

Detalhes:

- A variável `tentativas` é atualizada dentro do laço para evitar loop infinito.
- Senha correta: `python123`.
- Máximo de tentativas: 3.

## Como executar

Python:

    python sem-2/python/class-cli.py
    python sem-2/python/menu-op.py
    python sem-2/python/anali-num.py
    python sem-2/python/sys-aut.py

Portugol: abrir os arquivos `.por` no **Portugol Studio** ou **Visualg** e executar.

## Conceitos aplicados

| Conceito | Onde aparece |
|---|---|
| `if` / `elif` / `else` | `class-cli.py` |
| `match` / `case` | `menu-op.py` |
| `for` | `anali-num.py` |
| `while` | `sys-aut.py` |
| f-strings | Todos os scripts Python |
| Nomes descritivos (PEP 8) | Todos os scripts Python |
| `se` / `senao se` / `senao` | `class-cli.por` |
| `escolha` / `caso` / `outrocaso` | `menu-op.por` |
| `para ... faca` | `anali-num.por` |
| `enquanto ... faca` | `sys-aut.por` |

## Checklist do enunciado

| Requisito | Arquivo Python | Arquivo Portugol |
|---|---|---|
| Classificador de Cliente | `class-cli.py` | `class-cli.por` |
| Menu de Operações Matemáticas | `menu-op.py` | `menu-op.por` |
| Análise de Números | `anali-num.py` | `anali-num.por` |
| Sistema de Autenticação | `sys-aut.py` | `sys-aut.por` |
| f-strings na saída | ✅ | — |
| Nomes descritivos (PEP 8) | ✅ | — |
| Versão em Portugal | — | ✅ |
| Versão em Python | ✅ | — |
