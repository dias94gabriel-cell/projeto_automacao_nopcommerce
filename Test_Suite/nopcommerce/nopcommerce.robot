*** Settings ***
Resource    ../../Resource/Utils/base.robot

Test Setup       Fazendo Login no Site
Test Teardown    Fechar o navegador

*** Test Cases ***
CT001 - Valida inserção de produto no carrinho
   When Clicar Em    ADD_TO_CART
   And Clicar Em    CARRINHO 
   Then Validar Elemento    PRODUTO_CARRINHO

CT002 - Valida remoção de produto do Carrinho
  When Clicar Em    ADD_TO_CART
  And Clicar Em    CARRINHO
  Then Clicar Em   REMOVER_PRODUTO

CT003 - Valida inclusão de produto no Carrinho e continuidade da compra
   When Clicar Em    ADD_TO_CART
   And Clicar Em    CARRINHO
   And Clicar Em   CONTINUE_SHOPPING
   And Clicar Em   SEGUNDO_PRODUTO
   Then Clicar Em   CARRINHO

CT004 - Realiza o Checkout e Valida Funcionamento
   When Clicar Em    ADD_TO_CART
   And Clicar Em    CARRINHO
   And Clicar Em    CHECKOUT
   And Preencher Dados do Cliente
   And Clicar Em    CONTINUE
   Then Clicar Em    FINISH

CT005 - Realiza o Checkout e Gera PDF
   When Clicar Em    ADD_TO_CART
   And Clicar Em    CARRINHO
   And Clicar Em    CHECKOUT
   And Preencher Dados do Cliente
   And Clicar Em    CONTINUE
   Then Clicar Em    FINISH
   Then Clicar Em   GENERATE_PDF

CT006 - Valida Checkout Funcionando e Retorno a Home Page
   When Clicar Em    ADD_TO_CART
   And Clicar Em    CARRINHO
   And Clicar Em    CHECKOUT
   And Preencher Dados do Cliente
   And Clicar Em    CONTINUE
   Then Clicar Em    FINISH
   Then Clicar Em   BACK_HOME