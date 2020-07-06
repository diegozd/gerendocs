/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                          */ 
/*                                   			                                    */
/*  Coordena��o-Geral de Instrumentos e medidas 		                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_DIRETOR.sps                                                                 */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DO QUESTION�RIO DO DIRETOR        */
/*                     DA ANEB/PROVA BRASIL 2017                                                       */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo                    */
/* TS_DIRETOR.CSV no diret�rio C:\ do computador.	                        	 */
/*							 */ 
/* Ao terminar esses procedimentos execute o programa salvo utilizando                      */
/* as vari�veis de interesse.                                                                                       */
/******************************************************************************************************/
/*                                                   ATEN��O                                                          */ 
/******************************************************************************************************/
/* Este programa abre a base de dados com os r�tulos das vari�veis de	                    */
/* acordo com o dicion�rio de dados que comp�em os microdados. Para abrir                */
/* os dados sem os r�tulos basta importar diretamente no SPSS.		  */
/* 							  */
/* Os R�tulos de algumas vari�veis n�o est�o completos, em virtude do tamanho do.      */
/* dos enunciados das quest�es. Tais enunciados foram resumidos e indicados com o   */
/* seguinte c�digo: "(Cf. Dic.)". Essas quest�es exigem a Consulta do Dicion�rio de       */
/* Vari�veis para conhecer o enunciado completo.                             		  */
/* 							  */
/*******************************************************************************************************/


GET DATA
  /TYPE=TXT
  /FILE="C:\TS_DIRETOR.csv"
  /DELCASE=LINE
  /DELIMITERS=","
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  ID_PROVA_BRASIL F4.0
  ID_UF F2.0
  ID_MUNICIPIO F7.0
  ID_ESCOLA F8.0
  ID_DEPENDENCIA_ADM F1.0
  ID_LOCALIZACAO F1.0
  IN_PREENCHIMENTO_QUESTIONARIO F1.0
  TX_RESP_Q001 A8
  TX_RESP_Q002 A8
  TX_RESP_Q003 A8
  TX_RESP_Q004 A8
  TX_RESP_Q005 A8
  TX_RESP_Q006 A8
  TX_RESP_Q007 A8
  TX_RESP_Q008 A8
  TX_RESP_Q009 A8
  TX_RESP_Q010 A8
  TX_RESP_Q011 A8
  TX_RESP_Q012 A8
  TX_RESP_Q013 A8
  TX_RESP_Q014 A8
  TX_RESP_Q015 A8
  TX_RESP_Q016 A8
  TX_RESP_Q017 A8
  TX_RESP_Q018 A8
  TX_RESP_Q019 A8
  TX_RESP_Q020 A8
  TX_RESP_Q021 A8
  TX_RESP_Q022 A8
  TX_RESP_Q023 A8
  TX_RESP_Q024 A8
  TX_RESP_Q025 A8
  TX_RESP_Q026 A8
  TX_RESP_Q027 A8
  TX_RESP_Q028 A8
  TX_RESP_Q029 A8
  TX_RESP_Q030 A8
  TX_RESP_Q031 A8
  TX_RESP_Q032 A8
  TX_RESP_Q033 A8
  TX_RESP_Q034 A8
  TX_RESP_Q035 A8  
  TX_RESP_Q036 A8
  TX_RESP_Q037 A8
  TX_RESP_Q038 A8
  TX_RESP_Q039 A8
  TX_RESP_Q040 A8
  TX_RESP_Q041 A8
  TX_RESP_Q042 A8
  TX_RESP_Q043 A8
  TX_RESP_Q044 A8
  TX_RESP_Q045 A8
  TX_RESP_Q046 A8
  TX_RESP_Q047 A8
  TX_RESP_Q048 A8
  TX_RESP_Q049 A8
  TX_RESP_Q050 A8
  TX_RESP_Q051 A8
  TX_RESP_Q052 A8
  TX_RESP_Q053 A8
  TX_RESP_Q054 A8
  TX_RESP_Q055 A8
  TX_RESP_Q056 A8
  TX_RESP_Q057 A8
  TX_RESP_Q058 A8
  TX_RESP_Q059 A8
  TX_RESP_Q060 A8
  TX_RESP_Q061 A8
  TX_RESP_Q062 A8
  TX_RESP_Q063 A8
  TX_RESP_Q064 A8
  TX_RESP_Q065 A8
  TX_RESP_Q066 A8
  TX_RESP_Q067 A8
  TX_RESP_Q068 A8
  TX_RESP_Q069 A8
  TX_RESP_Q070 A8
  TX_RESP_Q071 A8
  TX_RESP_Q072 A8
  TX_RESP_Q073 A8
  TX_RESP_Q074 A8
  TX_RESP_Q075 A8
  TX_RESP_Q076 A8
  TX_RESP_Q077 A8
  TX_RESP_Q078 A8
  TX_RESP_Q079 A8
  TX_RESP_Q080 A8
  TX_RESP_Q081 A8
  TX_RESP_Q082 A8
  TX_RESP_Q083 A8
  TX_RESP_Q084 A8
  TX_RESP_Q085 A8
  TX_RESP_Q086 A8
  TX_RESP_Q087 A8
  TX_RESP_Q088 A8
  TX_RESP_Q089 A8
  TX_RESP_Q090 A8
  TX_RESP_Q091 A8
  TX_RESP_Q092 A8
  TX_RESP_Q093 A8
  TX_RESP_Q094 A8
  TX_RESP_Q095 A8
  TX_RESP_Q096 A8
  TX_RESP_Q097 A8
  TX_RESP_Q098 A8
  TX_RESP_Q099 A8
  TX_RESP_Q100 A8
  TX_RESP_Q101 A8
  TX_RESP_Q102 A8
  TX_RESP_Q103 A8
  TX_RESP_Q104 A8
  TX_RESP_Q105 A8
  TX_RESP_Q106 A8
  TX_RESP_Q107 A8
  TX_RESP_Q108 A8
  TX_RESP_Q109 A8
  TX_RESP_Q110 A8
  TX_RESP_Q111 A8.
CACHE.
EXECUTE.
DATASET NAME DataSet1 WINDOW=FRONT.



VARIABLE LABELS ID_PROVA_BRASIL 'Ano da ANEB/Prova Brasil'.
VARIABLE LABELS ID_UF 'C�digo da Unidade da Federa��o'.
VALUE LABELS ID_UF
11 'RO'
12 'AC'
13 'AM'
14 'RR'
15 'PA'
16 'AP'
17 'TO'
21 'MA'
22 'PI'
23 'CE'
24 'RN'
25 'PB'
26 'PE'
27 'AL'
28 'SE'
29 'BA'
31 'MG'
32 'ES'
33 'RJ'
35 'SP'
41 'PR'
42 'SC'
43 'RS'
50 'MS'
51 'MT'
52 'GO'
53 'DF'.
VARIABLE LABELS ID_MUNICIPIO 'C�digo do Munic�pio'.
VARIABLE LABELS ID_ESCOLA 'C�digo da Escola'.
VARIABLE LABELS ID_DEPENDENCIA_ADM 'Depend�ncia Administrativa'.
VALUE LABELS ID_DEPENDENCIA_ADM
1 'Federal'
2 'Estadual'
3 'Municipal'
4 'Privada'.
VARIABLE LABELS ID_LOCALIZACAO 'Localiza��o'.
VALUE LABELS ID_LOCALIZACAO
1 'Urbana'
2 'Rural'.
VARIABLE LABELS IN_PREENCHIMENTO_QUESTIONARIO 'Indicador de preenchimento do question�rio'.
VALUE LABELS IN_PREENCHIMENTO_QUESTIONARIO
0 'N�o preenchido'
1 'Preenchido parcial ou totalmente'
2 'N�o preenchido'.
VARIABLE LABELS TX_RESP_Q001 'Qual � o seu sexo?'. 
VALUE LABELS TX_RESP_Q001
'A' 'Masculino'
'B' 'Feminino'.
VARIABLE LABELS TX_RESP_Q002 'Voc� poderia nos dizer a sua faixa et�ria?'. 
VALUE LABELS TX_RESP_Q002
'A' 'At� 24 anos'
'B' 'De 25 a 29 anos'
'C' 'De 30 a 39 anos'
'D' 'De 40 a 49 anos'
'E' 'De 50 a 54 anos'
'F' '55 anos ou mais'.
VARIABLE LABELS TX_RESP_Q003 'Como voc� se considera?'. 
VALUE LABELS TX_RESP_Q003
'A' 'Branco(a)'
'B' 'Pardo(a)'
'C' 'Preto(a)'
'D' 'Amarelo(a)'
'E' 'Ind�gena'
'F' 'N�o quero declarar'
'G' 'N�o sei'.
VARIABLE LABELS TX_RESP_Q004 'Qual � o mais alto n�vel de escolaridade que voc� concluiu (at� a gradua��o)?'. 
VALUE LABELS TX_RESP_Q004
'A' 'Menos que o Ensino M�dio (antigo 2� grau)'
'B' 'Ensino M�dio - Magist�rio (antigo 2� grau)'
'C' 'Ensino  M�dio - Outros (antigo 2� grau)'
'D' 'Ensino Superior - Pedagogia'
'E' 'Ensino Superior - Curso Normal Superior'
'F' 'Ensino Superior - Licenciatura em Matem�tica'
'G' 'Ensino Superior - Licenciatura em Letras'
'H' 'Ensino Superior - Outras Licenciaturas'
'I' 'Ensino Superior - Outras �reas'.
VARIABLE LABELS TX_RESP_Q005 'H� quantos anos voc� obteve o n�vel de escolaridade assinalado anteriormente (at� a gradua��o)?'. 
VALUE LABELS TX_RESP_Q005
'A' 'H� menos de 2 anos'
'B' 'De 2 a 7 anos'
'C' 'De 8 a 14 anos'
'D' 'De 15 a 20 anos'
'E' 'H� mais de 20 anos'.
VARIABLE LABELS TX_RESP_Q006 'Indique em que tipo de institui��o voc� obteve seu diploma de ensino superior'. 
VALUE LABELS TX_RESP_Q006
'A' 'N�o conclu� o ensino superior'
'B' 'Privada'
'C' 'P�blica Federal'
'D' 'P�blica Estadual'
'E' 'P�blica Municipal'.
VARIABLE LABELS TX_RESP_Q007 'De que forma voc� realizou o curso de ensino superior?'. 
VALUE LABELS TX_RESP_Q007
'A' 'N�o conclu� o ensino superior'
'B' 'Presencial'
'C' 'Semipresencial'
'D' 'A dist�ncia'.
VARIABLE LABELS TX_RESP_Q008 'Indique o curso de p�s-gradua��o de mais alta titula��o que voc� possui'. 
VALUE LABELS TX_RESP_Q008
'A' 'N�o fiz ou n�o completei curso de p�s-gradua��o'
'B' 'Atualiza��o ou Aperfei�oamento (m�nimo de 180 horas)'
'C' 'Especializa��o (m�nimo de 360 horas)'
'D' 'Mestrado'
'E' 'Doutorado'.
VARIABLE LABELS TX_RESP_Q009 'Indique a �rea tem�tica do curso de p�s-gradua��o de mais alta titula��o que voc� possui'. 
VALUE LABELS TX_RESP_Q009
'A' 'N�o fiz ou n�o completei curso de p�s-gradua��o'
'B' 'Educa��o, enfatizando alfabetiza��o'
'C' 'Educa��o, enfatizando lingu�stica e/ou letramento'
'D' 'Educa��o, enfatizando educa��o matem�tica'
'E' 'Educa��o - outras �nfases'
'F' 'Outras �reas que n�o a Educa��o'.
VARIABLE LABELS TX_RESP_Q010 'Como diretor, qual �, aproximadamente, o seu sal�rio bruto? (com adicionais, se houver)'. 
VALUE LABELS TX_RESP_Q010
'A' 'At� R$ 937,00'
'B' 'Entre R$ 937,01 e R$ 1.405,50'
'C' 'Entre R$ 1.405,51 e R$ 1.874,00'
'D' 'Entre R$ 1.874,01 e R$ 2.342,50'
'E' 'Entre R$ 2.342,51 e R$ 2.811,00'
'F' 'Entre R$ 2.811,01 e R$ 3.279,50'
'G' 'Entre R$ 3.279,51 e R$ 3.748,00'
'H' 'Entre R$ 3.748,01 e R$ 4.685,00'
'I' 'Entre R$ 4.685,01 e R$ 6.559,00'
'J' 'Entre R$ 6.559,01 e R$ 9.370,00'
'K' 'R$ 9.370,01 ou mais'.
VARIABLE LABELS TX_RESP_Q011 'Al�m da dire��o desta escola, voc� exerce outra atividade que contribui para sua renda pessoal?'. 
VALUE LABELS TX_RESP_Q011
'A' 'Sim, na �rea de educa��o'
'B' 'Sim, fora da �rea de educa��o'
'C' 'N�o'.
VARIABLE LABELS TX_RESP_Q012 'Considerando todas as atividades que voc� exerce (dentro e fora da �rea de educa��o), qual �, aproximadamente, o seu sal�rio bruto? (com adicionais, se houver)'. 
VALUE LABELS TX_RESP_Q012
'A' 'At� R$ 937,00'
'B' 'Entre R$ 937,01 e R$ 1.405,50'
'C' 'Entre R$ 1.405,51 e R$ 1.874,00'
'D' 'Entre R$ 1.874,01 e R$ 2.342,50'
'E' 'Entre R$ 2.342,51 e R$ 2.811,00'
'F' 'Entre R$ 2.811,01 e R$ 3.279,50'
'G' 'Entre R$ 3.279,51 e R$ 3.748,00'
'H' 'Entre R$ 3.748,01 e R$ 4.685,00'
'I' 'Entre R$ 4.685,01 e R$ 6.559,00'
'J' 'Entre R$ 6.559,01 e R$ 9.370,00'
'K' 'R$ 9.370,01 ou mais'.
VARIABLE LABELS TX_RESP_Q013 'Qual � a sua carga hor�ria de trabalho semanal, como diretor, nesta escola?'. 
VALUE LABELS TX_RESP_Q013
'A' 'Mais de 40 horas'
'B' '40 horas'
'C' 'De 20 a 39 horas'
'D' 'Menos de 20 horas'.
VARIABLE LABELS TX_RESP_Q014 'Voc� assumiu a dire��o desta escola por meio de:'. 
VALUE LABELS TX_RESP_Q014
'A' 'Concurso p�blico apenas'
'B' 'Elei��o apenas'
'C' 'Indica��o apenas'
'D' 'Processo seletivo apenas'
'E' 'Processo seletivo e Elei��o'
'F' 'Processo seletivo e Indica��o'
'G' 'Outra forma'.
VARIABLE LABELS TX_RESP_Q015 'Por quanto tempo voc� trabalhou como professor antes de se tornar diretor?'. 
VALUE LABELS TX_RESP_Q015
'A' 'Nunca'
'B' 'Menos de um ano'
'C' '1-2 anos'
'D' '3-5 anos'
'E' '6-10 anos'
'F' '11-15 anos'
'G' '16-20 anos'
'H' 'Mais de 20 anos'.
VARIABLE LABELS TX_RESP_Q016 'H� quantos anos voc� exerce fun��es de dire��o?'. 
VALUE LABELS TX_RESP_Q016
'A' 'Menos de um ano'
'B' '1-2 anos'
'C' '3-5 anos'
'D' '6-10 anos'
'E' '11-15 anos'
'F' '16-20 anos'
'G' 'Mais de 20 anos'.
VARIABLE LABELS TX_RESP_Q017 'H� quantos anos voc� � diretor(a) desta escola?'. 
VALUE LABELS TX_RESP_Q017
'A' 'Menos de um ano'
'B' '1-2 anos'
'C' '3-5 anos'
'D' '6-10 anos'
'E' '11-15 anos'
'F' '16-20 anos'
'G' 'Mais de 20 anos'.
VARIABLE LABELS TX_RESP_Q018 'H� quantos anos voc� trabalha na �rea de educa��o?'. 
VALUE LABELS TX_RESP_Q018
'A' 'Menos de um ano'
'B' '1-2 anos'
'C' '3-5 anos'
'D' '6-10 anos'
'E' '11-15 anos'
'F' '16-20 anos'
'G' 'Mais de 20 anos'.
VARIABLE LABELS TX_RESP_Q019 'Durante os �ltimos dois anos, voc� participou de alguma atividade de desenvolvimento profissional?'. 
VALUE LABELS TX_RESP_Q019
'A' 'N�o'
'B' 'Sim'.
VARIABLE LABELS TX_RESP_Q020 'Se voc� participou de alguma atividade de desenvolvimento profissional nos �ltimos dois anos, como voc� avalia o impacto da participa��o em sua atividade como diretor?'. 
VALUE LABELS TX_RESP_Q020
'A' 'N�o participei'
'B' 'Sim, e n�o houve impacto'
'C' 'Sim, e houve um pequeno impacto'
'D' 'Sim, e houve um impacto moderado'
'E' 'Sim, e houve um grande impacto'.
VARIABLE LABELS TX_RESP_Q021 'Nos �ltimos dois anos, voc� gostaria de ter participado de mais atividades de desenvolvimento profissional do que voc� participou?'. 
VALUE LABELS TX_RESP_Q021
'A' 'N�o'
'B' 'Sim'.
VARIABLE LABELS TX_RESP_Q022 'Se voc� gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participa��o? O desenvolvimento profissional era muito caro/eu n�o podia pagar'. 
VALUE LABELS TX_RESP_Q022
'A' 'N�o gostaria de ter participado'
'B' 'N�o'
'C' 'Sim'.
VARIABLE LABELS TX_RESP_Q023 'Se voc� gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participa��o? Houve conflito com o meu hor�rio de trabalho'. 
VALUE LABELS TX_RESP_Q023
'A' 'N�o gostaria de ter participado'
'B' 'N�o'
'C' 'Sim'.
VARIABLE LABELS TX_RESP_Q024 'Se voc� gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participa��o? N�o tinha disponibilidade de tempo'. 
VALUE LABELS TX_RESP_Q024
'A' 'N�o gostaria de ter participado'
'B' 'N�o'
'C' 'Sim'.
VARIABLE LABELS TX_RESP_Q025 'Se voc� gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participa��o? N�o houve oferta na minha �rea de interesse'. 
VALUE LABELS TX_RESP_Q025
'A' 'N�o gostaria de ter participado'
'B' 'N�o'
'C' 'Sim'.
VARIABLE LABELS TX_RESP_Q026 'Nos �ltimos dois anos, voc� organizou alguma atividade de forma��o continuada (atualiza��o, treinamento, capacita��o etc.) nesta escola?'. 
VALUE LABELS TX_RESP_Q026
'A' 'N�o'
'B' 'Sim'.
VARIABLE LABELS TX_RESP_Q027 'Qual foi a quantidade de docentes desta escola que participou das atividades de forma��o continuada que voc� organizou nos �ltimos dois anos?'. 
VALUE LABELS TX_RESP_Q027
'A' 'N�o foram organizadas atividades de forma��o continuada'
'B' 'Poucos professores'
'C' 'Um pouco menos da metade dos professores'
'D' 'Um pouco mais da metade dos professores'
'E' 'Quase todos ou todos os professores'.
VARIABLE LABELS TX_RESP_Q028 'Qual � o percentual de professores com v�nculo est�vel nesta escola?'. 
VALUE LABELS TX_RESP_Q028
'A' 'Menor ou igual a 25%'
'B' 'De 26% a 50%'
'C' 'De 51% a 75%'
'D' 'De 76% a 90%'
'E' 'De 91% a 100%'.
VARIABLE LABELS TX_RESP_Q029 'O Conselho Escolar � um colegiado geralmente constitu�do por representantes da escola e da comunidade que tem como objetivo acompanhar as atividades escolares. Neste ano, quantas vezes se reuniu o Conselho Escolar?'. 
VALUE LABELS TX_RESP_Q029
'A' 'N�o existe Conselho Escolar'
'B' 'Nenhuma vez'
'C' 'Uma vez'
'D' 'Duas vezes'
'E' 'Tr�s vezes ou mais'.
VARIABLE LABELS TX_RESP_Q030 'Al�m de voc�, quem participa do Conselho Escolar?'. 
VALUE LABELS TX_RESP_Q030
'A' 'N�o existe Conselho Escolar'
'B' 'Professores, funcion�rios, alunos e pais/respons�veis'
'C' 'Professores, funcion�rios e pais/respons�veis'
'D' 'Professores, alunos e pais/respons�veis'
'E' 'Professores, funcion�rios e alunos'
'F' 'Professores e pais/respons�veis'
'G' 'Outros'.
VARIABLE LABELS TX_RESP_Q031 'O Conselho de Classe � um org�o formado por todos os professores que lecionam em cada turma/s�rie. Neste ano e nesta escola, quantas vezes se reuniu o Conselho de Classe?'. 
VALUE LABELS TX_RESP_Q031
'A' 'N�o existe Conselho de Classe'
'B' 'Nenhuma vez'
'C' 'Uma vez'
'D' 'Duas vezes'
'E' 'Tr�s vezes ou mais'.
VARIABLE LABELS TX_RESP_Q032 'Neste ano e nesta escola, como se deu a elabora��o do Projeto Pedag�gico?'. 
VALUE LABELS TX_RESP_Q032
'A' 'N�o sei como foi desenvolvido'
'B' 'N�o existe Projeto Pedag�gico'
'C' 'Utilizando-se um modelo pronto, sem discuss�o com a equipe escolar'
'D' 'Utilizando-se um modelo pronto, mas com discuss�o com a equipe escolar'
'E' 'Utilizando-se um modelo pronto, por�m com adapta��es, sem discuss�o com a equipe escolar'
'F' 'Utilizando-se um modelo pronto, por�m com adapta��es e com discuss�o com a equipe escolar'
'G' 'Elaborou-se um modelo pr�prio, mas n�o houve discuss�o com a equipe escolar'
'H' 'Elaborou-se um modelo pr�prio e houve discuss�o com a equipe escolar'.
VARIABLE LABELS TX_RESP_Q033 'Esta escola participou da Prova Brasil de 2015?'. 
VALUE LABELS TX_RESP_Q033
'A' 'Sim'
'B' 'N�o'
'C' 'N�o sei'.
VARIABLE LABELS TX_RESP_Q034 'Voc� conhece os resultados do SAEB (Prova Brasil e/ou ANEB) de 2015? Desta escola?'. 
VALUE LABELS TX_RESP_Q034
'A' 'Sim'
'B' 'N�o'
'C' 'Minha escola n�o participou'.
VARIABLE LABELS TX_RESP_Q035 'Voc� conhece os resultados do SAEB (Prova Brasil e/ou ANEB) de 2015? Do seu munic�pio?'. 
VALUE LABELS TX_RESP_Q035
'A' 'Sim'
'B' 'N�o'
'C' 'Meu munic�pio n�o participou'.
VARIABLE LABELS TX_RESP_Q036 'Voc� conhece os resultados do SAEB (Prova Brasil e/ou ANEB) de 2015? Do seu estado?'. 
VALUE LABELS TX_RESP_Q036
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q037 'Neste ano, qual foi o crit�rio para a admiss�o de alunos nesta escola?'. 
VALUE LABELS TX_RESP_Q037
'A' 'Prova de sele��o'
'B' 'Sorteio'
'C' 'Local de moradia'
'D' 'Prioridade por ordem de chegada'
'E' 'Outro crit�rio'.
VARIABLE LABELS TX_RESP_Q038 'Neste ano, como foi a situa��o da oferta de vagas nesta escola?'. 
VALUE LABELS TX_RESP_Q038
'A' 'Ap�s o processo de matr�cula, a escola ainda tinha vagas dispon�veis'
'B' 'A procura por vaga na escola preencheu todas as vagas oferecidas'
'C' 'A procura por vaga na escola foi um pouco maior que as vagas oferecidas'
'D' 'A procura por vaga na escola superou em muito o n�mero de vagas oferecidas'.
VARIABLE LABELS TX_RESP_Q039 'Neste ano, qual foi o principal crit�rio utilizado para a forma��o das turmas nesta escola?'. 
VALUE LABELS TX_RESP_Q039
'A' 'Homogeneidade quanto � idade (alunos com a mesma idade)'
'B' 'Homogeneidade quanto ao rendimento escolar (alunos com rendimento similar)'
'C' 'Heterogeneidade quanto � idade (alunos com idades diferentes)'
'D' 'Heterogeneidade quanto ao rendimento escolar (alunos com rendimentos diferentes)'
'E' 'Outro crit�rio'
'F' 'N�o houve crit�rio'.
VARIABLE LABELS TX_RESP_Q040 'Neste ano, qual foi o principal crit�rio para a atribui��o das turmas aos professores?'. 
VALUE LABELS TX_RESP_Q040
'A' 'Prefer�ncia dos professores'
'B' 'Escolha dos professores, de acordo com a pontua��o por tempo de servi�o e forma��o'
'C' 'Professores experientes com turmas de aprendizagem mais r�pida'
'D' 'Professores experientes com turmas de aprendizagem mais lenta'
'E' 'Manuten��o do professor com a mesma turma'
'F' 'Revezamento dos professores entre as s�ries'
'G' 'Sorteio das turmas entre os professores'
'H' 'Atribui��o pela dire��o da escola'
'I' 'Outro crit�rio'
'J' 'N�o houve crit�rio'.
VARIABLE LABELS TX_RESP_Q041 'Nesta escola, h� alguma a��o para redu��o das taxas de abandono?'. 
VALUE LABELS TX_RESP_Q041
'A' 'N�o h� a��o, embora exista o problema'
'B' 'N�o h� a��o, porque nesta escola n�o h� esse tipo de problema'
'C' 'Sim, mas com resultados ainda insatisfat�rios'
'D' 'Sim, com resultados satisfat�rios'
'E' 'Sim, mas ainda n�o avaliamos o resultado'.
VARIABLE LABELS TX_RESP_Q042 'Nesta escola, h� alguma a��o para redu��o das taxas de reprova��o?'. 
VALUE LABELS TX_RESP_Q042
'A' 'N�o h� a��o, embora exista o problema'
'B' 'N�o h� a��o, porque nesta escola n�o h� esse tipo de problema'
'C' 'Sim, mas com resultados ainda insatisfat�rios'
'D' 'Sim, com resultados satisfat�rios'
'E' 'Sim, mas ainda n�o avaliamos o resultado'.
VARIABLE LABELS TX_RESP_Q043 'Nesta escola, h� alguma a��o para o refor�o escolar � aprendizagem dos alunos (monitoria, aula de refor�o, recupera��o etc.)?'. 
VALUE LABELS TX_RESP_Q043
'A' 'N�o'
'B' 'Sim'.
VARIABLE LABELS TX_RESP_Q044 'Nesta escola, indique com que frequ�ncia voc� discute com os professores medidas com o objetivo de melhorar o ensino e a aprendizagem dos alunos'. 
VALUE LABELS TX_RESP_Q044
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q045 'Indique com qual frequ�ncia s�o desenvolvidas as seguintes atividades para minimizar as faltas dos alunos neste ano e nesta escola: Os professores conversam com os alunos para tentar solucionar o problema'. 
VALUE LABELS TX_RESP_Q045
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q046 'Indique com qual frequ�ncia s�o desenvolvidas as seguintes atividades para minimizar as faltas dos alunos neste ano e nesta escola: Os pais/respons�veis s�o avisados por comunica��o da escola'. 
VALUE LABELS TX_RESP_Q046
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q047 'Indique com qual frequ�ncia s�o desenvolvidas as seguintes atividades para minimizar as faltas dos alunos neste ano e nesta escola: '+
'Os pais/respons�veis s�o chamados � escola para conversar sobre o assunto em reuni�o de pais'. 
VALUE LABELS TX_RESP_Q047
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q048 'Indique com qual frequ�ncia s�o desenvolvidas as seguintes atividades para minimizar as faltas dos alunos neste ano e nesta escola: '+
'Os pais/respons�veis s�o chamados � escola para conversar sobre o assunto individualmente'. 
VALUE LABELS TX_RESP_Q048
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q049 'Indique com qual frequ�ncia s�o desenvolvidas as seguintes atividades para minimizar as faltas dos alunos neste ano e nesta escola: A escola envia algu�m � casa do aluno'. 
VALUE LABELS TX_RESP_Q049
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q050 'Indique com qual frequ�ncia voc� desenvolveu as seguintes atividades neste ano e nesta escola: Desenvolveu atividades extracurriculares em esporte'. 
VALUE LABELS TX_RESP_Q050
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q051 'Indique com qual frequ�ncia voc� desenvolveu as seguintes atividades neste ano e nesta escola: Desenvolveu atividades extracurriculares em artes'. 
VALUE LABELS TX_RESP_Q051
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q052
 'Indique com qual frequ�ncia voc� desenvolveu as seguintes atividades neste ano e nesta escola: Desenvolveu projetos tem�ticos (ex: bullying, meio ambiente, desigualdades sociais etc)'. 
VALUE LABELS TX_RESP_Q052
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q053 'Indique com qual frequ�ncia voc� desenvolveu as seguintes atividades neste ano e nesta escola: Neste ano, a escola promoveu eventos para a comunidade'.
VALUE LABELS TX_RESP_Q053
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q054 'Indique com qual frequ�ncia voc� desenvolveu as seguintes atividades neste ano e nesta escola: Os espa�os desta escola s�o utilizados para eventos promovidos pela comunidade'. 
VALUE LABELS TX_RESP_Q054
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q055 'Indique com qual frequ�ncia voc� desenvolveu as seguintes atividades neste ano e nesta escola: Neste ano, a comunidade colaborou com trabalho volunt�rio para esta escola. '+
'(por exemplo, desenvolvendo atividades, ajudando na manuten��o da escola etc.)'. 
VALUE LABELS TX_RESP_Q055
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q056 'Quantos estudantes com defici�ncia ou necessidades especiais estudam nesta escola neste ano?'. 
VALUE LABELS TX_RESP_Q056
'A' 'Nenhum'
'B' 'Entre 1 e 5 alunos'
'C' 'Entre 6 e 10 alunos'
'D' 'Entre 11 e 20 alunos'
'E' 'Mais de 20 alunos'.
VARIABLE LABELS TX_RESP_Q057 'A infraestrutura da escola � adequada �s pessoas com defici�ncia ou necessidades especiais?'. 
VALUE LABELS TX_RESP_Q057
'A' 'N�o'
'B' 'Sim, mas pouco adequada'
'C' 'Sim, suficientemente adequada'.
VARIABLE LABELS TX_RESP_Q058 'A escola possui sala de recursos multifuncionais para atendimento educacional especializado (AEE)?'. 
VALUE LABELS TX_RESP_Q058
'A' 'N�o possui sala de recursos'
'B' 'Sim, mas com poucos recursos'
'C' 'Sim, com recursos suficientes'.
VARIABLE LABELS TX_RESP_Q059 'Voc� possui forma��o espec�fica para trabalhar com estudantes com defici�ncia ou necessidades especiais?'. 
VALUE LABELS TX_RESP_Q059
'A' 'N�o'
'B' 'Sim, mas apenas em uma �rea/defici�ncia'
'C' 'Sim, em mais de uma �rea/defici�ncia'.
VARIABLE LABELS TX_RESP_Q060 'Os professores desta escola possuem forma��o espec�fica para trabalhar com estudantes com defici�ncia ou necessidades especiais?'. 
VALUE LABELS TX_RESP_Q060
'A' 'N�o'
'B' 'Sim, mas em n�mero insuficiente'
'C' 'Sim, em n�mero suficiente'.
VARIABLE LABELS TX_RESP_Q061 'Os demais funcion�rios desta escola possuem forma��o para trabalhar com estudantes com defici�ncia ou necessidades especiais?'. 
VALUE LABELS TX_RESP_Q061
'A' 'N�o'
'B' 'Sim, mas em n�mero insuficiente'
'C' 'Sim, em n�mero suficiente'.
VARIABLE LABELS TX_RESP_Q062 'Em rela��o � merenda escolar, como voc� avalia os seguintes aspectos: Recursos financeiros'. 
VALUE LABELS TX_RESP_Q062
'A' 'Inexistente'
'B' 'Ruim'
'C' 'Razo�vel'
'D' 'Bom'
'E' '�timo'.
VARIABLE LABELS TX_RESP_Q063 'Em rela��o � merenda escolar, como voc� avalia os seguintes aspectos: Quantidade de alimentos'. 
VALUE LABELS TX_RESP_Q063
'A' 'Inexistente'
'B' 'Ruim'
'C' 'Razo�vel'
'D' 'Bom'
'E' '�timo'.
VARIABLE LABELS TX_RESP_Q064 'Em rela��o � merenda escolar, como voc� avalia os seguintes aspectos: Qualidade de alimentos'. 
VALUE LABELS TX_RESP_Q064
'A' 'Inexistente'
'B' 'Ruim'
'C' 'Razo�vel'
'D' 'Bom'
'E' '�timo'.
VARIABLE LABELS TX_RESP_Q065 'Em rela��o � merenda escolar, como voc� avalia os seguintes aspectos: Espa�o f�sico para cozinhar'. 
VALUE LABELS TX_RESP_Q065
'A' 'Inexistente'
'B' 'Ruim'
'C' 'Razo�vel'
'D' 'Bom'
'E' '�timo'.
VARIABLE LABELS TX_RESP_Q066 'Em rela��o � merenda escolar, como voc� avalia os seguintes aspectos: Disponibilidade de funcion�rios'. 
VALUE LABELS TX_RESP_Q066
'A' 'Inexistente'
'B' 'Ruim'
'C' 'Razo�vel'
'D' 'Bom'
'E' '�timo'.
VARIABLE LABELS TX_RESP_Q067 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Insufici�ncia de recursos financeiros'. 
VALUE LABELS TX_RESP_Q067
'A' 'N�o'
'B' 'Sim, pouco'
'C' 'Sim, moderadamente'
'D' 'Sim, muito'.
VARIABLE LABELS TX_RESP_Q068 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Inexist�ncia de professores para algumas disciplinas ou s�ries'. 
VALUE LABELS TX_RESP_Q068
'A' 'N�o'
'B' 'Sim, pouco'
'C' 'Sim, moderadamente'
'D' 'Sim, muito'.
VARIABLE LABELS TX_RESP_Q069 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Car�ncia de pessoal administrativo'. 
VALUE LABELS TX_RESP_Q069
'A' 'N�o'
'B' 'Sim, pouco'
'C' 'Sim, moderadamente'
'D' 'Sim, muito'.
VARIABLE LABELS TX_RESP_Q070 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Car�ncia de pessoal de apoio pedag�gico (supervisor, coordenador, orientador educacional)'. 
VALUE LABELS TX_RESP_Q070
'A' 'N�o'
'B' 'Sim, pouco'
'C' 'Sim, moderadamente'
'D' 'Sim, muito'.
VARIABLE LABELS TX_RESP_Q071 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Falta de recursos pedag�gicos'. 
VALUE LABELS TX_RESP_Q071
'A' 'N�o'
'B' 'Sim, pouco'
'C' 'Sim, moderadamente'
'D' 'Sim, muito'.
VARIABLE LABELS TX_RESP_Q072 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Interrup��o das atividades escolares'. 
VALUE LABELS TX_RESP_Q072
'A' 'N�o'
'B' 'Sim, pouco'
'C' 'Sim, moderadamente'
'D' 'Sim, muito'.
VARIABLE LABELS TX_RESP_Q073 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Alto �ndice de faltas por parte dos professores'. 
VALUE LABELS TX_RESP_Q073
'A' 'N�o'
'B' 'Sim, pouco'
'C' 'Sim, moderadamente'
'D' 'Sim, muito'.
VARIABLE LABELS TX_RESP_Q074 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Alto �ndice de faltas por parte dos alunos'. 
VALUE LABELS TX_RESP_Q074
'A' 'N�o'
'B' 'Sim, pouco'
'C' 'Sim, moderadamente'
'D' 'Sim, muito'.
VARIABLE LABELS TX_RESP_Q075 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Alta rotatividade do corpo docente'. 
VALUE LABELS TX_RESP_Q075
'A' 'N�o'
'B' 'Sim, pouco'
'C' 'Sim, moderadamente'
'D' 'Sim, muito'.
VARIABLE LABELS TX_RESP_Q076 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Indisciplina por parte dos alunos'. 
VALUE LABELS TX_RESP_Q076
'A' 'N�o'
'B' 'Sim, pouco'
'C' 'Sim, moderadamente'
'D' 'Sim, muito'.
VARIABLE LABELS TX_RESP_Q077 'Considere as condi��es existentes para o exerc�cio do cargo de diretor nesta escola: H� interfer�ncia de atores externos em sua gest�o?'. 
VALUE LABELS TX_RESP_Q077
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q078 'Considere as condi��es existentes para o exerc�cio do cargo de diretor nesta escola: H� apoio de inst�ncias superiores?'. 
VALUE LABELS TX_RESP_Q078
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q079 'Considere as condi��es existentes para o exerc�cio do cargo de diretor nesta escola: H� troca de informa��es com diretores de outras escolas?'. 
VALUE LABELS TX_RESP_Q079
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q080 'Considere as condi��es existentes para o exerc�cio do cargo de diretor nesta escola: H� apoio da comunidade � sua gest�o?'. 
VALUE LABELS TX_RESP_Q080
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q081 'Esta escola recebeu neste ano apoio financeiro do governo federal?'. 
VALUE LABELS TX_RESP_Q081
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q082 'Esta escola recebeu neste ano apoio financeiro do governo estadual?'. 
VALUE LABELS TX_RESP_Q082
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q083 'Esta escola recebeu neste ano apoio financeiro do governo municipal?'. 
VALUE LABELS TX_RESP_Q083
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q084 'Esta escola recebeu neste ano apoio financeiro de empresas ou doadores individuais?'. 
VALUE LABELS TX_RESP_Q084
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q085 'Para a escolha do livro did�tico, esta escola utilizou o Guia de Livros Did�ticos do MEC?'. 
VALUE LABELS TX_RESP_Q085
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q086 'Como se deu a escolha do livro did�tico neste ano?'. 
VALUE LABELS TX_RESP_Q086
'A' 'N�o sei'
'B' 'Foi escolhido de forma participativa pelos professores'
'C' 'Foi escolhido por somente alguns membros da equipe escolar'
'D' 'Foi escolhido por �rg�os externos � escola'
'E' 'Foi escolhido de outra maneira'.
VARIABLE LABELS TX_RESP_Q087 'Neste ano, nesta escola, ocorreram as seguintes situa��es: Os livros chegaram em tempo h�bil para o in�cio das aulas'. 
VALUE LABELS TX_RESP_Q087
'A' 'Sim'
'B' 'N�o'
'C' 'N�o sei'.
VARIABLE LABELS TX_RESP_Q088 'Neste ano, nesta escola, ocorreram as seguintes situa��es: Faltaram livros para os alunos'. 
VALUE LABELS TX_RESP_Q088
'A' 'Sim'
'B' 'N�o'
'C' 'N�o sei'.
VARIABLE LABELS TX_RESP_Q089 'Neste ano, nesta escola, ocorreram as seguintes situa��es: Os livros escolhidos foram os recebidos'. 
VALUE LABELS TX_RESP_Q089
'A' 'Sim'
'B' 'N�o'
'C' 'N�o sei'.
VARIABLE LABELS TX_RESP_Q090 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o este ano, nesta escola: Agress�o verbal ou f�sica de alunos a professores ou funcion�rios da escola'. 
VALUE LABELS TX_RESP_Q090
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q091 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o este ano, nesta escola: Agress�o verbal ou f�sica de alunos a outros alunos da escola'. 
VALUE LABELS TX_RESP_Q091
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q092 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o este ano, nesta escola: Voc� foi v�tima de atentado � vida'. 
VALUE LABELS TX_RESP_Q092
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q093 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o este ano, nesta escola: Voc� foi amea�ado por algum aluno'. 
VALUE LABELS TX_RESP_Q093
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q094 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o este ano, nesta escola: Voc� foi v�tima de furto (sem uso de viol�ncia)'. 
VALUE LABELS TX_RESP_Q094
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q095 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o este ano, nesta escola: Voc� foi v�tima de roubo (com uso de viol�ncia)'. 
VALUE LABELS TX_RESP_Q095
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q096 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o este ano, nesta escola: Alunos frequentaram a escola sob efeito de bebida alco�lica'. 
VALUE LABELS TX_RESP_Q096
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q097 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o este ano, nesta escola: Alunos frequentaram a escola sob efeito de drogas il�citas'. 
VALUE LABELS TX_RESP_Q097
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q098 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o este ano, nesta escola: Alunos frequentaram a escola portando arma branca (facas, canivetes etc)'. 
VALUE LABELS TX_RESP_Q098
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q099 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o este ano, nesta escola: Alunos frequentaram a escola portando arma de fogo'. 
VALUE LABELS TX_RESP_Q099
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q100 'Nesta escola, h� projetos nas seguintes tem�ticas: Viol�ncia'. 
VALUE LABELS TX_RESP_Q100
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q101 'Nesta escola, h� projetos nas seguintes tem�ticas: Os malef�cios do uso de drogas'. 
VALUE LABELS TX_RESP_Q101
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q102 'Nesta escola, h� projetos nas seguintes tem�ticas: Racismo'. 
VALUE LABELS TX_RESP_Q102
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q103 'Nesta escola, h� projetos nas seguintes tem�ticas: Machismo e homofobia'. 
VALUE LABELS TX_RESP_Q103
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q104 'Nesta escola, h� projetos nas seguintes tem�ticas: Bullying'. 
VALUE LABELS TX_RESP_Q104
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q105 'Nesta escola, h� projetos nas seguintes tem�ticas: Sexualidade e gravidez na adolesc�ncia'. 
VALUE LABELS TX_RESP_Q105
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q106 'Nesta escola, h� projetos nas seguintes tem�ticas: Desigualdades sociais'. 
VALUE LABELS TX_RESP_Q106
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q107 'Nesta escola, h� projetos nas seguintes tem�ticas: Diversidade religiosa'. 
VALUE LABELS TX_RESP_Q107
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q108 'Nesta escola, h� projetos nas seguintes tem�ticas: Meio ambiente'. 
VALUE LABELS TX_RESP_Q108
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q109 'Nesta escola, o ensino religioso: � de presen�a obrigat�ria'. 
VALUE LABELS TX_RESP_Q109
'A' 'N�o h� aula de ensino religioso'
'B' 'Sim'
'C' 'N�o'.
VARIABLE LABELS TX_RESP_Q110 'Nesta escola, o ensino religioso: Segue uma religi�o espec�fica'. 
VALUE LABELS TX_RESP_Q110
'A' 'N�o h� aula de ensino religioso'
'B' 'Sim'
'C' 'N�o'.
VARIABLE LABELS TX_RESP_Q111 'Nesta escola, o ensino religioso: Nesta escola h� atividades para os estudantes que n�o queiram participar das aulas de ensino religioso'. 
VALUE LABELS TX_RESP_Q111
'A' 'N�o h� aula de ensino religioso'
'B' 'Sim'
'C' 'N�o'.



