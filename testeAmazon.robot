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
Caso de Teste 02
   [Documentation]     Esse teste pesquisa produtos do site amazon.com.br
   [Tags]              Pesquisa
    Abrir o Navegador
    Acessar a Home Page do site amazon.com.br
    Digitar o nome do produto "Xbox Series S" no campo de pesquisa
    Clicar no botão pesquisa
    Verificar se o resultado da pesquisa está listando "Console Xbox Series S"