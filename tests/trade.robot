*** Settings ***
Documentation        Teste de negociação de figurinhas da copa

Resource             ../resources/main.resource

Test Setup           Start Test
Test Teardown        Finish Test

*** Variables ***

${sticker_name}        Neymar Jr            

*** Test Cases ***
Deve negociar a figurinha Neymar Legend
    
    Do Login  
    Search User                     Legend
    Select Sticker                  ${sticker_name}
    Get In Touch
    Whatsapp Sticker Message        ${sticker_name}


    

