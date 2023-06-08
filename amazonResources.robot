*** Settings ***

Library  SeleniumLibrary

*** Variables ***
${URL}        https://www.amazon.com.br/
${MENU_ELETRONICOS}    //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]

*** Keywords ***
Abrir o Navegador
    Open Browser    browser=chrome



Acessar a Home Page do site amazon.com.br
    go to  URL=${URL}

    Wait Until Page Contains    Locator=${MENU_ELETRONICOS}