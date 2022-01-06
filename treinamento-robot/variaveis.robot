*** Variables ***
&{PESSOA}   Nome=Gabriel de Souza Oliveira    Profissao=QA   Peso=68  Altura=1.70 Idade=22    Genero=M
@{LISTA}    Iphone  Samsung  Motorolla   Xaomi   Nokia   BlackBerry           
&{NOTA}     Nota1=10    Nota2=5    Nota3=8
@{Lista_Notas}  10   5   10

*** Test Cases ***
Teste: Imprimir o Dicionario Completo
    Log To Console  ${PESSOA}
    Log             ${PESSOA}

Teste Imprimir uma informação por vez do Dicionario
    Log To Console  ${PESSOA.Nome}
    Log             ${PESSOA.Profissao}

Teste: Imprimir uma Lista completa no console
    Log To Console  ${LISTA}
    Log             ${LISTA}

Teste: Imprimir um Item da lista Por Vez no console
    Log To Console  ${LISTA[0]}
    Log To Console  ${LISTA[1]}

Teste: Cálculo da Média
    ${Resultado}=   Evaluate    (${NOTA.Nota1} + ${NOTA.Nota2} + ${NOTA.Nota3})/3  
    Log To Console      ${Resultado}

Teste: Cálculo da Média Lista
    ${Resultado}=   Evaluate    (${Lista_Notas[0]} + ${Lista_Notas[1]} + ${Lista_Notas[2]})/3  
    Log To Console      ${Resultado}