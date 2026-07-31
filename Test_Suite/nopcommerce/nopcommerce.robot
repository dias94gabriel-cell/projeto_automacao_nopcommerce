*** Settings ***
Resource    ../../Resource/Utils/base.robot

Test Setup       Fazendo Login no Site
Test Teardown    Fechar o navegador

*** Test Cases ***
# Fazendo Login no Site
#    When Preencho Campo de Login
#    And Preencho Campo de Senha
#    Then Clico no Botão de Login

Incluindo Produto no Carrinho e abrindo o Carrinho - valida inserção de produto no carrinho
   When Clico em Add to Cart
   And Clico no Carrinho
   Then Valido Produto no Carrinho

Remover produto do Carrinho
   When Clico em Add to Cart
   And Clico no Carrinho
   And Clico em Remover Produto
   # Then Valido Produto Removido do Carrinho

Incluindo Produto no Carrinho e Continuo Comprando
   When Clico em Add to Cart
   And Clico no Carrinho
   And Clico em Continue Shopping
   And Incluo outro Produto no Carrinho
   Then Clico no Carrinho

Checkout Funcionando
   When Clico em Add to Cart
   And Clico no Carrinho
   And Clico em Checkout
   And Preencho First Name
   And Preencho Last Name
   And Preencho Zip Code
   And Clico em Continue
   Then Clico em Finish

Checkout Funcionando e Gerando PDF
   When Clico em Add to Cart
   And Clico no Carrinho
   And Clico em Checkout
   And Preencho First Name
   And Preencho Last Name
   And Preencho Zip Code
   And Clico em Continue
   And Clico em Finish
   Then Clico em Generate PDF order

Checkout Funcionando e Voltando a Home Page
   When Clico em Add to Cart
   And Clico no Carrinho
   And Clico em Checkout
   And Preencho First Name
   And Preencho Last Name
   And Preencho Zip Code
   And Clico em Continue
   And Clico em Finish
   Then Clico em Back Home