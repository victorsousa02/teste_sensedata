def add_produto_locator(conteudo): #keyword para criar o locator do botão de adicionar o produto ao carrinho
    conteudo=conteudo.replace(" ","-")
    print(conteudo)
    conteudo = conteudo.lower()
    print(conteudo)
    conteudo=str(conteudo)
    id="id=add-to-cart-" + conteudo
    return id

def add_text_locator(conteudo): #Keyword para criar o locator por id
    conteudo=conteudo.replace(" ","-")
    print(conteudo)
    conteudo = conteudo.lower()
    print(conteudo)
    conteudo=str(conteudo)
    id="id=" + conteudo
    return id