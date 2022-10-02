*** Settings ***
Documentation        Login tests

Resource             ../resources/main.resource      

Test Setup           Start Test
Test Teardown        Finish Test

*** Test Cases ***
Deve logar com sucesso

    Go To Login Page 
    Submit Credentials        papito@gmail.com        vaibrasil
    User Logged In

Não deve logar com senha incorreta

    Go To Login Page
    Submit Credentials              papito@gmail.com        abc123    
    Toast Messagem Should Be        Credenciais inválidas, tente novamente!

Deve exibir notificacao toaster se a senha nao for preenchida

    Go To Login Page
    Submit Credentials              papito@gmail.com        ${EMPTY}   
    Toast Messagem Should Be        Por favor, informe a sua senha secreta!

Deve exibir notificacao toaster se o email nao for preenchido

    Go To Login Page
    Submit Credentials              ${EMPTY}        vaibrasil   
    Toast Messagem Should Be        Por favor, informe o seu email!
    
Deve exibir notiticacao toaster se email e senha nao forem preenchidos

    Go To Login Page
    Submit Credentials              ${EMPTY}        ${EMPTY}    
    Toast Messagem Should Be        Por favor, informe suas credenciais!
