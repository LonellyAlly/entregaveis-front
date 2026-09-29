# Semana 03 — Modularização, Funções e Escopo

Resolução do Desafio Sprint 3, aplicando funções, parâmetros, retorno,
escopo, criação de módulos, `*args`, `**kwargs`, recursividade e cópia
defensiva de listas. Cada exercício tem versão em **Python** e em **Portugol**.

## Estrutura

sem-3/
├── README.md
├── portugol/
│   ├── calculadora.por
│   ├── utilidades.por
│   ├── lista_segura.por
│   ├── estatistica.por
│   └── principal.por
└── python/
    ├── calculadora.py
    ├── utilidades.py
    ├── lista_segura.py
    ├── estatistica.py
    └── principal.py

## Módulos

### calculadora

Funções matemáticas básicas.

| Função | Descrição | Retorno |
|---|---|---|
| `somar(a, b)` | Soma dois números | `a + b` |
| `subtrair(a, b)` | Subtrai dois números | `a - b` |
| `multiplicar(a, b)` | Multiplica dois números | `a * b` |
| `dividir(a, b)` | Divide dois números | `a / b` ou `None` se `b == 0` |

`dividir` retorna `None` quando o divisor é zero, evitando que o programa
quebre com `ZeroDivisionError`.

### utilidades

| Função | Descrição |
|---|---|
| `converter_temperatura(valor, origem, destino)` | Converte entre C, F e K. |
| `validar_senha(senha)` | Retorna lista de problemas da senha. |
| `caixa(*precos, desconto=0.0)` | Calcula subtotal, desconto e total. |
| `ficha_aluno(**dados)` | Exibe ficha com pares `chave=valor`. |

Regras do validador de senha:

- mínimo 8 caracteres;
- pelo menos 1 letra maiúscula;
- pelo menos 1 letra minúscula;
- pelo menos 1 número;
- pelo menos 1 caractere especial.

### lista_segura

Cópia defensiva: as funções retornam uma nova lista sem alterar a original.

| Função | Descrição |
|---|---|
| `adicionar_item(lista_original, item)` | Nova lista com o item adicionado. |
| `adicionar_varios(lista_original, *itens)` | Nova lista com vários itens. |

### estatistica (bônus)

| Função | Descrição |
|---|---|
| `media(numeros)` | Média aritmética. Retorna `None` se lista vazia. |
| `mediana(numeros)` | Mediana da lista ordenada. Retorna `None` se vazia. |
| `moda(numeros)` | Valor mais frequente. Retorna `None` se vazia. |
| `fatorial(numero)` | Fatorial recursivo. Lança `TypeError` / `ValueError`. |
| `relatorio(titulo, *linhas, **config)` | Relatório formatado. |

O alias `est` é criado no arquivo que importa:

    import estatistica as est

### principal

Script principal que importa todos os módulos e executa chamadas de
demonstração, comprovando o reaproveitamento de código.

## Como executar

Python:

    python sem-3/python/calculadora.py
    python sem-3/python/principal.py

Portugol: abrir os arquivos `.por` no **Portugol Studio** ou **Visualg**.

## Conceitos aplicados

| Conceito | Onde aparece |
|---|---|
| Funções | Todos os módulos |
| Parâmetros | `somar(a, b)`, `converter_temperatura(valor, origem, destino)` |
| Retorno | Todas as funções usam `return` / `retorne` |
| Escopo | Variáveis locais em cada função |
| Módulos | `calculadora`, `utilidades`, `lista_segura`, `estatistica` |
| Importação | `principal.py` importa todos |
| `*args` | `caixa(*precos)`, `relatorio(*linhas)` |
| `**kwargs` | `ficha_aluno(**dados)`, `relatorio(**config)` |
| Recursividade | `fatorial` |
| Cópia defensiva | `adicionar_item` usa `.copy()` |
| Alias de módulo | `import estatistica as est` |

## Checklist do enunciado

| Requisito | Arquivo Python | Arquivo Portugol |
|---|---|---|
| `somar`, `subtrair`, `multiplicar` | `calculadora.py` | `calculadora.por` |
| `dividir(a, b)` com divisão por zero | `calculadora.py` | `calculadora.por` |
| Conversor de temperatura | `utilidades.py` | `utilidades.por` |
| Validador de senha | `utilidades.py` | `utilidades.por` |
| Caixa com `*precos` | `utilidades.py` | `utilidades.por` |
| Ficha do aluno com `**dados` | `utilidades.py` | `utilidades.por` |
| Script principal | `principal.py` | `principal.por` |
| Lista segura (cópia defensiva) | `lista_segura.py` | `lista_segura.por` |
| Versões em Portugal | — | Todos `.por` |
| Bônus: `estatistica` + alias `est` | `estatistica.py` | `estatistica.por` |
| Bônus: `fatorial` recursivo | `estatistica.py` | `estatistica.por` |
| Bônus: `relatorio(titulo, *linhas, **config)` | `estatistica.py` | `estatistica.por` |
