*** Settings ***
Resource       ../Resource/Resource.robot
Test Setup     Abrir navegador
Test Teardown  Fechar navegador

*** Test Case ***
Caso de Teste 01: Pesquisar produto existente
    Acessar página home do site
    Digitar o nome do produto "Sandra Mitsue" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "Sandra Mitsue" foi listado no site

