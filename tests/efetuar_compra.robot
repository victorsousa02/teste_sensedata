*** Settings ***
Resource         ../resource/main.robot
Test Setup       abrir o navegador
Test Teardown    fechar o navegador

*** Test Cases ***
TC0001: Efetua um compra no site Swag Labs
    [Tags]                                                       TC0001
    [Documentation]                                              Teste que valida uma compra no site 
    Dado que realizo login
    E ordeno os produtos pelo valor "Price (low to high)"
    E seleciono o produto "Sauce Labs Onesie"
    E seleciono o produto "Test.allTheThings() T-Shirt (Red)"
    E acesso o carrinho de compras
    E clicar em "checkout"
    E preencho meu nome e cep
    E clicar em "continue"
    Quando clicar em "finish"
    Então devo finalizar a compra