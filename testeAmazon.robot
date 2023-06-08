*** Settings ***
Documentation
Resource    amazonResources.robot
Test Setup  Abrir o Navegador
*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Eletrônicos"
   [Documentation]     Esse teste verifica a tela inicial do site amazon.com.br
   [Tags]              Menus
    Acessar a Home Page do site amazon.com.br    