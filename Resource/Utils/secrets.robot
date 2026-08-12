*** Settings ***
Resource       ../Utils/base.robot

*** Variables ***
${LOGIN}   standard_user
${PASSWORD}    secret_sauce

*** Keywords ***
Gerar Dados Cliente
    ${FIRST_NAME}=    First Name
    ${LAST_NAME}=     Last Name
    ${ZCODE}=      Postcode

    &{cliente}=    Create Dictionary
    ...    first_name=${FIRST_NAME}
    ...    last_name=${LAST_NAME}
    ...    zip_code=${ZCODE}

    RETURN    ${cliente}