*** Settings ***

Library  SeleniumLibrary

*** Variables ***
${URL}        https://www.amazon.com.br/
${MENU_ELETRONICOS}        //a[contains(@class,'nav-logo-link nav-progressive-attribute')]

*** Keywords ***
Abrir o Navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Acessar a Home Page do site amazon.com.br
    go to  url=${URL}

#    Wait Until Page Contains    Locator=${MENU_ELETRONICOS}

Entrar no menu "Eletrônicos"

    Click Element       locator=${MENU_ELETRONICOS}

Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains    text=${FRASE}

Verificar se o título da página fica "${TITULO}"
    Title Should be      title=${TITULO}

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text       locator=twotabsearchtextbox     text=${PRODUTO} 


Clicar no botão pesquisa
    
    Click Element    locator=nav-search-submit-button

    
Verificar se o resultado da pesquisa está listando "${PRODUTOS}" 
    
    Wait Until Element Is Visible    locator=(//span[contains(.,'${PRODUTOS}')])[2]
