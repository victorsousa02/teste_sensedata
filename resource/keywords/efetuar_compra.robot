*** Keywords ***
abrir o navegador
    [Documentation]            Keyword responsável por abrir o navegador já no site pretendido
    Open Browser               ${URL_SITE}                                                        ${BROWSER}
    Maximize Browser Window

fechar o navegador
    [Documentation]    Keyword responsável por fechar o navegador
    Close Browser

realizo login
    [Documentation]    Keyword responsável por fazer o login
    Input Text         ${CAMPO_USERNAME}                        ${USERNAME}
    Input Text         ${CAMPO_PASSWORD}                        ${PASSWORD}
    Click Element      ${BTN_LOGIN}

ordeno os produtos pelo valor "${ORDENAR}"
    [Documentation]                     Keyword responsável por ordenar a lista de produtos do site
    Wait Until Page Contains Element    ${CATEGORIA_PRODUTOS}
    Select From List By Label           ${BTN_ORDENAR}                                                 ${ORDENAR}

seleciono o produto "${PRODUTO}"
    [Documentation]    Keyword responsável por selecionar o produto
    ${ID_PRODUTO}      add produto locator                             ${PRODUTO}
    Click Element      ${ID_PRODUTO}

acesso o carrinho de compras
    [Documentation]    Keyword responsável por acessar o carrinho de compras
    Click Element      ${CARRINHO}

clicar em "${BOTAO}"
    [Documentation]    Keyword responsável por clicar no botão indicado
    ${BTN}             add text locator                                    ${BOTAO}
    Click Element      ${BTN}

preencho meu nome e cep
    [Documentation]    Keyword responsável por preecher as informações
    Input Text         ${CAMPO_FIRST_NAME}                                ${FIRST_NAME}
    Input Text         ${CAMPO_LAST_NAME}                                 ${LAST_NAME}
    Input Text         ${CAMPO_CEP}                                       ${CEP}

devo finalizar a compra
    [Documentation]              Keyword responsável por verificar se realmente a compra foi finalizada com sucesso
    Page Should Contain          ${FINISH_TEXT_1} 
    Page Should Contain          ${FINISH_TEXT_2} 
    Page Should Contain          ${FINISH_TEXT_3} 
    Page Should Contain Image    ${FINISH_IMAGE_1} 
    Capture Page Screenshot      image_finish-{index}.png