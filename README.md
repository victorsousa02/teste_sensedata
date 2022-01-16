# OBJETIVO

Validar de forma automática a compra de produtos no [site](https://www.saucedemo.com/). 

# REQUISITOS

- [Python](https://www.python.org/downloads/) 3.8.2 ou maior

- [Robot Framework](https://robotframework.org/?tab=1#getting-started) - 3.2.2

- [Chrome Drive](https://chromedriver.storage.googleapis.com/index.html) de acordo com a versão do navegador instalado

- [Selenium Library](https://github.com/robotframework/SeleniumLibrary/#installation)

# INSTALAÇÃO

## Windows

- Instalação do Python

```
https://www.python.org/downloads/
```

- Validar instalação

```
pip --version
```

- Instalação do Robot Framework

```
pip install robotframework
```

- Instalação das bibliotecas exigidas

```
pip install -r requirements.txt
```

*requiriments.txt: arquivo dentro do projeto que contém todas as bibliotecas necessárias para a automação*

# Diretrizes para a criação dos testes

- Criação dos testes em gherkin utilizando técnica BDD

# Bibliotecas utilizadas

[Selenium Library](https://github.com/robotframework/SeleniumLibrary/#installation)

## Como executar os testes

Abra o terminal e execute o seguinte comando.

```
robot -d (caminho desejado para o report) (caminho dos testes)

Executar com tag
robot -d (caminho desejado para o report) -i (tag) (pasta raiz de onde estão os testes)


Ex: robot -d Result -i TC0001 tests
```