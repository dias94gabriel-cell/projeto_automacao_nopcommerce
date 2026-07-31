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

Clico em Add to Cart
    Wait Until Element Is Visible    ${ADD_TO_CART}    timeout=10s
    Click Button    ${ADD_TO_CART}

Clico no Carrinho
    Wait Until Element Is Visible    ${CARRINHO}    timeout=10s
    Click Element    ${CARRINHO}

Valido Produto no Carrinho
    Wait Until Element Is Visible    ${PRODUTO_CARRINHO}    timeout=10s
    Element Should Be Visible   ${PRODUTO_CARRINHO}
    
Clico em Remover Produto
    Wait Until Element Is Visible    ${REMOVER_PRODUTO}    timeout=10s
    Click Button    ${REMOVER_PRODUTO}

Clico em Continue Shopping
    Wait Until Element Is Visible    ${CONTINUE_SHOPPING}    timeout=10s
    Click Button    ${CONTINUE_SHOPPING}

Incluo outro Produto no Carrinho
    Wait Until Element Is Visible    ${SEGUNDO_PRODUTO}    timeout=10s
    Click Button    ${SEGUNDO_PRODUTO}

Clico em Checkout
    Wait Until Element Is Visible    ${CHECKOUT}    timeout=10s
    Click Button    ${CHECKOUT}

Preencho First Name
    Sleep     3s
    Press Keys    NONE    ENTER
    Sleep     3s
    Wait Until Element Is Visible    ${FIRST_NAME}    timeout=10s
    Input Text    id=first-name    ${FIRST_NAME_VALUE}

Preencho Last Name
    Sleep     3s
    Wait Until Element Is Visible    ${LAST_NAME}    timeout=10s
    Input Text    id=last-name    ${LAST_NAME_VALUE}
Preencho Zip Code
    Wait Until Element Is Visible    ${ZIP_CODE}    timeout=10s
    Input Text    id=postal-code    ${ZIP_CODE_VALUE}

Clico em Continue
    Wait Until Element Is Visible    ${CONTINUE}    timeout=10s
    Click Button    ${CONTINUE}

Clico em Finish
    Sleep     3s
    Press Keys    NONE    PAGE_DOWN
    Sleep     3s
    Wait Until Element Is Visible    ${FINISH}    timeout=10s
    Sleep     3s
    Click Button  ${FINISH}

Clico em Generate PDF order
    Wait Until Element Is Visible    ${GENERATE_PDF}    timeout=10s
    Click Button    ${GENERATE_PDF}

Clico em Back Home
    Wait Until Element Is Visible    ${BACK_HOME}    timeout=10s
    Click Button    ${BACK_HOME}