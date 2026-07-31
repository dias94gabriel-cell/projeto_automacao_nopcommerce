*** Settings ***
Resource    base.robot


*** Keywords ***

Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Fazendo Login no Site
    Abrir o navegador
    Acesso ao Site
    Preencho Campo de Login
    Preencho Campo de Senha
    Clico no Botão de Login

    
# criar acesso a app swag labs