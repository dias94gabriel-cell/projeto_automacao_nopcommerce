*** Settings ***
Resource    ../../Resource/Utils/base.robot

Test Setup       Fazendo Login no Site
Test Teardown    Fechar o navegador

*** Test Cases ***

CT001 - Valida inserção de produto no carrinho
   When Clicar em Add to Cart
   And Clicar no Carrinho
   Then Validar Produto no Carrinho  

CT002 - Valida remoção de produto do Carrinho
   When Clicar em Add to Cart
   And Clicar no Carrinho
   Then Clicar em Remover Produto

CT003 - Valida inclusão de produto no Carrinho e continuidade da compra
   When Clicar em Add to Cart
   And Clicar no Carrinho
   And Clicar em Continue Shopping
   And Incluir outro Produto no Carrinho
   Then Clicar no Carrinho

CT004 - Realiza o Checkout e Valida Funcionamento
   When Clicar em Add to Cart
   And Clicar no Carrinho
   And Clicar em Checkout
   And Preencher Dados do Cliente
   And Clicar em Continue
   Then Clicar em Finish

CT005 - Realiza o Checkout e Gera PDF
   When Clicar em Add to Cart
   And Clicar no Carrinho
   And Clicar em Checkout
   And Preencher Dados do Cliente
   And Clicar em Continue
   And Clicar em Finish
   Then Clicar em Generate PDF order

CT006 - Valida Checkout Funcionando e Retorno a Home Page
   When Clicar em Add to Cart
   And Clicar no Carrinho
   And Clicar em Checkout
   And Preencher Dados do Cliente
   And Clicar em Continue
   And Clicar em Finish
   Then Clicar em Back Home