*** Settings ***
Resource       ../../Utils/base.robot

*** Variables ***

${CAMPO_EMAIL}         //input[@id='user-name']
${CAMPO_SENHA}         //input[@id='password']
${LOGIN_BUTTON}        //input[@id='login-button']

*** Keywords ***

Acesso ao Site
    Abrir o navegador
    Go To    url=${URL_SITE}

Preencher Campo de Login
    Click Element    ${CAMPO_EMAIL}
    Input Text    id=user-name   ${USER_LOGIN}

Preencher Campo de Senha
    Click Element    ${CAMPO_SENHA}
    Input Text    id=password    ${PASSWORD_LOGIN}

Clicar no Botão de Login
    Click Element    ${LOGIN_BUTTON}