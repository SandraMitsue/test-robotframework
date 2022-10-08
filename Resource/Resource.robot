*** Settings ***
Library  SeleniumLibrary
Library  String  

*** Variables ***
${BROWSER}  chrome
${URL}  https://www.amazon.com.br/

*** Keywords ***
Abrir navegador
  Open Browser  about:blank  ${BROWSER}

Fechar navegador
  Close Browser
  
Acessar página home do site
  Go To    ${URL}
  Wait Until Element Is Visible  //*[@id="nav-logo-sprites"]

Digitar o nome do produto "Sandra Mitsue" no campo de pesquisa
  Input Text  //*[@id="twotabsearchtextbox"]  Sandra Mitsue

Clicar no botão pesquisar
  Click Element  //*[@id="nav-search-submit-button"]

Conferir se o produto "Sandra Mitsue" foi listado no site
  Wait Until Element Is Visible  //*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/div/div/div/div[2]/div[1]/h2/a/span
  Sleep  8