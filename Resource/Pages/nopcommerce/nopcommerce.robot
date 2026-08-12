*** Settings ***
Resource       ../../Utils/base.robot

*** Variables ***
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

Clicar em Add to Cart
    Wait Until Element Is Visible    ${ADD_TO_CART}    timeout=10s
    Click Button    ${ADD_TO_CART}

Clicar no Carrinho
    Wait Until Element Is Visible    ${CARRINHO}    timeout=10s
    Click Element    ${CARRINHO}

Validar Produto no Carrinho
    Wait Until Element Is Visible    ${PRODUTO_CARRINHO}    timeout=10s
    Element Should Be Visible   ${PRODUTO_CARRINHO}
    
Clicar em Remover Produto
    Wait Until Element Is Visible    ${REMOVER_PRODUTO}    timeout=10s
    Click Button    ${REMOVER_PRODUTO}

Clicar em Continue Shopping
    Wait Until Element Is Visible    ${CONTINUE_SHOPPING}    timeout=10s
    Click Button    ${CONTINUE_SHOPPING}

Incluir outro Produto no Carrinho
    Wait Until Element Is Visible    ${SEGUNDO_PRODUTO}    timeout=10s
    Click Button    ${SEGUNDO_PRODUTO}

Clicar em Checkout
    Wait Until Element Is Visible    ${CHECKOUT}    timeout=10s
    Click Button    ${CHECKOUT}

Preencher Dados do Cliente
    Sleep     2s
    Wait Until Element Is Visible    ${FIRST_NAME}    timeout=10s
    ${cliente}=    Gerar Dados Cliente
    Input Text    ${FIRST_NAME}    ${cliente['first_name']}
    Input Text    ${LAST_NAME}     ${cliente['last_name']}
    Input Text    ${ZIP_CODE}      ${cliente['zip_code']}

Clicar em Continue
    Wait Until Element Is Visible    ${CONTINUE}    timeout=10s
    Click Button    ${CONTINUE}

Clicar em Finish
    Sleep     3s
    Press Keys    NONE    PAGE_DOWN
    Sleep     3s
    Wait Until Element Is Visible    ${FINISH}    timeout=10s
    Sleep     3s
    Click Button  ${FINISH}

Clicar em Generate PDF order
    Wait Until Element Is Visible    ${GENERATE_PDF}    timeout=10s
    Click Button    ${GENERATE_PDF}

Clicar em Back Home
    Wait Until Element Is Visible    ${BACK_HOME}    timeout=10s
    Click Button    ${BACK_HOME}