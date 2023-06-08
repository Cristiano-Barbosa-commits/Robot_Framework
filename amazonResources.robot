*** Settings ***

Library  SeleniumLibrary

*** Variables ***
${URL}        https://www.amazon.com.br/
${MENU_ELETRONICOS}        //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]

*** Keywords ***
Abrir o Navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Acessar a Home Page do site amazon.com.br
    go to  url=${URL}

    Wait Until Page Contains    Locator=${MENU_ELETRONICOS}

Entrar no menu "Eletrônicos"

    Click Element       locator=${MENU_ELETRONICOS}

Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains    text=${FRASE}

Verificar se o título da página fica "${TITULO}"
    Title Should be      title=${TITLE}
