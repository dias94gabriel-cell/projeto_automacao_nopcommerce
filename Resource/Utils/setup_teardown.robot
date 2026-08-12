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
    Preencher Campo de Login
    Preencher Campo de Senha
    Clicar no Botão de Login
