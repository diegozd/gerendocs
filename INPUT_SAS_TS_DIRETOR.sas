/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
/*                                   			                                       */
/*  Coordenação-Geral de Instrumentos de Medidas                                       */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_DIRETOR                                                  */
/*-------------------------------------------------------------------------------------*/
/*  DESCRICAO:     PROGRAMA PARA LEITURA DO QUESTIONÁRIO DO                            */
/*                    DIRETOR DA ANEB/PROVA BRASIL 2017                                */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, é necessário salvar este programa e o arquivo             */
/* TS_DIRETOR.CSV no diretório C:\ do computador.	                                   */
/*							                                                           */ 
/* Ao terminar esses procedimentos, execute o programa salvo utilizando                */
/* as variáveis de interesse.                                                          */
/***************************************************************************************/
/*                                  ATENÇÃO                                            */ 
/***************************************************************************************/
/* Este programa abre a base de dados com os rótulos das variáveis de	               */
/* acordo com o dicionário de dados que compõe os microdados. Para abrir               */
/* os dados sem os rótulos, basta importar diretamente no SAS.                         */
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
0='Não preenchido'
1='Preenchido parcial ou totalmente';

value $QDum
A='Masculino'
B='Feminino';

value $QDdois
A='Até 24 anos'
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
E='Indígena'
F='Não quero declarar';

value $QDquatro
A='Menos que o Ensino Médio (antigo 2º grau)'
B='Ensino Médio - Magistério (antigo 2º grau)'
C='Ensino  Médio - Outros (antigo 2º grau)'
D='Ensino Superior - Pedagogia'
E='Ensino Superior - Curso Normal Superior'
F='Ensino Superior - Licenciatura em Matemática'
G='Ensino Superior - Licenciatura em Letras'
H='Ensino Superior - Outras Licenciaturas'
I='Ensino Superior - Outras áreas';

value $QDcinco
A='Há menos de 2 anos'
B='De 2 a 7 anos'
C='De 8 a 14 anos'
D='De 15 a 20 anos'
E='Há mais de 20 anos';

value $QDseis
A='Não concluí o ensino superior'
B='Privada'
C='Pública Federal'
D='Pública Estadual'
E='Pública Municipal';

value $QDsete
A='Não concluí o ensino superior'
B='Presencial'
C='Semipresencial'
D='A distância';

value $QDoito
A='Não fiz ou não completei curso de pós-graduação'
B='Atualização ou Aperfeiçoamento (mínimo 180 horas)'
C='Especialização (mínimo de 360 horas)'
D='Mestrado'
E='Doutorado';

value $QDnove
A='Não fiz ou não completei curso de pós-graduação'
B='Educação, enfatizando alfabetização'
C='Educação, enfatizando linguística e/ou letramento'
D='Educação, enfatizando educação matemática'
E='Educação - outras ênfases'
F='Outras áreas que não a Educação';

value $QDdez
A='Até R$ 937,00'
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
A='Sim, na área de educação'
B='Sim, fora da área de educação'
C='Não';

value $QDdoze
A='Até R$ 937,00'
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
A='Concurso público apenas'
B='Eleição apenas'
C='Indicação apenas'
D='Processo seletivo apenas'
E='Processo seletivo e Eleição'
F='Processo seletivo e Indicação'
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
A='Não'
B='Sim';

value $QDvinte
A='Não participei'
B='Sim, e não houve impacto'
C='Sim, e houve um pequeno impacto'
D='Sim, e houve um impacto moderado'
E='Sim, e houve um grande impacto';

value $QDvinteum
A='Não'
B='Sim';

value $QDvintedois
A='Não gostaria de ter participado'
B='Não'
C='Sim';

value $QDvintetres
A='Não gostaria de ter participado'
B='Não'
C='Sim';

value $QDvintequatro
A='Não gostaria de ter participado'
B='Não'
C='Sim';

value $QDvintecinco
A='Não gostaria de ter participado'
B='Não'
C='Sim';

value $QDvinteseis
A='Não'
B='Sim';

value $QDvintesete
A='Não foram organizadas atividades de formação continuada'
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
A='Não existe Conselho Escolar'
B='Nenhuma vez'
C='Uma vez'
D='Duas vezes'
E='Três vezes ou mais';

value $QDtrinta
A='Não existe Conselho Escolar'
B='Professores, funcionários, alunos e pais/responsáveis'
C='Professores, funcionários e pais/responsáveis'
D='Professores, alunos e pais/responsáveis'
E='Professores, funcionários e alunos'
F='Professores e pais/responsáveis'
G='Outros';

value $QDtrintaum
A='Não existe Conselho de Classe'
B='Nenhuma vez'
C='Uma vez'
D='Duas vezes'
E='Três vezes ou mais';

value $QDtrintadois
A='Não sei como foi desenvolvido'
B='Não existe Projeto Pedagógico'
C='Utilizando-se um modelo pronto, sem discussão com a equipe escolar'
D='Utilizando-se um modelo pronto, mas com discussão com a equipe escolar'
E='Utilizando-se um modelo pronto, porém com adaptações, sem discussão com a equipe escolar'
F='Utilizando-se um modelo pronto, porém com adaptações e com discussão com a equipe escolar'
G='Elaborou-se um modelo próprio, mas não houve discussão com a equipe escolar'
H='Elaborou-se um modelo próprio e houve discussão com a equipe escolar';

value $QDtrintatres
A='Sim'
B='Não'
C='Não sei';

value $QDtrintaquatro
A='Sim'
B='Não'
C='Minha escola não participou';

value $QDtrintacinco
A='Sim'
B='Não'
C='Meu município não participou';

value $QDtrintaseis
A='Sim'
B='Não';

value $QDtrintasete
A='Prova de seleção'
B='Sorteio'
C='Local de moradia'
D='Prioridade por ordem de chegada'
E='Outro critério';

value $QDtrintaoito
A='Após o processo de matrícula, a escola ainda tinha vagas disponíveis'
B='A procura por vaga na escola preencheu todas as vagas oferecidas'
C='A procura por vaga na escola foi um pouco maior que as vagas oferecidas'
D='A procura por vaga na escola superou em muito o número de vagas oferecidas';

value $QDtrintanove
A='Homogeneidade quando à idade (alunos com a mesma idade)'
B='Homogeneidade quanto ao rendimento escolar (alunos com rendimento similar)'
C='Heterogeneidade quanto à idade (alunos com idades diferentes)'
D='Heterogeneidade quanto ao redimento escolar (alunos com rendimentos diferentes)'
E='Outro critério'
F='Não houve critério';

value $QDquarenta
A='Preferência dos professores'
B='Escolha dos professores, de acordo com a pontuação por tempo de serviço e formação'
C='Professores experientes com turmas de aprendizagem mais rápida'
D='Professores experientes com turmas de aprendizagem mais lenta'
E='Manutenção do professor com a mesma turma'
F='Revezamento dos professores entre as séries'
G='Sorteio das turmas entre os professores'
H='Atribuição pela direção da escola'
I='Outro critério'
J='Não houve critério';

value $QDquarentaum
A='Não há ação, embora exista o problema'
B='Não há ação, porque nesta escola não há esse tipo de problema'
C='Sim, mas com resultados ainda insatisfatórios'
D='Sim, com resultados satisfatórios'
E='Sim, mas ainda não avaliamos o resultado';

value $QDquarentadois
A='Não há ação, embora exista o problema'
B='Não há ação, porque nesta escola não há esse tipo de problema'
C='Sim, mas com resultados ainda insatisfatórios'
D='Sim, com resultados satisfatórios'
E='Sim, mas ainda não avaliamos o resultado';

value $QDquarentatres
A='Não'
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
A='Não'
B='Sim, mas pouco adequada'
C='Sim, suficientemente adequada';

value $QDcinquentaoito
A='Não possui sala de recursos'
B='Sim, mas com poucos recursos'
C='Sim, com recursos suficientes';

value $QDcinquentanove
A='Não'
B='Sim, mas apenas em uma área/deficiência'
C='Sim, em mais de uma área/deficiência';

value $QDsessenta
A='Não'
B='Sim, mas em número insuficiente'
C='Sim, em número suficiente';

value $QDsessentaum
A='Não'
B='Sim, mas em número insuficiente'
C='Sim, em número suficiente';

value $QDsessentadois
A='Inexistente'
B='Ruim'
C='Razoável'
D='Bom'
E='Ótimo';

value $QDsessentatres
A='Inexistente'
B='Ruim'
C='Razoável'
D='Bom'
E='Ótimo';

value $QDsessentaquatro
A='Inexistente'
B='Ruim'
C='Razoável'
D='Bom'
E='Ótimo';

value $QDsessentacinco
A='Inexistente'
B='Ruim'
C='Razoável'
D='Bom'
E='Ótimo';

value $QDsessentaseis
A='Inexistente'
B='Ruim'
C='Razoável'
D='Bom'
E='Ótimo';

value $QDsessentasete
A='Não'
B='Sim, pouco'
C='Sim, moderadamente'
D='Sim, muito';

value $QDsessentaoito
A='Não'
B='Sim, pouco'
C='Sim, moderadamente'
D='Sim, muito';

value $QDsessentanove
A='Não'
B='Sim, pouco'
C='Sim, moderadamente'
D='Sim, muito';

value $QDsetenta
A='Não'
B='Sim, pouco'
C='Sim, moderadamente'
D='Sim, muito';

value $QDsetentaum
A='Não'
B='Sim, pouco'
C='Sim, moderadamente'
D='Sim, muito';

value $QDsetentadois
A='Não'
B='Sim, pouco'
C='Sim, moderadamente'
D='Sim, muito';

value $QDsetentatres
A='Não'
B='Sim, pouco'
C='Sim, moderadamente'
D='Sim, muito';

value $QDsetentaquatro
A='Não'
B='Sim, pouco'
C='Sim, moderadamente'
D='Sim, muito';

value $QDsetentacinco
A='Não'
B='Sim, pouco'
C='Sim, moderadamente'
D='Sim, muito';

value $QDsetentaseis
A='Não'
B='Sim, pouco'
C='Sim, moderadamente'
D='Sim, muito';

value $QDsetentasete
A='Sim'
B='Não';

value $QDsetentaoito
A='Sim'
B='Não';

value $QDsetentanove
A='Sim'
B='Não';

value $QDoitenta
A='Sim'
B='Não';

value $QDoitentaum
A='Sim'
B='Não';

value $QDoitentadois
A='Sim'
B='Não';

value $QDoitentatres
A='Sim'
B='Não';

value $QDoitentaquatro
A='Sim'
B='Não';

value $QDoitentacinco
A='Sim'
B='Não';

value $QDoitentaseis
A='Não sei'
B='Foi escolhido de forma participativa pelos professores'
C='Foi escolhido por somente alguns membros da equipe escolar'
D='Foi escolhido por órgãos externos à escola'
E='Foi escolhido de outra maneira';

value $QDoitentasete
A='Sim'
B='Não'
C='Não sei';

value $QDoitentaoito
A='Sim'
B='Não'
C='Não sei';

value $QDoitentanove
A='Sim'
B='Não'
C='Não sei';

value $QDnoventa
A='Sim'
B='Não';

value $QDnoventaum
A='Sim'
B='Não';

value $QDnoventadois
A='Sim'
B='Não';

value $QDnoventatres
A='Sim'
B='Não';

value $QDnoventaquatro
A='Sim'
B='Não';

value $QDnoventacinco
A='Sim'
B='Não';

value $QDnoventaseis
A='Sim'
B='Não';

value $QDnoventasete
A='Sim'
B='Não';

value $QDnoventaoito
A='Sim'
B='Não';

value $QDnoventanove
A='Sim'
B='Não';

value $QDcem
A='Sim'
B='Não';

value $QDcemum
A='Sim'
B='Não';

value $QDcemdois
A='Sim'
B='Não';

value $QDcemtres
A='Sim'
B='Não';

value $QDcemquatro
A='Sim'
B='Não';

value $QDcemcinco
A='Sim'
B='Não';

value $QDcemseis
A='Sim'
B='Não';

value $QDcemsete
A='Sim'
B='Não';

value $QDcemoito
A='Sim'
B='Não';

value $QDcemnove
A='Não há aula de ensino religioso'
B='Sim'
C='Não';

value $QDcemdez
A='Não há aula de ensino religioso'
B='Sim'
C='Não';

value $QDcemonze
A='Não há aula de ensino religioso'
B='Sim'
C='Não';

run;

DATA WORK.TS_DIRETOR;

 INFILE 'C:\TS_DIRETOR.csv' /*Endereço do arquivo*/
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
ID_UF = 'Código da Unidade da Federação'
ID_MUNICIPIO = 'Código do Município'
ID_ESCOLA = 'Código da Escola'
ID_DEPENDENCIA_ADM = 'Dependência Administrativa'
ID_LOCALIZACAO = 'Localização'
IN_PREENCHIMENTO_QUESTIONARIO = 'Indicador de preenchimento do questionário'
TX_RESP_Q001 = 'Qual é o seu sexo?'
TX_RESP_Q002 = 'Você poderia nos dizer a sua faixa etária?'
TX_RESP_Q003 = 'Qual é a sua cor ou raça?'
TX_RESP_Q004 = 'Qual é o mais alto nível de escolaridade que você concluiu (até a graduação)?'
TX_RESP_Q005 = 'Há quantos anos você obteve o nível de escolaridade assinalado anteriormente (até a graduação)?'
TX_RESP_Q006 = 'Indique em que tipo de instituição você obteve seu diploma de ensino superior'
TX_RESP_Q007 = 'De que forma você realizou o curso de ensino superior?'
TX_RESP_Q008 = 'Indique o curso de pós-graduação de mais alta titulação que você possui'
TX_RESP_Q009 = 'Indique a área temática do curso de pós-graduação de mais alta titulação que você possui'
TX_RESP_Q010 = 'Como diretor, qual é, aproximadamente, o seu salário bruto? (com adicionais, se houver)'
TX_RESP_Q011 = 'Além da direção desta escola, você exerce outra atividade que contribui para sua renda pessoal?'
TX_RESP_Q012 = 'Considerando todas as atividades que você exerce (dentro e fora da área de educação), qual é, aproximadamente, o seu salário bruto? (com adicionais, se houver)'
TX_RESP_Q013 = 'Qual é a sua carga horária de trabalho semanal, como diretor, nesta escola?'
TX_RESP_Q014 = 'Você assumiu a direção desta escola por meio de:'
TX_RESP_Q015 = 'Por quanto tempo você trabalhou como professor antes de se tornar diretor?'
TX_RESP_Q016 = 'Há quantos anos você exerce funções de direção?'
TX_RESP_Q017 = 'Há quantos anos você é diretor(a) desta escola?'
TX_RESP_Q018 = 'Há quantos anos você trabalha na área de educação?'
TX_RESP_Q019 = 'Durante os últimos dois anos, você participou da alguma atividade de desenvolvimento profissional?'
TX_RESP_Q020 = 'Se você participou de alguma atividade de desenvolvimento profissional nos últimos dois anos, como você avalia o impacto da participação em sua atividade como diretor?'
TX_RESP_Q021 = 'Nos últimos dois anos, você gostaria de ter participado de mais atividades de desenvolvimento profissional do que você participou?'
TX_RESP_Q022 = 'Se você gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participação? O desenvolvimento profissional era muito caro/eu não podia pagar'
TX_RESP_Q023 = 'Se você gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participação? Houve conflito com o meu horário de trabalho'
TX_RESP_Q024 = 'Se você gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participação? Não tinha disponibilidade de tempo'
TX_RESP_Q025 = 'Se você gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participação? Não houve oferta na minha área de interesse'
TX_RESP_Q026 = 'Nos últimos dois anos, você organizou alguma atividade de formação continuada (atualização, treinamento, capacitação etc.) nesta escola?'
TX_RESP_Q027 = 'Qual foi a quantidade de docentes desta escola que participou das atividades de formação continuada que você organizou nos últimos dois anos?'
TX_RESP_Q028 = 'Qual é o percentual de professores com vínculo estável nesta escola?'
TX_RESP_Q029 = 'O Conselho Escolar é um colegiado geralmente constituído por representantes da escola e da comunidade que tem como objetivo acompanhar as atividades escolares. Neste ano, quantas vezes se reuniu o Conselho Escolar?'
TX_RESP_Q030 = 'Além de você, quem participa do Conselho Escolar?'
TX_RESP_Q031 = 'O Conselho de Classe é um orgão formado por todos os professores que lecionam em cada turma/série. Neste ano e nesta escola, quantas vezes se reuniu o Conselho de Classe?'
TX_RESP_Q032 = 'Neste ano e nesta escola, como se deu a elaboração do Projeto Pedagógico?'
TX_RESP_Q033 = 'Esta escola participou da Prova Brasil de 2015?'
TX_RESP_Q034 = 'Você conhece os resultados do SAEB (Prova Brasil e/ou ANEB) de 2015? Desta escola?'
TX_RESP_Q035 = 'Você conhece os resultados do SAEB (Prova Brasil e/ou ANEB) de 2015? Do seu município?'
TX_RESP_Q036 = 'Você conhece os resultados do SAEB (Prova Brasil e/ou ANEB) de 2015? Do seu estado?'
TX_RESP_Q037 = 'Neste ano, qual foi o critério para a admissão de alunos nesta escola?'
TX_RESP_Q038 = 'Neste ano, como foi a situação da oferta de vagas nesta escola?'
TX_RESP_Q039 = 'Neste ano, qual foi o principal critério utilizado para formação das turmas nesta escola?'
TX_RESP_Q040 = 'Neste ano, qual foi o principal critério para a atribuição das turmas aos professores?'
TX_RESP_Q041 = 'Nesta escola, há alguma ação para redução das taxas de abandono?'
TX_RESP_Q042 = 'Nesta escola, há alguma ação para redução das taxas de reprovação?'
TX_RESP_Q043 = 'Nesta escola, há alguma ação para o reforço escolar à aprendizagem dos alunos (monitoria, aula de reforço, recuperação etc.)?'
TX_RESP_Q044 = 'Nesta escola, indique com que frequência você discute com os professores medidas com o objetivo de melhorar o ensino e a aprendizagem dos alunos'
TX_RESP_Q045 = 'Indique com qual frequência são desenvolvidas as seguintes atividades para minimizar as faltas dos alunos neste ano e nesta escola: Os professores conversam com os alunos para tentar solucionar o problema'
TX_RESP_Q046 = 'Indique com qual frequência são desenvolvidas as seguintes atividades para minimizar as faltas dos alunos neste ano e nesta escola: Os pais/responsáveis são avisados por comunicação da escola'
TX_RESP_Q047 = 'Indique com qual frequência são desenvolvidas as seguintes atividades para minimizar as faltas dos alunos neste ano e nesta escola: Os pais/responsáveis são chamados à escola para conversar sobre o assunto em reunião de pais'
TX_RESP_Q048 = 'Indique com qual frequência são desenvolvidas as seguintes atividades para minimizar as faltas dos alunos neste ano e nesta escola: Os pais/responsáveis são chamados à escola para conversar sobre o assunto individualmente'
TX_RESP_Q049 = 'Indique com qual frequência são desenvolvidas as seguintes atividades para minimizar as faltas dos alunos neste ano e nesta escola: A escola envia alguém à casa do aluno'
TX_RESP_Q050 = 'Indique com qual frequência você desenvolveu as seguintes atividades neste ano e nesta escola: Desenvolveu atividades extracurriculares em esporte'
TX_RESP_Q051 = 'Indique com qual frequência você desenvolveu as seguintes atividades neste ano e nesta escola: Desenvolveu atividades extracurriculares em artes'
TX_RESP_Q052 = 'Indique com qual frequência você desenvolveu as seguintes atividades neste ano e nesta escola: Desenvolveu projetos temáticos (ex: bullying, meio ambiente, desigualdades sociais etc.)'
TX_RESP_Q053 = 'Indique com qual frequência você desenvolveu as seguintes atividades neste ano e nesta escola: Neste ano, a escola promoveu eventos para a comunidade'
TX_RESP_Q054 = 'Indique com qual frequência você desenvolveu as seguintes atividades neste ano e nesta escola: Os espaços desta escola são utilizados para eventos promovidos pela comunidade'
TX_RESP_Q055 = 'Indique com qual frequência você desenvolveu as seguintes atividades neste ano e nesta escola: Neste ano, a comunidade colaborou com trabalho voluntário para esta escola. (por exemplo, desenvolvendo atividades, ajudando na manutenção da escola etc.)'
TX_RESP_Q056 = 'Quantos estudantes com deficiência ou necessidades especiais estudam nesta escola neste ano?'
TX_RESP_Q057 = 'A infraestrutura da escola é adequada às pessoas com deficiência ou necessidades especiais?'
TX_RESP_Q058 = 'A escola possui sala de recursos multifuncionais para atendimento educacional especializado (AEE)?'
TX_RESP_Q059 = 'Você possui formação específica para trabalhar com estudantes com deficiência ou necessidades especiais?'
TX_RESP_Q060 = 'Os professores desta escola possuem formação específica para trabalhar com estudantes com deficiência ou necessidades especiais?'
TX_RESP_Q061 = 'Os demais funcionários desta escola possuem formação para trabalhar com estudantes com deficiência ou necessidades especiais?'
TX_RESP_Q062 = 'Em relação à merenda escolar, como você avalia os seguintes aspectos: Recursos financeiros'
TX_RESP_Q063 = 'Em relação à merenda escolar, como você avalia os seguintes aspectos: Quantidade de alimentos'
TX_RESP_Q064 = 'Em relação à merenda escolar, como você avalia os seguintes aspectos: Qualidade de alimentos'
TX_RESP_Q065 = 'Em relação à merenda escolar, como você avalia os seguintes aspectos: Espaço físico para cozinhar'
TX_RESP_Q066 = 'Em relação à merenda escolar, como você avalia os seguintes aspectos: Disponibilidade de funcionários'
TX_RESP_Q067 = 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Insuficiência de recursos financeiros'
TX_RESP_Q068 = 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Inexistência de professores para algumas disciplinas ou séries'
TX_RESP_Q069 = 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Carência de pessoal administrativo'
TX_RESP_Q070 = 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Carência de pessoal de apoio pedagógico (supervisor, coordenador, orientador educacional)'
TX_RESP_Q071 = 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Falta de recursos pedagógicos'
TX_RESP_Q072 = 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Interrupção das atividades escolares'
TX_RESP_Q073 = 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Alto índice de faltas por parte dos professores'
TX_RESP_Q074 = 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Alto índice de faltas por parte dos alunos'
TX_RESP_Q075 = 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Alta rotatividade do corpo docente'
TX_RESP_Q076 = 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Indisciplina por parte dos alunos'
TX_RESP_Q077 = 'Considere as condições existentes para o exercício do cargo de diretor nesta escola: Há interferência de atores externos em sua gestão?'
TX_RESP_Q078 = 'Considere as condições existentes para o exercício do cargo de diretor nesta escola: Há apoio de instâncias superiores?'
TX_RESP_Q079 = 'Considere as condições existentes para o exercício do cargo de diretor nesta escola: Há troca de informações com diretores de outras escolas?'
TX_RESP_Q080 = 'Considere as condições existentes para o exercício do cargo de diretor nesta escola: Há apoio da comunidade à sua gestão?'
TX_RESP_Q081 = 'Esta escola recebeu neste ano apoio financeiro do governo federal?'
TX_RESP_Q082 = 'Esta escola recebeu neste ano apoio financeiro do governo estadual?'
TX_RESP_Q083 = 'Esta escola recebeu neste ano apoio financeiro do governo municipal?'
TX_RESP_Q084 = 'Esta escola recebeu neste ano apoio financeiro de empresas ou doadores individuais?'
TX_RESP_Q085 = 'Para a escolha do livro didático, esta escola utilizou o Guia de Livros Didáticos do MEC?'
TX_RESP_Q086 = 'Como se deu a escolha do livro didático neste ano?'
TX_RESP_Q087 = 'Neste ano, nesta escola, ocorreram as seguintes situações: Os livros chegaram em tempo hábil para o início das aulas'
TX_RESP_Q088 = 'Neste ano, nesta escola, ocorreram as seguintes situações: Faltaram livros para os alunos'
TX_RESP_Q089 = 'Neste ano, nesta escola, ocorreram as seguintes situações: Os livros escolhidos foram os recebidos'
TX_RESP_Q090 = 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não este ano, nesta escola: Agressão verbal ou física de alunos a professores ou funcionários da escola'
TX_RESP_Q091 = 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não este ano, nesta escola: Agressão verbal ou física de alunos a outros alunos da escola'
TX_RESP_Q092 = 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não este ano, nesta escola: Você foi vítima de atentado à vida'
TX_RESP_Q093 = 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não este ano, nesta escola: Você foi ameaçado por algum aluno'
TX_RESP_Q094 = 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não este ano, nesta escola: Você foi vítima de furto (sem uso de violência)'
TX_RESP_Q095 = 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não este ano, nesta escola: Você foi vítima de roubo (com uso de violência)'
TX_RESP_Q096 = 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não este ano, nesta escola: Alunos frequentaram a escola sob efeito de bebida alcoólica'
TX_RESP_Q097 = 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não este ano, nesta escola: Alunos frequentaram a escola sob efeito de drogas ilícitas'
TX_RESP_Q098 = 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não este ano, nesta escola: Alunos frequenteram a escola portando arma branca (facas, canivetes etc)'
TX_RESP_Q099 = 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não este ano, nesta escola: Alunos frequentaram a escola portando arma de fogo'
TX_RESP_Q100 = 'Nesta escola, há projetos nas seguintes temáticas: Violência'
TX_RESP_Q101 = 'Nesta escola, há projetos nas seguintes temáticas: Os maleficios do uso de drogas'
TX_RESP_Q102 = 'Nesta escola, há projetos nas seguintes temáticas: Racismo'
TX_RESP_Q103 = 'Nesta escola, há projetos nas seguintes temáticas: Machismo e homofobia'
TX_RESP_Q104 = 'Nesta escola, há projetos nas seguintes temáticas: Bullying'
TX_RESP_Q105 = 'Nesta escola, há projetos nas seguintes temáticas: Sexualidade e gravidez na adolescência'
TX_RESP_Q106 = 'Nesta escola, há projetos nas seguintes temáticas: Desigualdades sociais'
TX_RESP_Q107 = 'Nesta escola, há projetos nas seguintes temáticas: Diversidade religiosa'
TX_RESP_Q108 = 'Nesta escola, há projetos nas seguintes temáticas: Meio ambiente'
TX_RESP_Q109 = 'Nesta escola, o ensino religioso: É de presença obrigatória'
TX_RESP_Q110 = 'Nesta escola, o ensino religioso: Segue uma religião específica'
TX_RESP_Q111 = 'Nesta escola, o ensino religioso: Nesta escola há atividades alternativas para os estudantes que não queiram participar das aulas de ensino religioso';

run;quit;