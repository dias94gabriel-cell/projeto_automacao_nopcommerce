*** Settings ***
Resource    ../../Resource/Utils/base.robot

Test Setup       Acesso ao Site
Test Teardown    Fechar o navegador

*** Test Cases ***

Fazendo Login no Site
   When Preencho Campo de Login
   And Preencho Campo de Senha
   Then Clico no Botão de Login

Incluindo Produto no Carrinho e abrindo o Carrinho
   When Preencho Campo de Login
   And Preencho Campo de Senha
   And Clico no Botão de Login
   And Clico em Add to Cart
   And Clico no Carrinho
   Then Valido Produto no Carrinho

Remover produto do Carrinho
   When Preencho Campo de Login
   And Preencho Campo de Senha
   And Clico no Botão de Login
   And Clico em Add to Cart
   And Clico no Carrinho
   And Clico em Remover Produto
   # Then Valido Produto Removido do Carrinho

Incluindo Produto no Carrinho e Continuo Comprando
   When Preencho Campo de Login
   And Preencho Campo de Senha
   And Clico no Botão de Login
   And Clico em Add to Cart
   And Clico no Carrinho
   And Clico em Continue Shopping
   And Incluo outro Produto no Carrinho
   Then Clico no Carrinho

Checkout Funcionando
   When Preencho Campo de Login
   And Preencho Campo de Senha
   And Clico no Botão de Login
   And Clico em Add to Cart
   And Clico no Carrinho
   And Clico em Checkout
   And Preencho First Name
   And Preencho Last Name
   And Preencho Zip Code
   And Clico em Continue
   Then Clico em Finish

Checkout Funcionando e Gerando PDF
   When Preencho Campo de Login
   And Preencho Campo de Senha
   And Clico no Botão de Login
   And Clico em Add to Cart
   And Clico no Carrinho
   And Clico em Checkout
   And Preencho First Name
   And Preencho Last Name
   And Preencho Zip Code
   And Clico em Continue
   And Clico em Finish
   Then Clico em Generate PDF order

Checkout Funcionando e Voltando a Home Page
   When Preencho Campo de Login
   And Preencho Campo de Senha
   And Clico no Botão de Login
   And Clico em Add to Cart
   And Clico no Carrinho
   And Clico em Checkout
   And Preencho First Name
   And Preencho Last Name
   And Preencho Zip Code
   And Clico em Continue
   And Clico em Finish
   Then Clico em Back Home