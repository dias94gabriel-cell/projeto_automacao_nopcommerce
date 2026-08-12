#Inserir aqui as bibliotecas e caminho dos arquivos de recurso comuns a todas as suítes de testes do projeto.
* Settings *
Library    SeleniumLibrary
Library    String
Library    DateTime
Library    XML
Library    Collections
# Library    JSONLibrary
Library    RequestsLibrary
Library    custom_keywords.py
Library    OperatingSystem
Library    BuiltIn
Library    FakerLibrary


### data ###
Resource    ../Data/global.robot

### fixture ###

### pages ###
Resource    ../Pages/nopcommerce/nopcommerce.robot

### service ###
Resource    ../Service/Login/login.robot

### utils ###
Resource    setup_teardown.robot
Resource    secrets.robot