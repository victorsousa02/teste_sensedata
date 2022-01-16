def add_produto_locator(conteudo):
    conteudo=conteudo.replace(" ","-")
    print(conteudo)
    conteudo = conteudo.lower()
    print(conteudo)
    conteudo=str(conteudo)
    id="id=add-to-cart-" + conteudo
    return id

def add_text_locator(conteudo):
    conteudo=conteudo.replace(" ","-")
    print(conteudo)
    conteudo = conteudo.lower()
    print(conteudo)
    conteudo=str(conteudo)
    id="id=" + conteudo
    return id