/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                */ 
/*                                   			                                       */
/*  Coordena��o-Geral de Instrumentos de Medidas                                       */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_DIRETOR                                                  */
/*-------------------------------------------------------------------------------------*/
/*  DESCRICAO:     PROGRAMA PARA LEITURA DO QUESTION�RIO DO                            */
/*                    DIRETOR DA ANEB/PROVA BRASIL 2017                                */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, � necess�rio salvar este programa e o arquivo             */
/* TS_DIRETOR.CSV no diret�rio C:\ do computador.	                                   */
/*							                                                           */ 
/* Ao terminar esses procedimentos, execute o programa salvo utilizando                */
/* as vari�veis de interesse.                                                          */
/***************************************************************************************/
/*                                  ATEN��O                                            */ 
/***************************************************************************************/
/* Este programa abre a base de dados com os r�tulos das vari�veis de	               */
/* acordo com o dicion�rio de dados que comp�e os microdados. Para abrir               */
/* os dados sem os r�tulos, basta importar diretamente no SAS.                         */
/* 							                                                           */                                                            
/***************************************************************************************/

proc format;	

value ID_UF
11 = 'RO'
12 = 'AC'
13 = 'AM'
14 = 'RR'
15 = 'PA'
16 = 'AP'
17 = 'TO'
21 = 'MA'
22 = 'PI'
23 = 'CE'
24 = 'RN'
25 = 'PB'
26 = 'PE'
27 = 'AL'
28 = 'SE'
29 = 'BA'
31 = 'MG'
32 = 'ES'
33 = 'RJ'
35 = 'SP'
41 = 'PR'
42 = 'SC'
43 = 'RS'
50 = 'MS'
51 = 'MT'
52 = 'GO'
53 = 'DF';

value ID_DEPENDENCIA_ADM
1='Federal'
2='Estadual'
3='Municipal'
4='Privada';

value ID_LOCALIZACAO
1='Urbana'
2='Rural';

value IN_PREENCHIMENTO_QUESTIONARIO
0='N�o preenchido'
1='Preenchido parcial ou totalmente';

value $QDum
A='Masculino'
B='Feminino';

value $QDdois
A='At� 24 anos'
B='De 25 a 29 anos'
C='De 30 a 39 anos'
D='De 40 a 49 anos'
E='De 50 a 54 anos'
F='55 anos ou mais';

value $QDtres
A='Branca'
B='Preta'
C='Parda'
D='Amarela'
E='Ind�gena'
F='N�o quero declarar';

value $QDquatro
A='Menos que o Ensino M�dio (antigo 2� grau)'
B='Ensino M�dio - Magist�rio (antigo 2� grau)'
C='Ensino  M�dio - Outros (antigo 2� grau)'
D='Ensino Superior - Pedagogia'
E='Ensino Superior - Curso Normal Superior'
F='Ensino Superior - Licenciatura em Matem�tica'
G='Ensino Superior - Licenciatura em Letras'
H='Ensino Superior - Outras Licenciaturas'
I='Ensino Superior - Outras �reas';

value $QDcinco
A='H� menos de 2 anos'
B='De 2 a 7 anos'
C='De 8 a 14 anos'
D='De 15 a 20 anos'
E='H� mais de 20 anos';

value $QDseis
A='N�o conclu� o ensino superior'
B='Privada'
C='P�blica Federal'
D='P�blica Estadual'
E='P�blica Municipal';

value $QDsete
A='N�o conclu� o ensino superior'
B='Presencial'
C='Semipresencial'
D='A dist�ncia';

value $QDoito
A='N�o fiz ou n�o completei curso de p�s-gradua��o'
B='Atualiza��o ou Aperfei�oamento (m�nimo 180 horas)'
C='Especializa��o (m�nimo de 360 horas)'
D='Mestrado'
E='Doutorado';

value $QDnove
A='N�o fiz ou n�o completei curso de p�s-gradua��o'
B='Educa��o, enfatizando alfabetiza��o'
C='Educa��o, enfatizando lingu�stica e/ou letramento'
D='Educa��o, enfatizando educa��o matem�tica'
E='Educa��o - outras �nfases'
F='Outras �reas que n�o a Educa��o';

value $QDdez
A='At� R$ 937,00'
B='Entre R$ 937,01 e R$ 1.405,50'
C='Entre R$ 1.405,51 e R$ 1.874,00'
D='Entre R$ 1.874,01 e R$ 2.342,50'
E='Entre R$ 2.342,51 e R$ 2.811,00'
F='Entre R$ 2.811,01 e R$ 3.279,50'
G='Entre R$ 3.279,51 e R$ 3.748,00'
H='Entre R$ 3.748,01 e R$ 4.685,00'
I='Entre R$ 4.685,01 e R$ 6.559,00'
J='Entre R$ 6.559,01 e R$ 9.370,00'
K='R$ 9.370,01 ou mais';

value $QDonze
A='Sim, na �rea de educa��o'
B='Sim, fora da �rea de educa��o'
C='N�o';

value $QDdoze
A='At� R$ 937,00'
B='Entre R$ 937,01 e R$ 1.405,50'
C='Entre R$ 1.405,51 e R$ 1.874,00'
D='Entre R$ 1.874,01 e R$ 2.342,50'
E='Entre R$ 2.342,51 e R$ 2.811,00'
F='Entre R$ 2.811,01 e R$ 3.279,50'
G='Entre R$ 3.279,51 e R$ 3.748,00'
H='Entre R$ 3.748,01 e R$ 4.685,00'
I='Entre R$ 4.685,01 e R$ 6.559,00'
J='Entre R$ 6.559,01 e R$ 9.370,00'
K='R$ 9.370,01 ou mais';

value $QDtreze
A='Mais de 40 horas'
B='40 horas'
C='De 20 a 39 horas'
D='Menos de 20 horas';

value $QDcatorze
A='Concurso p�blico apenas'
B='Elei��o apenas'
C='Indica��o apenas'
D='Processo seletivo apenas'
E='Processo seletivo e Elei��o'
F='Processo seletivo e Indica��o'
G='Outra forma';

value $QDquinze
A='Nunca'
B='Menos de um ano'
C='1-2 anos'
D='3-5 anos'
E='6-10 anos'
F='11-15 anos'
G='16-20 anos'
H='Mais de 20 anos';

value $QDdezesseis
A='Menos de um ano'
B='1-2 anos'
C='3-5 anos'
D='6-10 anos'
E='11-15 anos'
F='16-20 anos'
G='Mais de 20 anos';

value $QDdezessete
A='Menos de um ano'
B='1-2 anos'
C='3-5 anos'
D='6-10 anos'
E='11-15 anos'
F='16-20 anos'
G='Mais de 20 anos';

value $QDdezoito
A='Menos de um ano'
B='1-2 anos'
C='3-5 anos'
D='6-10 anos'
E='11-15 anos'
F='16-20 anos'
G='Mais de 20 anos';

value $QDdezenove
A='N�o'
B='Sim';

value $QDvinte
A='N�o participei'
B='Sim, e n�o houve impacto'
C='Sim, e houve um pequeno impacto'
D='Sim, e houve um impacto moderado'
E='Sim, e houve um grande impacto';

value $QDvinteum
A='N�o'
B='Sim';

value $QDvintedois
A='N�o gostaria de ter participado'
B='N�o'
C='Sim';

value $QDvintetres
A='N�o gostaria de ter participado'
B='N�o'
C='Sim';

value $QDvintequatro
A='N�o gostaria de ter participado'
B='N�o'
C='Sim';

value $QDvintecinco
A='N�o gostaria de ter participado'
B='N�o'
C='Sim';

value $QDvinteseis
A='N�o'
B='Sim';

value $QDvintesete
A='N�o foram organizadas atividades de forma��o continuada'
B='Poucos professores'
C='Um pouco menos da metade dos professores'
D='Um pouco mais da metade dos professores'
E='Quase todos ou todos os professores';

value $QDvinteoito
A='Menor ou igual a 25%'
B='De 26% a 50%'
C='De 51% a 75%'
D='De 76% a 90%'
E='De 91% a 100%';

value $QDvintenove
A='N�o existe Conselho Escolar'
B='Nenhuma vez'
C='Uma vez'
D='Duas vezes'
E='Tr�s vezes ou mais';

value $QDtrinta
A='N�o existe Conselho Escolar'
B='Professores, funcion�rios, alunos e pais/respons�veis'
C='Professores, funcion�rios e pais/respons�veis'
D='Professores, alunos e pais/respons�veis'
E='Professores, funcion�rios e alunos'
F='Professores e pais/respons�veis'
G='Outros';

value $QDtrintaum
A='N�o existe Conselho de Classe'
B='Nenhuma vez'
C='Uma vez'
D='Duas vezes'
E='Tr�s vezes ou mais';

value $QDtrintadois
A='N�o sei como foi desenvolvido'
B='N�o existe Projeto Pedag�gico'
C='Utilizando-se um modelo pronto, sem discuss�o com a equipe escolar'
D='Utilizando-se um modelo pronto, mas com discuss�o com a equipe escolar'
E='Utilizando-se um modelo pronto, por�m com adapta��es, sem discuss�o com a equipe escolar'
F='Utilizando-se um modelo pronto, por�m com adapta��es e com discuss�o com a equipe escolar'
G='Elaborou-se um modelo pr�prio, mas n�o houve discuss�o com a equipe escolar'
H='Elaborou-se um modelo pr�prio e houve discuss�o com a equipe escolar';

value $QDtrintatres
A='Sim'
B='N�o'
C='N�o sei';

value $QDtrintaquatro
A='Sim'
B='N�o'
C='Minha escola n�o participou';

value $QDtrintacinco
A='Sim'
B='N�o'
C='Meu munic�pio n�o participou';

value $QDtrintaseis
A='Sim'
B='N�o';

value $QDtrintasete
A='Prova de sele��o'
B='Sorteio'
C='Local de moradia'
D='Prioridade por ordem de chegada'
E='Outro crit�rio';

value $QDtrintaoito
A='Ap�s o processo de matr�cula, a escola ainda tinha vagas dispon�veis'
B='A procura por vaga na escola preencheu todas as vagas oferecidas'
C='A procura por vaga na escola foi um pouco maior que as vagas oferecidas'
D='A procura por vaga na escola superou em muito o n�mero de vagas oferecidas';

value $QDtrintanove
A='Homogeneidade quando � idade (alunos com a mesma idade)'
B='Homogeneidade quanto ao rendimento escolar (alunos com rendimento similar)'
C='Heterogeneidade quanto � idade (alunos com idades diferentes)'
D='Heterogeneidade quanto ao redimento escolar (alunos com rendimentos diferentes)'
E='Outro crit�rio'
F='N�o houve crit�rio';

value $QDquarenta
A='Prefer�ncia dos professores'
B='Escolha dos professores, de acordo com a pontua��o por tempo de servi�o e forma��o'
C='Professores experientes com turmas de aprendizagem mais r�pida'
D='Professores experientes com turmas de aprendizagem mais lenta'
E='Manuten��o do professor com a mesma turma'
F='Revezamento dos professores entre as s�ries'
G='Sorteio das turmas entre os professores'
H='Atribui��o pela dire��o da escola'
I='Outro crit�rio'
J='N�o houve crit�rio';

value $QDquarentaum
A='N�o h� a��o, embora exista o problema'
B='N�o h� a��o, porque nesta escola n�o h� esse tipo de problema'
C='Sim, mas com resultados ainda insatisfat�rios'
D='Sim, com resultados satisfat�rios'
E='Sim, mas ainda n�o avaliamos o resultado';

value $QDquarentadois
A='N�o h� a��o, embora exista o problema'
B='N�o h� a��o, porque nesta escola n�o h� esse tipo de problema'
C='Sim, mas com resultados ainda insatisfat�rios'
D='Sim, com resultados satisfat�rios'
E='Sim, mas ainda n�o avaliamos o resultado';

value $QDquarentatres
A='N�o'
B='Sim';

value $QDquarentaquatro
A='Nunca'
B='Algumas vezes'
C='Frequentemente'
D='Sempre ou quase sempre';

value $QDquarentacinco
A='Nunca'
B='Algumas vezes'
C='Frequentemente'
D='Sempre ou quase sempre';

value $QDquarentaseis
A='Nunca'
B='Algumas vezes'
C='Frequentemente'
D='Sempre ou quase sempre';

value $QDquarentasete
A='Nunca'
B='Algumas vezes'
C='Frequentemente'
D='Sempre ou quase sempre';

value $QDquarentaoito
A='Nunca'
B='Algumas vezes'
C='Frequentemente'
D='Sempre ou quase sempre';

value $QDquarentanove
A='Nunca'
B='Algumas vezes'
C='Frequentemente'
D='Sempre ou quase sempre';

value $QDcinquenta
A='Nunca'
B='Algumas vezes'
C='Frequentemente'
D='Sempre ou quase sempre';

value $QDcinquentaum
A='Nunca'
B='Algumas vezes'
C='Frequentemente'
D='Sempre ou quase sempre';

value $QDcinquentadois
A='Nunca'
B='Algumas vezes'
C='Frequentemente'
D='Sempre ou quase sempre';

value $QDcinquentatres
A='Nunca'
B='Algumas vezes'
C='Frequentemente'
D='Sempre ou quase sempre';

value $QDcinquentaquatro
A='Nunca'
B='Algumas vezes'
C='Frequentemente'
D='Sempre ou quase sempre';

value $QDcinquentacinco
A='Nunca'
B='Algumas vezes'
C='Frequentemente'
D='Sempre ou quase sempre';

value $QDcinquentaseis
A='Nenhum'
B='Entre 1 e 5 alunos'
C='Entre 6 e 10 alunos'
D='Entre 11 e 20 alunos'
E='Mais de 20 alunos';

value $QDcinquentasete
A='N�o'
B='Sim, mas pouco adequada'
C='Sim, suficientemente adequada';

value $QDcinquentaoito
A='N�o possui sala de recursos'
B='Sim, mas com poucos recursos'
C='Sim, com recursos suficientes';

value $QDcinquentanove
A='N�o'
B='Sim, mas apenas em uma �rea/defici�ncia'
C='Sim, em mais de uma �rea/defici�ncia';

value $QDsessenta
A='N�o'
B='Sim, mas em n�mero insuficiente'
C='Sim, em n�mero suficiente';

value $QDsessentaum
A='N�o'
B='Sim, mas em n�mero insuficiente'
C='Sim, em n�mero suficiente';

value $QDsessentadois
A='Inexistente'
B='Ruim'
C='Razo�vel'
D='Bom'
E='�timo';

value $QDsessentatres
A='Inexistente'
B='Ruim'
C='Razo�vel'
D='Bom'
E='�timo';

value $QDsessentaquatro
A='Inexistente'
B='Ruim'
C='Razo�vel'
D='Bom'
E='�timo';

value $QDsessentacinco
A='Inexistente'
B='Ruim'
C='Razo�vel'
D='Bom'
E='�timo';

value $QDsessentaseis
A='Inexistente'
B='Ruim'
C='Razo�vel'
D='Bom'
E='�timo';

value $QDsessentasete
A='N�o'
B='Sim, pouco'
C='Sim, moderadamente'
D='Sim, muito';

value $QDsessentaoito
A='N�o'
B='Sim, pouco'
C='Sim, moderadamente'
D='Sim, muito';

value $QDsessentanove
A='N�o'
B='Sim, pouco'
C='Sim, moderadamente'
D='Sim, muito';

value $QDsetenta
A='N�o'
B='Sim, pouco'
C='Sim, moderadamente'
D='Sim, muito';

value $QDsetentaum
A='N�o'
B='Sim, pouco'
C='Sim, moderadamente'
D='Sim, muito';

value $QDsetentadois
A='N�o'
B='Sim, pouco'
C='Sim, moderadamente'
D='Sim, muito';

value $QDsetentatres
A='N�o'
B='Sim, pouco'
C='Sim, moderadamente'
D='Sim, muito';

value $QDsetentaquatro
A='N�o'
B='Sim, pouco'
C='Sim, moderadamente'
D='Sim, muito';

value $QDsetentacinco
A='N�o'
B='Sim, pouco'
C='Sim, moderadamente'
D='Sim, muito';

value $QDsetentaseis
A='N�o'
B='Sim, pouco'
C='Sim, moderadamente'
D='Sim, muito';

value $QDsetentasete
A='Sim'
B='N�o';

value $QDsetentaoito
A='Sim'
B='N�o';

value $QDsetentanove
A='Sim'
B='N�o';

value $QDoitenta
A='Sim'
B='N�o';

value $QDoitentaum
A='Sim'
B='N�o';

value $QDoitentadois
A='Sim'
B='N�o';

value $QDoitentatres
A='Sim'
B='N�o';

value $QDoitentaquatro
A='Sim'
B='N�o';

value $QDoitentacinco
A='Sim'
B='N�o';

value $QDoitentaseis
A='N�o sei'
B='Foi escolhido de forma participativa pelos professores'
C='Foi escolhido por somente alguns membros da equipe escolar'
D='Foi escolhido por �rg�os externos � escola'
E='Foi escolhido de outra maneira';

value $QDoitentasete
A='Sim'
B='N�o'
C='N�o sei';

value $QDoitentaoito
A='Sim'
B='N�o'
C='N�o sei';

value $QDoitentanove
A='Sim'
B='N�o'
C='N�o sei';

value $QDnoventa
A='Sim'
B='N�o';

value $QDnoventaum
A='Sim'
B='N�o';

value $QDnoventadois
A='Sim'
B='N�o';

value $QDnoventatres
A='Sim'
B='N�o';

value $QDnoventaquatro
A='Sim'
B='N�o';

value $QDnoventacinco
A='Sim'
B='N�o';

value $QDnoventaseis
A='Sim'
B='N�o';

value $QDnoventasete
A='Sim'
B='N�o';

value $QDnoventaoito
A='Sim'
B='N�o';

value $QDnoventanove
A='Sim'
B='N�o';

value $QDcem
A='Sim'
B='N�o';

value $QDcemum
A='Sim'
B='N�o';

value $QDcemdois
A='Sim'
B='N�o';

value $QDcemtres
A='Sim'
B='N�o';

value $QDcemquatro
A='Sim'
B='N�o';

value $QDcemcinco
A='Sim'
B='N�o';

value $QDcemseis
A='Sim'
B='N�o';

value $QDcemsete
A='Sim'
B='N�o';

value $QDcemoito
A='Sim'
B='N�o';

value $QDcemnove
A='N�o h� aula de ensino religioso'
B='Sim'
C='N�o';

value $QDcemdez
A='N�o h� aula de ensino religioso'
B='Sim'
C='N�o';

value $QDcemonze
A='N�o h� aula de ensino religioso'
B='Sim'
C='N�o';

run;

DATA WORK.TS_DIRETOR;

 INFILE 'C:\TS_DIRETOR.csv' /*Endere�o do arquivo*/
        LRECL=4096
		firstobs=2
        DLM=","
        MISSOVER
        DSD ;

INPUT
ID_PROVA_BRASIL : 4.
ID_UF : 2.
ID_MUNICIPIO : 7.
ID_ESCOLA : 8.
ID_DEPENDENCIA_ADM : 1.
ID_LOCALIZACAO : 1.
IN_PREENCHIMENTO_QUESTIONARIO : 1.
TX_RESP_Q001 : $CHAR1.
TX_RESP_Q002 : $CHAR1.
TX_RESP_Q003 : $CHAR1.
TX_RESP_Q004 : $CHAR1.
TX_RESP_Q005 : $CHAR1.
TX_RESP_Q006 : $CHAR1.
TX_RESP_Q007 : $CHAR1.
TX_RESP_Q008 : $CHAR1.
TX_RESP_Q009 : $CHAR1.
TX_RESP_Q010 : $CHAR1.
TX_RESP_Q011 : $CHAR1.
TX_RESP_Q012 : $CHAR1.
TX_RESP_Q013 : $CHAR1.
TX_RESP_Q014 : $CHAR1.
TX_RESP_Q015 : $CHAR1.
TX_RESP_Q016 : $CHAR1.
TX_RESP_Q017 : $CHAR1.
TX_RESP_Q018 : $CHAR1.
TX_RESP_Q019 : $CHAR1.
TX_RESP_Q020 : $CHAR1.
TX_RESP_Q021 : $CHAR1.
TX_RESP_Q022 : $CHAR1.
TX_RESP_Q023 : $CHAR1.
TX_RESP_Q024 : $CHAR1.
TX_RESP_Q025 : $CHAR1.
TX_RESP_Q026 : $CHAR1.
TX_RESP_Q027 : $CHAR1.
TX_RESP_Q028 : $CHAR1.
TX_RESP_Q029 : $CHAR1.
TX_RESP_Q030 : $CHAR1.
TX_RESP_Q031 : $CHAR1.
TX_RESP_Q032 : $CHAR1.
TX_RESP_Q033 : $CHAR1.
TX_RESP_Q034 : $CHAR1.
TX_RESP_Q035 : $CHAR1.
TX_RESP_Q036 : $CHAR1.
TX_RESP_Q037 : $CHAR1.
TX_RESP_Q038 : $CHAR1.
TX_RESP_Q039 : $CHAR1.
TX_RESP_Q040 : $CHAR1.
TX_RESP_Q041 : $CHAR1.
TX_RESP_Q042 : $CHAR1.
TX_RESP_Q043 : $CHAR1.
TX_RESP_Q044 : $CHAR1.
TX_RESP_Q045 : $CHAR1.
TX_RESP_Q046 : $CHAR1.
TX_RESP_Q047 : $CHAR1.
TX_RESP_Q048 : $CHAR1.
TX_RESP_Q049 : $CHAR1.
TX_RESP_Q050 : $CHAR1.
TX_RESP_Q051 : $CHAR1.
TX_RESP_Q052 : $CHAR1.
TX_RESP_Q053 : $CHAR1.
TX_RESP_Q054 : $CHAR1.
TX_RESP_Q055 : $CHAR1.
TX_RESP_Q056 : $CHAR1.
TX_RESP_Q057 : $CHAR1.
TX_RESP_Q058 : $CHAR1.
TX_RESP_Q059 : $CHAR1.
TX_RESP_Q060 : $CHAR1.
TX_RESP_Q061 : $CHAR1.
TX_RESP_Q062 : $CHAR1.
TX_RESP_Q063 : $CHAR1.
TX_RESP_Q064 : $CHAR1.
TX_RESP_Q065 : $CHAR1.
TX_RESP_Q066 : $CHAR1.
TX_RESP_Q067 : $CHAR1.
TX_RESP_Q068 : $CHAR1.
TX_RESP_Q069 : $CHAR1.
TX_RESP_Q070 : $CHAR1.
TX_RESP_Q071 : $CHAR1.
TX_RESP_Q072 : $CHAR1.
TX_RESP_Q073 : $CHAR1.
TX_RESP_Q074 : $CHAR1.
TX_RESP_Q075 : $CHAR1.
TX_RESP_Q076 : $CHAR1.
TX_RESP_Q077 : $CHAR1.
TX_RESP_Q078 : $CHAR1.
TX_RESP_Q079 : $CHAR1.
TX_RESP_Q080 : $CHAR1.
TX_RESP_Q081 : $CHAR1.
TX_RESP_Q082 : $CHAR1.
TX_RESP_Q083 : $CHAR1.
TX_RESP_Q084 : $CHAR1.
TX_RESP_Q085 : $CHAR1.
TX_RESP_Q086 : $CHAR1.
TX_RESP_Q087 : $CHAR1.
TX_RESP_Q088 : $CHAR1.
TX_RESP_Q089 : $CHAR1.
TX_RESP_Q090 : $CHAR1.
TX_RESP_Q091 : $CHAR1.
TX_RESP_Q092 : $CHAR1.
TX_RESP_Q093 : $CHAR1.
TX_RESP_Q094 : $CHAR1.
TX_RESP_Q095 : $CHAR1.
TX_RESP_Q096 : $CHAR1.
TX_RESP_Q097 : $CHAR1.
TX_RESP_Q098 : $CHAR1.
TX_RESP_Q099 : $CHAR1.
TX_RESP_Q100 : $CHAR1.
TX_RESP_Q101 : $CHAR1.
TX_RESP_Q102 : $CHAR1.
TX_RESP_Q103 : $CHAR1.
TX_RESP_Q104 : $CHAR1.
TX_RESP_Q105 : $CHAR1.
TX_RESP_Q106 : $CHAR1.
TX_RESP_Q107 : $CHAR1.
TX_RESP_Q108 : $CHAR1.
TX_RESP_Q109 : $CHAR1.
TX_RESP_Q110 : $CHAR1.
TX_RESP_Q111 : $CHAR1.
;  

ATTRIB ID_UF FORMAT=ID_UF2.;
ATTRIB ID_DEPENDENCIA_ADM FORMAT=ID_DEPENDENCIA_ADM9.;
ATTRIB ID_LOCALIZACAO FORMAT=ID_LOCALIZACAO9.;
ATTRIB IN_PREENCHIMENTO_QUESTIONARIO FORMAT=IN_PREENCHIMENTO_QUESTIONARIO32.;
ATTRIB TX_RESP_Q001 FORMAT=$QDum.;  
ATTRIB TX_RESP_Q002 FORMAT=$QDdois.;
ATTRIB TX_RESP_Q003 FORMAT=$QDtres.;
ATTRIB TX_RESP_Q004 FORMAT=$QDquatro.;
ATTRIB TX_RESP_Q005 FORMAT=$QDcinco.;
ATTRIB TX_RESP_Q006 FORMAT=$QDseis.;
ATTRIB TX_RESP_Q007 FORMAT=$QDsete.;
ATTRIB TX_RESP_Q008 FORMAT=$QDoito.;
ATTRIB TX_RESP_Q009 FORMAT=$QDnove.;
ATTRIB TX_RESP_Q010 FORMAT=$QDdez.;
ATTRIB TX_RESP_Q011 FORMAT=$QDonze.;
ATTRIB TX_RESP_Q012 FORMAT=$QDdoze.;
ATTRIB TX_RESP_Q013 FORMAT=$QDtreze.;
ATTRIB TX_RESP_Q014 FORMAT=$QDcatorze.;
ATTRIB TX_RESP_Q015 FORMAT=$QDquinze.;
ATTRIB TX_RESP_Q016 FORMAT=$QDdezesseis.;
ATTRIB TX_RESP_Q017 FORMAT=$QDdezessete.;
ATTRIB TX_RESP_Q018 FORMAT=$QDdezoito.;
ATTRIB TX_RESP_Q019 FORMAT=$QDdezenove.;
ATTRIB TX_RESP_Q020 FORMAT=$QDvinte.;
ATTRIB TX_RESP_Q021 FORMAT=$QDvinteum.;
ATTRIB TX_RESP_Q022 FORMAT=$QDvintedois.;
ATTRIB TX_RESP_Q023 FORMAT=$QDvintetres.;
ATTRIB TX_RESP_Q024 FORMAT=$QDvintequatro.;
ATTRIB TX_RESP_Q025 FORMAT=$QDvintecinco.;
ATTRIB TX_RESP_Q026 FORMAT=$QDvinteseis.;
ATTRIB TX_RESP_Q027 FORMAT=$QDvintesete.;
ATTRIB TX_RESP_Q028 FORMAT=$QDvinteoito.;
ATTRIB TX_RESP_Q029 FORMAT=$QDvintenove.;
ATTRIB TX_RESP_Q030 FORMAT=$QDtrinta.;
ATTRIB TX_RESP_Q031 FORMAT=$QDtrintaum.;
ATTRIB TX_RESP_Q032 FORMAT=$QDtrintadois.;
ATTRIB TX_RESP_Q033 FORMAT=$QDtrintatres.;
ATTRIB TX_RESP_Q034 FORMAT=$QDtrintaquatro.;
ATTRIB TX_RESP_Q035 FORMAT=$QDtrintacinco.;
ATTRIB TX_RESP_Q036 FORMAT=$QDtrintaseis.;
ATTRIB TX_RESP_Q037 FORMAT=$QDtrintasete.;
ATTRIB TX_RESP_Q038 FORMAT=$QDtrintaoito.;
ATTRIB TX_RESP_Q039 FORMAT=$QDtrintanove.;
ATTRIB TX_RESP_Q040 FORMAT=$QDquarenta.;
ATTRIB TX_RESP_Q041 FORMAT=$QDquarentaum.;
ATTRIB TX_RESP_Q042 FORMAT=$QDquarentadois.;
ATTRIB TX_RESP_Q043 FORMAT=$QDquarentatres.;
ATTRIB TX_RESP_Q044 FORMAT=$QDquarentaquatro.;
ATTRIB TX_RESP_Q045 FORMAT=$QDquarentacinco.;
ATTRIB TX_RESP_Q046 FORMAT=$QDquarentaseis.;
ATTRIB TX_RESP_Q047 FORMAT=$QDquarentasete.;
ATTRIB TX_RESP_Q048 FORMAT=$QDquarentaoito.;
ATTRIB TX_RESP_Q049 FORMAT=$QDquarentanove.;
ATTRIB TX_RESP_Q050 FORMAT=$QDcinquenta.;
ATTRIB TX_RESP_Q051 FORMAT=$QDcinquentaum.;
ATTRIB TX_RESP_Q052 FORMAT=$QDcinquentadois.;
ATTRIB TX_RESP_Q053 FORMAT=$QDcinquentatres.;
ATTRIB TX_RESP_Q054 FORMAT=$QDcinquentaquatro.;
ATTRIB TX_RESP_Q055 FORMAT=$QDcinquentacinco.;
ATTRIB TX_RESP_Q056 FORMAT=$QDcinquentaseis.;
ATTRIB TX_RESP_Q057 FORMAT=$QDcinquentasete.;
ATTRIB TX_RESP_Q058 FORMAT=$QDcinquentaoito.;
ATTRIB TX_RESP_Q059 FORMAT=$QDcinquentanove.;
ATTRIB TX_RESP_Q060 FORMAT=$QDsessenta.;
ATTRIB TX_RESP_Q061 FORMAT=$QDsessentaum.;
ATTRIB TX_RESP_Q062 FORMAT=$QDsessentadois.;
ATTRIB TX_RESP_Q063 FORMAT=$QDsessentatres.;
ATTRIB TX_RESP_Q064 FORMAT=$QDsessentaquatro.;
ATTRIB TX_RESP_Q065 FORMAT=$QDsessentacinco.;
ATTRIB TX_RESP_Q066 FORMAT=$QDsessentaseis.;
ATTRIB TX_RESP_Q067 FORMAT=$QDsessentasete.;
ATTRIB TX_RESP_Q068 FORMAT=$QDsessentaoito.;
ATTRIB TX_RESP_Q069 FORMAT=$QDsessentanove.;
ATTRIB TX_RESP_Q070 FORMAT=$QDsetenta.;
ATTRIB TX_RESP_Q071 FORMAT=$QDsetentaum.;
ATTRIB TX_RESP_Q072 FORMAT=$QDsetentadois.;
ATTRIB TX_RESP_Q073 FORMAT=$QDsetentatres.;
ATTRIB TX_RESP_Q074 FORMAT=$QDsetentaquatro.;
ATTRIB TX_RESP_Q075 FORMAT=$QDsetentacinco.;
ATTRIB TX_RESP_Q076 FORMAT=$QDsetentaseis.;
ATTRIB TX_RESP_Q077 FORMAT=$QDsetentasete.;
ATTRIB TX_RESP_Q078 FORMAT=$QDsetentaoito.;
ATTRIB TX_RESP_Q079 FORMAT=$QDsetentanove.;
ATTRIB TX_RESP_Q080 FORMAT=$QDoitenta.;
ATTRIB TX_RESP_Q081 FORMAT=$QDoitentaum.;
ATTRIB TX_RESP_Q082 FORMAT=$QDoitentadois.;
ATTRIB TX_RESP_Q083 FORMAT=$QDoitentatres.;
ATTRIB TX_RESP_Q084 FORMAT=$QDoitentaquatro.;
ATTRIB TX_RESP_Q085 FORMAT=$QDoitentacinco.;
ATTRIB TX_RESP_Q086 FORMAT=$QDoitentaseis.;
ATTRIB TX_RESP_Q087 FORMAT=$QDoitentasete.;
ATTRIB TX_RESP_Q088 FORMAT=$QDoitentaoito.;
ATTRIB TX_RESP_Q089 FORMAT=$QDoitentanove.;
ATTRIB TX_RESP_Q090 FORMAT=$QDnoventa.;
ATTRIB TX_RESP_Q091 FORMAT=$QDnoventaum.;
ATTRIB TX_RESP_Q092 FORMAT=$QDnoventadois.;
ATTRIB TX_RESP_Q093 FORMAT=$QDnoventatres.;
ATTRIB TX_RESP_Q094 FORMAT=$QDnoventaquatro.;
ATTRIB TX_RESP_Q095 FORMAT=$QDnoventacinco.;
ATTRIB TX_RESP_Q096 FORMAT=$QDnoventaseis.;
ATTRIB TX_RESP_Q097 FORMAT=$QDnoventasete.;
ATTRIB TX_RESP_Q098 FORMAT=$QDnoventaoito.;
ATTRIB TX_RESP_Q099 FORMAT=$QDnoventanove.;
ATTRIB TX_RESP_Q100 FORMAT=$QDcem.;
ATTRIB TX_RESP_Q101 FORMAT=$QDcemum.;
ATTRIB TX_RESP_Q102 FORMAT=$QDcemdois.;
ATTRIB TX_RESP_Q103 FORMAT=$QDcemtres.;
ATTRIB TX_RESP_Q104 FORMAT=$QDcemquatro.;
ATTRIB TX_RESP_Q105 FORMAT=$QDcemcinco.;
ATTRIB TX_RESP_Q106 FORMAT=$QDcemseis.;
ATTRIB TX_RESP_Q107 FORMAT=$QDcemsete.;
ATTRIB TX_RESP_Q108 FORMAT=$QDcemoito.;
ATTRIB TX_RESP_Q109 FORMAT=$QDcemnove.;
ATTRIB TX_RESP_Q110 FORMAT=$QDcemdez.;
ATTRIB TX_RESP_Q111 FORMAT=$QDcemonze.;

LABEL

ID_PROVA_BRASIL = 'Ano da ANEB/Prova Brasil'
ID_UF = 'C�digo da Unidade da Federa��o'
ID_MUNICIPIO = 'C�digo do Munic�pio'
ID_ESCOLA = 'C�digo da Escola'
ID_DEPENDENCIA_ADM = 'Depend�ncia Administrativa'
ID_LOCALIZACAO = 'Localiza��o'
IN_PREENCHIMENTO_QUESTIONARIO = 'Indicador de preenchimento do question�rio'
TX_RESP_Q001 = 'Qual � o seu sexo?'
TX_RESP_Q002 = 'Voc� poderia nos dizer a sua faixa et�ria?'
TX_RESP_Q003 = 'Qual � a sua cor ou ra�a?'
TX_RESP_Q004 = 'Qual � o mais alto n�vel de escolaridade que voc� concluiu (at� a gradua��o)?'
TX_RESP_Q005 = 'H� quantos anos voc� obteve o n�vel de escolaridade assinalado anteriormente (at� a gradua��o)?'
TX_RESP_Q006 = 'Indique em que tipo de institui��o voc� obteve seu diploma de ensino superior'
TX_RESP_Q007 = 'De que forma voc� realizou o curso de ensino superior?'
TX_RESP_Q008 = 'Indique o curso de p�s-gradua��o de mais alta titula��o que voc� possui'
TX_RESP_Q009 = 'Indique a �rea tem�tica do curso de p�s-gradua��o de mais alta titula��o que voc� possui'
TX_RESP_Q010 = 'Como diretor, qual �, aproximadamente, o seu sal�rio bruto? (com adicionais, se houver)'
TX_RESP_Q011 = 'Al�m da dire��o desta escola, voc� exerce outra atividade que contribui para sua renda pessoal?'
TX_RESP_Q012 = 'Considerando todas as atividades que voc� exerce (dentro e fora da �rea de educa��o), qual �, aproximadamente, o seu sal�rio bruto? (com adicionais, se houver)'
TX_RESP_Q013 = 'Qual � a sua carga hor�ria de trabalho semanal, como diretor, nesta escola?'
TX_RESP_Q014 = 'Voc� assumiu a dire��o desta escola por meio de:'
TX_RESP_Q015 = 'Por quanto tempo voc� trabalhou como professor antes de se tornar diretor?'
TX_RESP_Q016 = 'H� quantos anos voc� exerce fun��es de dire��o?'
TX_RESP_Q017 = 'H� quantos anos voc� � diretor(a) desta escola?'
TX_RESP_Q018 = 'H� quantos anos voc� trabalha na �rea de educa��o?'
TX_RESP_Q019 = 'Durante os �ltimos dois anos, voc� participou da alguma atividade de desenvolvimento profissional?'
TX_RESP_Q020 = 'Se voc� participou de alguma atividade de desenvolvimento profissional nos �ltimos dois anos, como voc� avalia o impacto da participa��o em sua atividade como diretor?'
TX_RESP_Q021 = 'Nos �ltimos dois anos, voc� gostaria de ter participado de mais atividades de desenvolvimento profissional do que voc� participou?'
TX_RESP_Q022 = 'Se voc� gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participa��o? O desenvolvimento profissional era muito caro/eu n�o podia pagar'
TX_RESP_Q023 = 'Se voc� gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participa��o? Houve conflito com o meu hor�rio de trabalho'
TX_RESP_Q024 = 'Se voc� gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participa��o? N�o tinha disponibilidade de tempo'
TX_RESP_Q025 = 'Se voc� gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participa��o? N�o houve oferta na minha �rea de interesse'
TX_RESP_Q026 = 'Nos �ltimos dois anos, voc� organizou alguma atividade de forma��o continuada (atualiza��o, treinamento, capacita��o etc.) nesta escola?'
TX_RESP_Q027 = 'Qual foi a quantidade de docentes desta escola que participou das atividades de forma��o continuada que voc� organizou nos �ltimos dois anos?'
TX_RESP_Q028 = 'Qual � o percentual de professores com v�nculo est�vel nesta escola?'
TX_RESP_Q029 = 'O Conselho Escolar � um colegiado geralmente constitu�do por representantes da escola e da comunidade que tem como objetivo acompanhar as atividades escolares. Neste ano, quantas vezes se reuniu o Conselho Escolar?'
TX_RESP_Q030 = 'Al�m de voc�, quem participa do Conselho Escolar?'
TX_RESP_Q031 = 'O Conselho de Classe � um org�o formado por todos os professores que lecionam em cada turma/s�rie. Neste ano e nesta escola, quantas vezes se reuniu o Conselho de Classe?'
TX_RESP_Q032 = 'Neste ano e nesta escola, como se deu a elabora��o do Projeto Pedag�gico?'
TX_RESP_Q033 = 'Esta escola participou da Prova Brasil de 2015?'
TX_RESP_Q034 = 'Voc� conhece os resultados do SAEB (Prova Brasil e/ou ANEB) de 2015? Desta escola?'
TX_RESP_Q035 = 'Voc� conhece os resultados do SAEB (Prova Brasil e/ou ANEB) de 2015? Do seu munic�pio?'
TX_RESP_Q036 = 'Voc� conhece os resultados do SAEB (Prova Brasil e/ou ANEB) de 2015? Do seu estado?'
TX_RESP_Q037 = 'Neste ano, qual foi o crit�rio para a admiss�o de alunos nesta escola?'
TX_RESP_Q038 = 'Neste ano, como foi a situa��o da oferta de vagas nesta escola?'
TX_RESP_Q039 = 'Neste ano, qual foi o principal crit�rio utilizado para forma��o das turmas nesta escola?'
TX_RESP_Q040 = 'Neste ano, qual foi o principal crit�rio para a atribui��o das turmas aos professores?'
TX_RESP_Q041 = 'Nesta escola, h� alguma a��o para redu��o das taxas de abandono?'
TX_RESP_Q042 = 'Nesta escola, h� alguma a��o para redu��o das taxas de reprova��o?'
TX_RESP_Q043 = 'Nesta escola, h� alguma a��o para o refor�o escolar � aprendizagem dos alunos (monitoria, aula de refor�o, recupera��o etc.)?'
TX_RESP_Q044 = 'Nesta escola, indique com que frequ�ncia voc� discute com os professores medidas com o objetivo de melhorar o ensino e a aprendizagem dos alunos'
TX_RESP_Q045 = 'Indique com qual frequ�ncia s�o desenvolvidas as seguintes atividades para minimizar as faltas dos alunos neste ano e nesta escola: Os professores conversam com os alunos para tentar solucionar o problema'
TX_RESP_Q046 = 'Indique com qual frequ�ncia s�o desenvolvidas as seguintes atividades para minimizar as faltas dos alunos neste ano e nesta escola: Os pais/respons�veis s�o avisados por comunica��o da escola'
TX_RESP_Q047 = 'Indique com qual frequ�ncia s�o desenvolvidas as seguintes atividades para minimizar as faltas dos alunos neste ano e nesta escola: Os pais/respons�veis s�o chamados � escola para conversar sobre o assunto em reuni�o de pais'
TX_RESP_Q048 = 'Indique com qual frequ�ncia s�o desenvolvidas as seguintes atividades para minimizar as faltas dos alunos neste ano e nesta escola: Os pais/respons�veis s�o chamados � escola para conversar sobre o assunto individualmente'
TX_RESP_Q049 = 'Indique com qual frequ�ncia s�o desenvolvidas as seguintes atividades para minimizar as faltas dos alunos neste ano e nesta escola: A escola envia algu�m � casa do aluno'
TX_RESP_Q050 = 'Indique com qual frequ�ncia voc� desenvolveu as seguintes atividades neste ano e nesta escola: Desenvolveu atividades extracurriculares em esporte'
TX_RESP_Q051 = 'Indique com qual frequ�ncia voc� desenvolveu as seguintes atividades neste ano e nesta escola: Desenvolveu atividades extracurriculares em artes'
TX_RESP_Q052 = 'Indique com qual frequ�ncia voc� desenvolveu as seguintes atividades neste ano e nesta escola: Desenvolveu projetos tem�ticos (ex: bullying, meio ambiente, desigualdades sociais etc.)'
TX_RESP_Q053 = 'Indique com qual frequ�ncia voc� desenvolveu as seguintes atividades neste ano e nesta escola: Neste ano, a escola promoveu eventos para a comunidade'
TX_RESP_Q054 = 'Indique com qual frequ�ncia voc� desenvolveu as seguintes atividades neste ano e nesta escola: Os espa�os desta escola s�o utilizados para eventos promovidos pela comunidade'
TX_RESP_Q055 = 'Indique com qual frequ�ncia voc� desenvolveu as seguintes atividades neste ano e nesta escola: Neste ano, a comunidade colaborou com trabalho volunt�rio para esta escola. (por exemplo, desenvolvendo atividades, ajudando na manuten��o da escola etc.)'
TX_RESP_Q056 = 'Quantos estudantes com defici�ncia ou necessidades especiais estudam nesta escola neste ano?'
TX_RESP_Q057 = 'A infraestrutura da escola � adequada �s pessoas com defici�ncia ou necessidades especiais?'
TX_RESP_Q058 = 'A escola possui sala de recursos multifuncionais para atendimento educacional especializado (AEE)?'
TX_RESP_Q059 = 'Voc� possui forma��o espec�fica para trabalhar com estudantes com defici�ncia ou necessidades especiais?'
TX_RESP_Q060 = 'Os professores desta escola possuem forma��o espec�fica para trabalhar com estudantes com defici�ncia ou necessidades especiais?'
TX_RESP_Q061 = 'Os demais funcion�rios desta escola possuem forma��o para trabalhar com estudantes com defici�ncia ou necessidades especiais?'
TX_RESP_Q062 = 'Em rela��o � merenda escolar, como voc� avalia os seguintes aspectos: Recursos financeiros'
TX_RESP_Q063 = 'Em rela��o � merenda escolar, como voc� avalia os seguintes aspectos: Quantidade de alimentos'
TX_RESP_Q064 = 'Em rela��o � merenda escolar, como voc� avalia os seguintes aspectos: Qualidade de alimentos'
TX_RESP_Q065 = 'Em rela��o � merenda escolar, como voc� avalia os seguintes aspectos: Espa�o f�sico para cozinhar'
TX_RESP_Q066 = 'Em rela��o � merenda escolar, como voc� avalia os seguintes aspectos: Disponibilidade de funcion�rios'
TX_RESP_Q067 = 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Insufici�ncia de recursos financeiros'
TX_RESP_Q068 = 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Inexist�ncia de professores para algumas disciplinas ou s�ries'
TX_RESP_Q069 = 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Car�ncia de pessoal administrativo'
TX_RESP_Q070 = 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Car�ncia de pessoal de apoio pedag�gico (supervisor, coordenador, orientador educacional)'
TX_RESP_Q071 = 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Falta de recursos pedag�gicos'
TX_RESP_Q072 = 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Interrup��o das atividades escolares'
TX_RESP_Q073 = 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Alto �ndice de faltas por parte dos professores'
TX_RESP_Q074 = 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Alto �ndice de faltas por parte dos alunos'
TX_RESP_Q075 = 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Alta rotatividade do corpo docente'
TX_RESP_Q076 = 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Indisciplina por parte dos alunos'
TX_RESP_Q077 = 'Considere as condi��es existentes para o exerc�cio do cargo de diretor nesta escola: H� interfer�ncia de atores externos em sua gest�o?'
TX_RESP_Q078 = 'Considere as condi��es existentes para o exerc�cio do cargo de diretor nesta escola: H� apoio de inst�ncias superiores?'
TX_RESP_Q079 = 'Considere as condi��es existentes para o exerc�cio do cargo de diretor nesta escola: H� troca de informa��es com diretores de outras escolas?'
TX_RESP_Q080 = 'Considere as condi��es existentes para o exerc�cio do cargo de diretor nesta escola: H� apoio da comunidade � sua gest�o?'
TX_RESP_Q081 = 'Esta escola recebeu neste ano apoio financeiro do governo federal?'
TX_RESP_Q082 = 'Esta escola recebeu neste ano apoio financeiro do governo estadual?'
TX_RESP_Q083 = 'Esta escola recebeu neste ano apoio financeiro do governo municipal?'
TX_RESP_Q084 = 'Esta escola recebeu neste ano apoio financeiro de empresas ou doadores individuais?'
TX_RESP_Q085 = 'Para a escolha do livro did�tico, esta escola utilizou o Guia de Livros Did�ticos do MEC?'
TX_RESP_Q086 = 'Como se deu a escolha do livro did�tico neste ano?'
TX_RESP_Q087 = 'Neste ano, nesta escola, ocorreram as seguintes situa��es: Os livros chegaram em tempo h�bil para o in�cio das aulas'
TX_RESP_Q088 = 'Neste ano, nesta escola, ocorreram as seguintes situa��es: Faltaram livros para os alunos'
TX_RESP_Q089 = 'Neste ano, nesta escola, ocorreram as seguintes situa��es: Os livros escolhidos foram os recebidos'
TX_RESP_Q090 = 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o este ano, nesta escola: Agress�o verbal ou f�sica de alunos a professores ou funcion�rios da escola'
TX_RESP_Q091 = 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o este ano, nesta escola: Agress�o verbal ou f�sica de alunos a outros alunos da escola'
TX_RESP_Q092 = 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o este ano, nesta escola: Voc� foi v�tima de atentado � vida'
TX_RESP_Q093 = 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o este ano, nesta escola: Voc� foi amea�ado por algum aluno'
TX_RESP_Q094 = 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o este ano, nesta escola: Voc� foi v�tima de furto (sem uso de viol�ncia)'
TX_RESP_Q095 = 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o este ano, nesta escola: Voc� foi v�tima de roubo (com uso de viol�ncia)'
TX_RESP_Q096 = 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o este ano, nesta escola: Alunos frequentaram a escola sob efeito de bebida alco�lica'
TX_RESP_Q097 = 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o este ano, nesta escola: Alunos frequentaram a escola sob efeito de drogas il�citas'
TX_RESP_Q098 = 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o este ano, nesta escola: Alunos frequenteram a escola portando arma branca (facas, canivetes etc)'
TX_RESP_Q099 = 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o este ano, nesta escola: Alunos frequentaram a escola portando arma de fogo'
TX_RESP_Q100 = 'Nesta escola, h� projetos nas seguintes tem�ticas: Viol�ncia'
TX_RESP_Q101 = 'Nesta escola, h� projetos nas seguintes tem�ticas: Os maleficios do uso de drogas'
TX_RESP_Q102 = 'Nesta escola, h� projetos nas seguintes tem�ticas: Racismo'
TX_RESP_Q103 = 'Nesta escola, h� projetos nas seguintes tem�ticas: Machismo e homofobia'
TX_RESP_Q104 = 'Nesta escola, h� projetos nas seguintes tem�ticas: Bullying'
TX_RESP_Q105 = 'Nesta escola, h� projetos nas seguintes tem�ticas: Sexualidade e gravidez na adolesc�ncia'
TX_RESP_Q106 = 'Nesta escola, h� projetos nas seguintes tem�ticas: Desigualdades sociais'
TX_RESP_Q107 = 'Nesta escola, h� projetos nas seguintes tem�ticas: Diversidade religiosa'
TX_RESP_Q108 = 'Nesta escola, h� projetos nas seguintes tem�ticas: Meio ambiente'
TX_RESP_Q109 = 'Nesta escola, o ensino religioso: � de presen�a obrigat�ria'
TX_RESP_Q110 = 'Nesta escola, o ensino religioso: Segue uma religi�o espec�fica'
TX_RESP_Q111 = 'Nesta escola, o ensino religioso: Nesta escola h� atividades alternativas para os estudantes que n�o queiram participar das aulas de ensino religioso';

run;quit;