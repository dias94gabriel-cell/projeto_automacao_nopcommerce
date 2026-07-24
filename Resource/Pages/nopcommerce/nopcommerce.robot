*** Settings ***
Resource       ../../Utils/base.robot

*** Variables ***

${CAMPO_EMAIL}         //input[@id='user-name']
${CAMPO_SENHA}         //input[@id='password']
${LOGIN_BUTTON}        //input[@id='login-button']
${ADD_TO_CART}         //button[@id='add-to-cart-sauce-labs-backpack']
${CARRINHO}            //a[@class='shopping_cart_link']
${PRODUTO_CARRINHO}    //div[@class='cart_item']
${REMOVER_PRODUTO}     (//button[normalize-space()='Remove'])[1]
${CONTINUE_SHOPPING}   //button[@id='continue-shopping']
${SEGUNDO_PRODUTO}     //button[@id='add-to-cart-sauce-labs-bike-light']
${CHECKOUT}            //button[@id='checkout']
${FIRST_NAME}          //input[@id='first-name']    
${LAST_NAME}           //input[@id='last-name']
${ZIP_CODE}            //input[@id='postal-code']
${CONTINUE}            //input[@id='continue']
${FINISH}              (//button[normalize-space()='Finish'])[1]
${GENERATE_PDF}        //button[@id='generate-pdf-order']
${BACK_HOME}           //button[@id='back-to-products']


*** Keywords ***

Acesso ao Site
    Abrir o navegador
    Go To    url=${URL_SITE}

Preencho Campo de Login
    Click Element    ${CAMPO_EMAIL}
    Input Text    id=user-name   ${USER_LOGIN}

Preencho Campo de Senha
    Click Element    ${CAMPO_SENHA}
    Input Text    id=password    ${PASSWORD_LOGIN}

Clico no Botão de Login
    Click Element    ${LOGIN_BUTTON}

Clico em Add to Cart
    Wait Until Element Is Visible    ${ADD_TO_CART}    timeout=10s
    Click Button    ${ADD_TO_CART}

Clico no Carrinho
    Click Element    ${CARRINHO}

Valido Produto no Carrinho
    Element Should Be Visible   ${PRODUTO_CARRINHO}
    
Clico em Remover Produto
    Click Button    ${REMOVER_PRODUTO}

Clico em Continue Shopping
    Click Button    ${CONTINUE_SHOPPING}

Incluo outro Produto no Carrinho
    Click Button    ${SEGUNDO_PRODUTO}

Clico em Checkout
    Click Button    ${CHECKOUT}

Preencho First Name
    Sleep    5s
    Click Element    ${FIRST_NAME}
    Input Text    id=first-name    ${FIRST_NAME_VALUE}

Preencho Last Name
    Click Element    ${LAST_NAME}
    Input Text    id=last-name    ${LAST_NAME_VALUE}
Preencho Zip Code
    Click Element    ${ZIP_CODE}
    Input Text    id=postal-code    ${ZIP_CODE_VALUE}

Clico em Continue
    Click Button    ${CONTINUE}

Clico em Finish
    Sleep     3s
    Press Keys    NONE    PAGE_DOWN
    Sleep     3s
    Wait Until Element Is Visible    ${FINISH}    timeout=10s
    Sleep     3s
    Click Button  ${FINISH}

Clico em Generate PDF order
    Click Button    ${GENERATE_PDF}

Clico em Back Home
    Click Button    ${BACK_HOME}