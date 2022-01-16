*** Keywords ***
abrir o navegador
    Open Browser               ${URL_SITE}    ${BROWSER}
    Maximize Browser Window

fechar o navegador
    Close Browser

realizo login
    Input Text       ${CAMPO_USERNAME}    ${USERNAME}
    Input Text       ${CAMPO_PASSWORD}    ${PASSWORD}
    Click Element    ${BTN_LOGIN}

ordeno os produtos pelo valor "${ORDENAR}"
    Wait Until Page Contains Element    ${CATEGORIA_PRODUTOS}
    Select From List By Label           ${BTN_ORDENAR}           ${ORDENAR}

seleciono o produto "${PRODUTO}"
    ${ID_PRODUTO}    add produto locator    ${PRODUTO}
    Click Element    ${ID_PRODUTO}

acesso o carrinho de compras
    Click Element    ${CARRINHO}

clicar em "${BOTAO}"
    ${BTN}           add text locator    ${BOTAO}
    Click Element    ${BTN}

preencho meu nome e cep
    Input Text    ${CAMPO_FIRST_NAME}    ${FIRST_NAME}
    Input Text    ${CAMPO_LAST_NAME}     ${LAST_NAME}
    Input Text    ${CAMPO_CEP}           ${CEP}

devo finalizar a compra
    Page Should Contain          ${FINISH_TEXT_1} 
    Page Should Contain          ${FINISH_TEXT_2} 
    Page Should Contain          ${FINISH_TEXT_3} 
    Page Should Contain Image    ${FINISH_IMAGE_1} 
    Capture Page Screenshot        image_finish-{index}.png