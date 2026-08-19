*** Settings ***
Resource       ../../Utils/base.robot

*** Variables ***
${FIRST_NAME}          //input[@id='first-name']    
${LAST_NAME}           //input[@id='last-name']
${ZIP_CODE}            //input[@id='postal-code']
&{ELEMENTOS}
...    ADD_TO_CART=//button[@id='add-to-cart-sauce-labs-backpack']
...    CARRINHO=//a[@class='shopping_cart_link']
...    REMOVER_PRODUTO=(//button[normalize-space()='Remove'])[1]
...    CONTINUE_SHOPPING=//button[@id='continue-shopping']
...    SEGUNDO_PRODUTO=//button[@id='add-to-cart-sauce-labs-bike-light']
...    CHECKOUT=//button[@id='checkout']
...    CONTINUE=//input[@id='continue']
...    FINISH=(//button[normalize-space()='Finish'])[1]
...    GENERATE_PDF=//button[@id='generate-pdf-order']
...    BACK_HOME=//button[@id='back-to-products']
...    PRODUTO_CARRINHO=//div[@class='cart_item']

*** Keywords ***
Clicar Em
    [Arguments]    ${nome}
    Dictionary Should Contain Key    ${ELEMENTOS}    ${nome}
    ${locator}=    Get From Dictionary    ${ELEMENTOS}    ${nome}
    Sleep    2s
    Wait Until Element Is Visible    ${locator}    10s
    Click Element    ${locator}

Validar Elemento
    [Arguments]    ${nome}
    Dictionary Should Contain Key    ${ELEMENTOS}    ${nome}
    ${locator}=    Get From Dictionary    ${ELEMENTOS}    ${nome}
    Element Should Be Visible    ${locator}
    
Preencher Dados do Cliente
    Sleep     3s
    Wait Until Element Is Visible    ${FIRST_NAME}    timeout=10s
    ${cliente}=    Gerar Dados Cliente
    Input Text    ${FIRST_NAME}    ${cliente['first_name']}
    Input Text    ${LAST_NAME}     ${cliente['last_name']}
    Input Text    ${ZIP_CODE}      ${cliente['zip_code']}