*** Settings ***

Documentation
Resource    amazonResources.robot
Test Setup  Abrir o Navegador
*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Eletrônicos"
   [Documentation]     Esse teste verifica a tela inicial do site amazon.com.br
   [Tags]              Menus
   Abrir o Navegador
   Acessar a Home Page do site amazon.com.br    
   Entrar no menu "Eletrônicos"
   Verificar se aparece a frase "Eletrônicos e Tecnologia"
   Verificar se o título da página fica "Eletrônicos e Tecnologia| Amazon.com.br"
Caso de Teste 02 - Buscar Produto Xbox Series S no site
   [Documentation]     Esse teste pesquisa produtos do site amazon.com.br
   [Tags]              Pesquisa
    Abrir o Navegador
    Acessar a Home Page do site amazon.com.br
    Digitar o nome do produto "Xbox Series S" no campo de pesquisa
    Clicar no botão pesquisa
    Verificar se o resultado da pesquisa está listando "Console Xbox Series S"

Caso de Teste 03 - selecionar um produto e colocar no carrinho de compras
    [Documentation]     Esse teste coloca o produto selecionado no carrinho de compras
    [Tags]               Compras
    Abrir o Navegador
    Acessar a Home Page do site amazon.com.br
    Digitar o nome do produto "Xbox Series S" no campo de pesquisa
    Clicar no botão pesquisa
    Verificar se o resultado da pesquisa está listando "Console Xbox Series S"
    Adicionar o Produto "Console Xbox Series S" na lista de compras

Caso de teste 04 - Finalizar a compra de um produto 
     [Documentation]     Esse teste finaliza a compra de um produto com pix
     [Tags]               Compras
    Abrir o Navegador
    Acessar a Home Page do site amazon.com.br
    Ir na aba de lista de compras
    Clicar no botão finalizar compra
    Verificar se a compra foi efetuada

Caso de teste 05 - Tentar realizar um login sem as devidas credenciais 
     [Documentation]     Esse teste verifica a possibilidade de efetuar o login sem as credenciais corretas
     [Tags]               Login
    Abrir o Navegador
    Acessar a Home Page do site amazon.com.br
    Ir na aba Faça Seu Login
    Inserir um email incorreto
    Clicar em "Continuar"
    Verificar se aaprece um alerta
