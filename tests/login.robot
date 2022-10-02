*** Settings ***
Documentation        Login tests

Resource        ../resources/main.resource      

Test Setup            Start Test
Test Teardown         Finish Test

*** Test Cases ***
Deve logar com sucesso
    Go To Login Page 
    Submit Credentials        papito@gmail.com    vaibrasil
    User Logged In

Não deve logar com senha incorreta
    Go To Login Page
    Submit Credentials          papito@gmail.com    abc123    
    Toast Messagem Should Be    Credenciais inválidas, tente novamente!
    Take Screenshot


