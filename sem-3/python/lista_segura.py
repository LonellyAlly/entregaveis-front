def adicionar_item(lista_original, item):
    nova_lista = lista_original.copy()
    nova_lista.append(item)
    return nova_lista


def adicionar_varios(lista_original, *itens):
    nova_lista = lista_original.copy()
    nova_lista.extend(itens)
    return nova_lista
