/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação-Geral de Instrumentos e medidas 		                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_DIRETOR.sps                                                                 */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DO QUESTIONÁRIO DO DIRETOR        */
/*                     DA ANEB/PROVA BRASIL 2017                                                       */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* TS_DIRETOR.CSV no diretório C:\ do computador.	                        	 */
/*							 */ 
/* Ao terminar esses procedimentos execute o programa salvo utilizando                      */
/* as variáveis de interesse.                                                                                       */
/******************************************************************************************************/
/*                                                   ATENÇÃO                                                          */ 
/******************************************************************************************************/
/* Este programa abre a base de dados com os rótulos das variáveis de	                    */
/* acordo com o dicionário de dados que compõem os microdados. Para abrir                */
/* os dados sem os rótulos basta importar diretamente no SPSS.		  */
/* 							  */
/* Os Rótulos de algumas variáveis não estão completos, em virtude do tamanho do.      */
/* dos enunciados das questões. Tais enunciados foram resumidos e indicados com o   */
/* seguinte código: "(Cf. Dic.)". Essas questões exigem a Consulta do Dicionário de       */
/* Variáveis para conhecer o enunciado completo.                             		  */
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
VARIABLE LABELS ID_UF 'Código da Unidade da Federação'.
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
VARIABLE LABELS ID_MUNICIPIO 'Código do Município'.
VARIABLE LABELS ID_ESCOLA 'Código da Escola'.
VARIABLE LABELS ID_DEPENDENCIA_ADM 'Dependência Administrativa'.
VALUE LABELS ID_DEPENDENCIA_ADM
1 'Federal'
2 'Estadual'
3 'Municipal'
4 'Privada'.
VARIABLE LABELS ID_LOCALIZACAO 'Localização'.
VALUE LABELS ID_LOCALIZACAO
1 'Urbana'
2 'Rural'.
VARIABLE LABELS IN_PREENCHIMENTO_QUESTIONARIO 'Indicador de preenchimento do questionário'.
VALUE LABELS IN_PREENCHIMENTO_QUESTIONARIO
0 'Não preenchido'
1 'Preenchido parcial ou totalmente'
2 'Não preenchido'.
VARIABLE LABELS TX_RESP_Q001 'Qual é o seu sexo?'. 
VALUE LABELS TX_RESP_Q001
'A' 'Masculino'
'B' 'Feminino'.
VARIABLE LABELS TX_RESP_Q002 'Você poderia nos dizer a sua faixa etária?'. 
VALUE LABELS TX_RESP_Q002
'A' 'Até 24 anos'
'B' 'De 25 a 29 anos'
'C' 'De 30 a 39 anos'
'D' 'De 40 a 49 anos'
'E' 'De 50 a 54 anos'
'F' '55 anos ou mais'.
VARIABLE LABELS TX_RESP_Q003 'Como você se considera?'. 
VALUE LABELS TX_RESP_Q003
'A' 'Branco(a)'
'B' 'Pardo(a)'
'C' 'Preto(a)'
'D' 'Amarelo(a)'
'E' 'Indígena'
'F' 'Não quero declarar'
'G' 'Não sei'.
VARIABLE LABELS TX_RESP_Q004 'Qual é o mais alto nível de escolaridade que você concluiu (até a graduação)?'. 
VALUE LABELS TX_RESP_Q004
'A' 'Menos que o Ensino Médio (antigo 2º grau)'
'B' 'Ensino Médio - Magistério (antigo 2º grau)'
'C' 'Ensino  Médio - Outros (antigo 2º grau)'
'D' 'Ensino Superior - Pedagogia'
'E' 'Ensino Superior - Curso Normal Superior'
'F' 'Ensino Superior - Licenciatura em Matemática'
'G' 'Ensino Superior - Licenciatura em Letras'
'H' 'Ensino Superior - Outras Licenciaturas'
'I' 'Ensino Superior - Outras áreas'.
VARIABLE LABELS TX_RESP_Q005 'Há quantos anos você obteve o nível de escolaridade assinalado anteriormente (até a graduação)?'. 
VALUE LABELS TX_RESP_Q005
'A' 'Há menos de 2 anos'
'B' 'De 2 a 7 anos'
'C' 'De 8 a 14 anos'
'D' 'De 15 a 20 anos'
'E' 'Há mais de 20 anos'.
VARIABLE LABELS TX_RESP_Q006 'Indique em que tipo de instituição você obteve seu diploma de ensino superior'. 
VALUE LABELS TX_RESP_Q006
'A' 'Não concluí o ensino superior'
'B' 'Privada'
'C' 'Pública Federal'
'D' 'Pública Estadual'
'E' 'Pública Municipal'.
VARIABLE LABELS TX_RESP_Q007 'De que forma você realizou o curso de ensino superior?'. 
VALUE LABELS TX_RESP_Q007
'A' 'Não concluí o ensino superior'
'B' 'Presencial'
'C' 'Semipresencial'
'D' 'A distância'.
VARIABLE LABELS TX_RESP_Q008 'Indique o curso de pós-graduação de mais alta titulação que você possui'. 
VALUE LABELS TX_RESP_Q008
'A' 'Não fiz ou não completei curso de pós-graduação'
'B' 'Atualização ou Aperfeiçoamento (mínimo de 180 horas)'
'C' 'Especialização (mínimo de 360 horas)'
'D' 'Mestrado'
'E' 'Doutorado'.
VARIABLE LABELS TX_RESP_Q009 'Indique a área temática do curso de pós-graduação de mais alta titulação que você possui'. 
VALUE LABELS TX_RESP_Q009
'A' 'Não fiz ou não completei curso de pós-graduação'
'B' 'Educação, enfatizando alfabetização'
'C' 'Educação, enfatizando linguística e/ou letramento'
'D' 'Educação, enfatizando educação matemática'
'E' 'Educação - outras ênfases'
'F' 'Outras áreas que não a Educação'.
VARIABLE LABELS TX_RESP_Q010 'Como diretor, qual é, aproximadamente, o seu salário bruto? (com adicionais, se houver)'. 
VALUE LABELS TX_RESP_Q010
'A' 'Até R$ 937,00'
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
VARIABLE LABELS TX_RESP_Q011 'Além da direção desta escola, você exerce outra atividade que contribui para sua renda pessoal?'. 
VALUE LABELS TX_RESP_Q011
'A' 'Sim, na área de educação'
'B' 'Sim, fora da área de educação'
'C' 'Não'.
VARIABLE LABELS TX_RESP_Q012 'Considerando todas as atividades que você exerce (dentro e fora da área de educação), qual é, aproximadamente, o seu salário bruto? (com adicionais, se houver)'. 
VALUE LABELS TX_RESP_Q012
'A' 'Até R$ 937,00'
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
VARIABLE LABELS TX_RESP_Q013 'Qual é a sua carga horária de trabalho semanal, como diretor, nesta escola?'. 
VALUE LABELS TX_RESP_Q013
'A' 'Mais de 40 horas'
'B' '40 horas'
'C' 'De 20 a 39 horas'
'D' 'Menos de 20 horas'.
VARIABLE LABELS TX_RESP_Q014 'Você assumiu a direção desta escola por meio de:'. 
VALUE LABELS TX_RESP_Q014
'A' 'Concurso público apenas'
'B' 'Eleição apenas'
'C' 'Indicação apenas'
'D' 'Processo seletivo apenas'
'E' 'Processo seletivo e Eleição'
'F' 'Processo seletivo e Indicação'
'G' 'Outra forma'.
VARIABLE LABELS TX_RESP_Q015 'Por quanto tempo você trabalhou como professor antes de se tornar diretor?'. 
VALUE LABELS TX_RESP_Q015
'A' 'Nunca'
'B' 'Menos de um ano'
'C' '1-2 anos'
'D' '3-5 anos'
'E' '6-10 anos'
'F' '11-15 anos'
'G' '16-20 anos'
'H' 'Mais de 20 anos'.
VARIABLE LABELS TX_RESP_Q016 'Há quantos anos você exerce funções de direção?'. 
VALUE LABELS TX_RESP_Q016
'A' 'Menos de um ano'
'B' '1-2 anos'
'C' '3-5 anos'
'D' '6-10 anos'
'E' '11-15 anos'
'F' '16-20 anos'
'G' 'Mais de 20 anos'.
VARIABLE LABELS TX_RESP_Q017 'Há quantos anos você é diretor(a) desta escola?'. 
VALUE LABELS TX_RESP_Q017
'A' 'Menos de um ano'
'B' '1-2 anos'
'C' '3-5 anos'
'D' '6-10 anos'
'E' '11-15 anos'
'F' '16-20 anos'
'G' 'Mais de 20 anos'.
VARIABLE LABELS TX_RESP_Q018 'Há quantos anos você trabalha na área de educação?'. 
VALUE LABELS TX_RESP_Q018
'A' 'Menos de um ano'
'B' '1-2 anos'
'C' '3-5 anos'
'D' '6-10 anos'
'E' '11-15 anos'
'F' '16-20 anos'
'G' 'Mais de 20 anos'.
VARIABLE LABELS TX_RESP_Q019 'Durante os últimos dois anos, você participou de alguma atividade de desenvolvimento profissional?'. 
VALUE LABELS TX_RESP_Q019
'A' 'Não'
'B' 'Sim'.
VARIABLE LABELS TX_RESP_Q020 'Se você participou de alguma atividade de desenvolvimento profissional nos últimos dois anos, como você avalia o impacto da participação em sua atividade como diretor?'. 
VALUE LABELS TX_RESP_Q020
'A' 'Não participei'
'B' 'Sim, e não houve impacto'
'C' 'Sim, e houve um pequeno impacto'
'D' 'Sim, e houve um impacto moderado'
'E' 'Sim, e houve um grande impacto'.
VARIABLE LABELS TX_RESP_Q021 'Nos últimos dois anos, você gostaria de ter participado de mais atividades de desenvolvimento profissional do que você participou?'. 
VALUE LABELS TX_RESP_Q021
'A' 'Não'
'B' 'Sim'.
VARIABLE LABELS TX_RESP_Q022 'Se você gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participação? O desenvolvimento profissional era muito caro/eu não podia pagar'. 
VALUE LABELS TX_RESP_Q022
'A' 'Não gostaria de ter participado'
'B' 'Não'
'C' 'Sim'.
VARIABLE LABELS TX_RESP_Q023 'Se você gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participação? Houve conflito com o meu horário de trabalho'. 
VALUE LABELS TX_RESP_Q023
'A' 'Não gostaria de ter participado'
'B' 'Não'
'C' 'Sim'.
VARIABLE LABELS TX_RESP_Q024 'Se você gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participação? Não tinha disponibilidade de tempo'. 
VALUE LABELS TX_RESP_Q024
'A' 'Não gostaria de ter participado'
'B' 'Não'
'C' 'Sim'.
VARIABLE LABELS TX_RESP_Q025 'Se você gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participação? Não houve oferta na minha área de interesse'. 
VALUE LABELS TX_RESP_Q025
'A' 'Não gostaria de ter participado'
'B' 'Não'
'C' 'Sim'.
VARIABLE LABELS TX_RESP_Q026 'Nos últimos dois anos, você organizou alguma atividade de formação continuada (atualização, treinamento, capacitação etc.) nesta escola?'. 
VALUE LABELS TX_RESP_Q026
'A' 'Não'
'B' 'Sim'.
VARIABLE LABELS TX_RESP_Q027 'Qual foi a quantidade de docentes desta escola que participou das atividades de formação continuada que você organizou nos últimos dois anos?'. 
VALUE LABELS TX_RESP_Q027
'A' 'Não foram organizadas atividades de formação continuada'
'B' 'Poucos professores'
'C' 'Um pouco menos da metade dos professores'
'D' 'Um pouco mais da metade dos professores'
'E' 'Quase todos ou todos os professores'.
VARIABLE LABELS TX_RESP_Q028 'Qual é o percentual de professores com vínculo estável nesta escola?'. 
VALUE LABELS TX_RESP_Q028
'A' 'Menor ou igual a 25%'
'B' 'De 26% a 50%'
'C' 'De 51% a 75%'
'D' 'De 76% a 90%'
'E' 'De 91% a 100%'.
VARIABLE LABELS TX_RESP_Q029 'O Conselho Escolar é um colegiado geralmente constituído por representantes da escola e da comunidade que tem como objetivo acompanhar as atividades escolares. Neste ano, quantas vezes se reuniu o Conselho Escolar?'. 
VALUE LABELS TX_RESP_Q029
'A' 'Não existe Conselho Escolar'
'B' 'Nenhuma vez'
'C' 'Uma vez'
'D' 'Duas vezes'
'E' 'Três vezes ou mais'.
VARIABLE LABELS TX_RESP_Q030 'Além de você, quem participa do Conselho Escolar?'. 
VALUE LABELS TX_RESP_Q030
'A' 'Não existe Conselho Escolar'
'B' 'Professores, funcionários, alunos e pais/responsáveis'
'C' 'Professores, funcionários e pais/responsáveis'
'D' 'Professores, alunos e pais/responsáveis'
'E' 'Professores, funcionários e alunos'
'F' 'Professores e pais/responsáveis'
'G' 'Outros'.
VARIABLE LABELS TX_RESP_Q031 'O Conselho de Classe é um orgão formado por todos os professores que lecionam em cada turma/série. Neste ano e nesta escola, quantas vezes se reuniu o Conselho de Classe?'. 
VALUE LABELS TX_RESP_Q031
'A' 'Não existe Conselho de Classe'
'B' 'Nenhuma vez'
'C' 'Uma vez'
'D' 'Duas vezes'
'E' 'Três vezes ou mais'.
VARIABLE LABELS TX_RESP_Q032 'Neste ano e nesta escola, como se deu a elaboração do Projeto Pedagógico?'. 
VALUE LABELS TX_RESP_Q032
'A' 'Não sei como foi desenvolvido'
'B' 'Não existe Projeto Pedagógico'
'C' 'Utilizando-se um modelo pronto, sem discussão com a equipe escolar'
'D' 'Utilizando-se um modelo pronto, mas com discussão com a equipe escolar'
'E' 'Utilizando-se um modelo pronto, porém com adaptações, sem discussão com a equipe escolar'
'F' 'Utilizando-se um modelo pronto, porém com adaptações e com discussão com a equipe escolar'
'G' 'Elaborou-se um modelo próprio, mas não houve discussão com a equipe escolar'
'H' 'Elaborou-se um modelo próprio e houve discussão com a equipe escolar'.
VARIABLE LABELS TX_RESP_Q033 'Esta escola participou da Prova Brasil de 2015?'. 
VALUE LABELS TX_RESP_Q033
'A' 'Sim'
'B' 'Não'
'C' 'Não sei'.
VARIABLE LABELS TX_RESP_Q034 'Você conhece os resultados do SAEB (Prova Brasil e/ou ANEB) de 2015? Desta escola?'. 
VALUE LABELS TX_RESP_Q034
'A' 'Sim'
'B' 'Não'
'C' 'Minha escola não participou'.
VARIABLE LABELS TX_RESP_Q035 'Você conhece os resultados do SAEB (Prova Brasil e/ou ANEB) de 2015? Do seu município?'. 
VALUE LABELS TX_RESP_Q035
'A' 'Sim'
'B' 'Não'
'C' 'Meu município não participou'.
VARIABLE LABELS TX_RESP_Q036 'Você conhece os resultados do SAEB (Prova Brasil e/ou ANEB) de 2015? Do seu estado?'. 
VALUE LABELS TX_RESP_Q036
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q037 'Neste ano, qual foi o critério para a admissão de alunos nesta escola?'. 
VALUE LABELS TX_RESP_Q037
'A' 'Prova de seleção'
'B' 'Sorteio'
'C' 'Local de moradia'
'D' 'Prioridade por ordem de chegada'
'E' 'Outro critério'.
VARIABLE LABELS TX_RESP_Q038 'Neste ano, como foi a situação da oferta de vagas nesta escola?'. 
VALUE LABELS TX_RESP_Q038
'A' 'Após o processo de matrícula, a escola ainda tinha vagas disponíveis'
'B' 'A procura por vaga na escola preencheu todas as vagas oferecidas'
'C' 'A procura por vaga na escola foi um pouco maior que as vagas oferecidas'
'D' 'A procura por vaga na escola superou em muito o número de vagas oferecidas'.
VARIABLE LABELS TX_RESP_Q039 'Neste ano, qual foi o principal critério utilizado para a formação das turmas nesta escola?'. 
VALUE LABELS TX_RESP_Q039
'A' 'Homogeneidade quanto à idade (alunos com a mesma idade)'
'B' 'Homogeneidade quanto ao rendimento escolar (alunos com rendimento similar)'
'C' 'Heterogeneidade quanto à idade (alunos com idades diferentes)'
'D' 'Heterogeneidade quanto ao rendimento escolar (alunos com rendimentos diferentes)'
'E' 'Outro critério'
'F' 'Não houve critério'.
VARIABLE LABELS TX_RESP_Q040 'Neste ano, qual foi o principal critério para a atribuição das turmas aos professores?'. 
VALUE LABELS TX_RESP_Q040
'A' 'Preferência dos professores'
'B' 'Escolha dos professores, de acordo com a pontuação por tempo de serviço e formação'
'C' 'Professores experientes com turmas de aprendizagem mais rápida'
'D' 'Professores experientes com turmas de aprendizagem mais lenta'
'E' 'Manutenção do professor com a mesma turma'
'F' 'Revezamento dos professores entre as séries'
'G' 'Sorteio das turmas entre os professores'
'H' 'Atribuição pela direção da escola'
'I' 'Outro critério'
'J' 'Não houve critério'.
VARIABLE LABELS TX_RESP_Q041 'Nesta escola, há alguma ação para redução das taxas de abandono?'. 
VALUE LABELS TX_RESP_Q041
'A' 'Não há ação, embora exista o problema'
'B' 'Não há ação, porque nesta escola não há esse tipo de problema'
'C' 'Sim, mas com resultados ainda insatisfatórios'
'D' 'Sim, com resultados satisfatórios'
'E' 'Sim, mas ainda não avaliamos o resultado'.
VARIABLE LABELS TX_RESP_Q042 'Nesta escola, há alguma ação para redução das taxas de reprovação?'. 
VALUE LABELS TX_RESP_Q042
'A' 'Não há ação, embora exista o problema'
'B' 'Não há ação, porque nesta escola não há esse tipo de problema'
'C' 'Sim, mas com resultados ainda insatisfatórios'
'D' 'Sim, com resultados satisfatórios'
'E' 'Sim, mas ainda não avaliamos o resultado'.
VARIABLE LABELS TX_RESP_Q043 'Nesta escola, há alguma ação para o reforço escolar à aprendizagem dos alunos (monitoria, aula de reforço, recuperação etc.)?'. 
VALUE LABELS TX_RESP_Q043
'A' 'Não'
'B' 'Sim'.
VARIABLE LABELS TX_RESP_Q044 'Nesta escola, indique com que frequência você discute com os professores medidas com o objetivo de melhorar o ensino e a aprendizagem dos alunos'. 
VALUE LABELS TX_RESP_Q044
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q045 'Indique com qual frequência são desenvolvidas as seguintes atividades para minimizar as faltas dos alunos neste ano e nesta escola: Os professores conversam com os alunos para tentar solucionar o problema'. 
VALUE LABELS TX_RESP_Q045
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q046 'Indique com qual frequência são desenvolvidas as seguintes atividades para minimizar as faltas dos alunos neste ano e nesta escola: Os pais/responsáveis são avisados por comunicação da escola'. 
VALUE LABELS TX_RESP_Q046
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q047 'Indique com qual frequência são desenvolvidas as seguintes atividades para minimizar as faltas dos alunos neste ano e nesta escola: '+
'Os pais/responsáveis são chamados à escola para conversar sobre o assunto em reunião de pais'. 
VALUE LABELS TX_RESP_Q047
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q048 'Indique com qual frequência são desenvolvidas as seguintes atividades para minimizar as faltas dos alunos neste ano e nesta escola: '+
'Os pais/responsáveis são chamados à escola para conversar sobre o assunto individualmente'. 
VALUE LABELS TX_RESP_Q048
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q049 'Indique com qual frequência são desenvolvidas as seguintes atividades para minimizar as faltas dos alunos neste ano e nesta escola: A escola envia alguém à casa do aluno'. 
VALUE LABELS TX_RESP_Q049
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q050 'Indique com qual frequência você desenvolveu as seguintes atividades neste ano e nesta escola: Desenvolveu atividades extracurriculares em esporte'. 
VALUE LABELS TX_RESP_Q050
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q051 'Indique com qual frequência você desenvolveu as seguintes atividades neste ano e nesta escola: Desenvolveu atividades extracurriculares em artes'. 
VALUE LABELS TX_RESP_Q051
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q052
 'Indique com qual frequência você desenvolveu as seguintes atividades neste ano e nesta escola: Desenvolveu projetos temáticos (ex: bullying, meio ambiente, desigualdades sociais etc)'. 
VALUE LABELS TX_RESP_Q052
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q053 'Indique com qual frequência você desenvolveu as seguintes atividades neste ano e nesta escola: Neste ano, a escola promoveu eventos para a comunidade'.
VALUE LABELS TX_RESP_Q053
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q054 'Indique com qual frequência você desenvolveu as seguintes atividades neste ano e nesta escola: Os espaços desta escola são utilizados para eventos promovidos pela comunidade'. 
VALUE LABELS TX_RESP_Q054
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q055 'Indique com qual frequência você desenvolveu as seguintes atividades neste ano e nesta escola: Neste ano, a comunidade colaborou com trabalho voluntário para esta escola. '+
'(por exemplo, desenvolvendo atividades, ajudando na manutenção da escola etc.)'. 
VALUE LABELS TX_RESP_Q055
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q056 'Quantos estudantes com deficiência ou necessidades especiais estudam nesta escola neste ano?'. 
VALUE LABELS TX_RESP_Q056
'A' 'Nenhum'
'B' 'Entre 1 e 5 alunos'
'C' 'Entre 6 e 10 alunos'
'D' 'Entre 11 e 20 alunos'
'E' 'Mais de 20 alunos'.
VARIABLE LABELS TX_RESP_Q057 'A infraestrutura da escola é adequada às pessoas com deficiência ou necessidades especiais?'. 
VALUE LABELS TX_RESP_Q057
'A' 'Não'
'B' 'Sim, mas pouco adequada'
'C' 'Sim, suficientemente adequada'.
VARIABLE LABELS TX_RESP_Q058 'A escola possui sala de recursos multifuncionais para atendimento educacional especializado (AEE)?'. 
VALUE LABELS TX_RESP_Q058
'A' 'Não possui sala de recursos'
'B' 'Sim, mas com poucos recursos'
'C' 'Sim, com recursos suficientes'.
VARIABLE LABELS TX_RESP_Q059 'Você possui formação específica para trabalhar com estudantes com deficiência ou necessidades especiais?'. 
VALUE LABELS TX_RESP_Q059
'A' 'Não'
'B' 'Sim, mas apenas em uma área/deficiência'
'C' 'Sim, em mais de uma área/deficiência'.
VARIABLE LABELS TX_RESP_Q060 'Os professores desta escola possuem formação específica para trabalhar com estudantes com deficiência ou necessidades especiais?'. 
VALUE LABELS TX_RESP_Q060
'A' 'Não'
'B' 'Sim, mas em número insuficiente'
'C' 'Sim, em número suficiente'.
VARIABLE LABELS TX_RESP_Q061 'Os demais funcionários desta escola possuem formação para trabalhar com estudantes com deficiência ou necessidades especiais?'. 
VALUE LABELS TX_RESP_Q061
'A' 'Não'
'B' 'Sim, mas em número insuficiente'
'C' 'Sim, em número suficiente'.
VARIABLE LABELS TX_RESP_Q062 'Em relação à merenda escolar, como você avalia os seguintes aspectos: Recursos financeiros'. 
VALUE LABELS TX_RESP_Q062
'A' 'Inexistente'
'B' 'Ruim'
'C' 'Razoável'
'D' 'Bom'
'E' 'Ótimo'.
VARIABLE LABELS TX_RESP_Q063 'Em relação à merenda escolar, como você avalia os seguintes aspectos: Quantidade de alimentos'. 
VALUE LABELS TX_RESP_Q063
'A' 'Inexistente'
'B' 'Ruim'
'C' 'Razoável'
'D' 'Bom'
'E' 'Ótimo'.
VARIABLE LABELS TX_RESP_Q064 'Em relação à merenda escolar, como você avalia os seguintes aspectos: Qualidade de alimentos'. 
VALUE LABELS TX_RESP_Q064
'A' 'Inexistente'
'B' 'Ruim'
'C' 'Razoável'
'D' 'Bom'
'E' 'Ótimo'.
VARIABLE LABELS TX_RESP_Q065 'Em relação à merenda escolar, como você avalia os seguintes aspectos: Espaço físico para cozinhar'. 
VALUE LABELS TX_RESP_Q065
'A' 'Inexistente'
'B' 'Ruim'
'C' 'Razoável'
'D' 'Bom'
'E' 'Ótimo'.
VARIABLE LABELS TX_RESP_Q066 'Em relação à merenda escolar, como você avalia os seguintes aspectos: Disponibilidade de funcionários'. 
VALUE LABELS TX_RESP_Q066
'A' 'Inexistente'
'B' 'Ruim'
'C' 'Razoável'
'D' 'Bom'
'E' 'Ótimo'.
VARIABLE LABELS TX_RESP_Q067 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Insuficiência de recursos financeiros'. 
VALUE LABELS TX_RESP_Q067
'A' 'Não'
'B' 'Sim, pouco'
'C' 'Sim, moderadamente'
'D' 'Sim, muito'.
VARIABLE LABELS TX_RESP_Q068 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Inexistência de professores para algumas disciplinas ou séries'. 
VALUE LABELS TX_RESP_Q068
'A' 'Não'
'B' 'Sim, pouco'
'C' 'Sim, moderadamente'
'D' 'Sim, muito'.
VARIABLE LABELS TX_RESP_Q069 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Carência de pessoal administrativo'. 
VALUE LABELS TX_RESP_Q069
'A' 'Não'
'B' 'Sim, pouco'
'C' 'Sim, moderadamente'
'D' 'Sim, muito'.
VARIABLE LABELS TX_RESP_Q070 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Carência de pessoal de apoio pedagógico (supervisor, coordenador, orientador educacional)'. 
VALUE LABELS TX_RESP_Q070
'A' 'Não'
'B' 'Sim, pouco'
'C' 'Sim, moderadamente'
'D' 'Sim, muito'.
VARIABLE LABELS TX_RESP_Q071 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Falta de recursos pedagógicos'. 
VALUE LABELS TX_RESP_Q071
'A' 'Não'
'B' 'Sim, pouco'
'C' 'Sim, moderadamente'
'D' 'Sim, muito'.
VARIABLE LABELS TX_RESP_Q072 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Interrupção das atividades escolares'. 
VALUE LABELS TX_RESP_Q072
'A' 'Não'
'B' 'Sim, pouco'
'C' 'Sim, moderadamente'
'D' 'Sim, muito'.
VARIABLE LABELS TX_RESP_Q073 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Alto índice de faltas por parte dos professores'. 
VALUE LABELS TX_RESP_Q073
'A' 'Não'
'B' 'Sim, pouco'
'C' 'Sim, moderadamente'
'D' 'Sim, muito'.
VARIABLE LABELS TX_RESP_Q074 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Alto índice de faltas por parte dos alunos'. 
VALUE LABELS TX_RESP_Q074
'A' 'Não'
'B' 'Sim, pouco'
'C' 'Sim, moderadamente'
'D' 'Sim, muito'.
VARIABLE LABELS TX_RESP_Q075 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Alta rotatividade do corpo docente'. 
VALUE LABELS TX_RESP_Q075
'A' 'Não'
'B' 'Sim, pouco'
'C' 'Sim, moderadamente'
'D' 'Sim, muito'.
VARIABLE LABELS TX_RESP_Q076 'O funcionamento da escola foi dificultado por algum dos seguintes problemas? Indisciplina por parte dos alunos'. 
VALUE LABELS TX_RESP_Q076
'A' 'Não'
'B' 'Sim, pouco'
'C' 'Sim, moderadamente'
'D' 'Sim, muito'.
VARIABLE LABELS TX_RESP_Q077 'Considere as condições existentes para o exercício do cargo de diretor nesta escola: Há interferência de atores externos em sua gestão?'. 
VALUE LABELS TX_RESP_Q077
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q078 'Considere as condições existentes para o exercício do cargo de diretor nesta escola: Há apoio de instâncias superiores?'. 
VALUE LABELS TX_RESP_Q078
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q079 'Considere as condições existentes para o exercício do cargo de diretor nesta escola: Há troca de informações com diretores de outras escolas?'. 
VALUE LABELS TX_RESP_Q079
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q080 'Considere as condições existentes para o exercício do cargo de diretor nesta escola: Há apoio da comunidade à sua gestão?'. 
VALUE LABELS TX_RESP_Q080
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q081 'Esta escola recebeu neste ano apoio financeiro do governo federal?'. 
VALUE LABELS TX_RESP_Q081
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q082 'Esta escola recebeu neste ano apoio financeiro do governo estadual?'. 
VALUE LABELS TX_RESP_Q082
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q083 'Esta escola recebeu neste ano apoio financeiro do governo municipal?'. 
VALUE LABELS TX_RESP_Q083
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q084 'Esta escola recebeu neste ano apoio financeiro de empresas ou doadores individuais?'. 
VALUE LABELS TX_RESP_Q084
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q085 'Para a escolha do livro didático, esta escola utilizou o Guia de Livros Didáticos do MEC?'. 
VALUE LABELS TX_RESP_Q085
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q086 'Como se deu a escolha do livro didático neste ano?'. 
VALUE LABELS TX_RESP_Q086
'A' 'Não sei'
'B' 'Foi escolhido de forma participativa pelos professores'
'C' 'Foi escolhido por somente alguns membros da equipe escolar'
'D' 'Foi escolhido por órgãos externos à escola'
'E' 'Foi escolhido de outra maneira'.
VARIABLE LABELS TX_RESP_Q087 'Neste ano, nesta escola, ocorreram as seguintes situações: Os livros chegaram em tempo hábil para o início das aulas'. 
VALUE LABELS TX_RESP_Q087
'A' 'Sim'
'B' 'Não'
'C' 'Não sei'.
VARIABLE LABELS TX_RESP_Q088 'Neste ano, nesta escola, ocorreram as seguintes situações: Faltaram livros para os alunos'. 
VALUE LABELS TX_RESP_Q088
'A' 'Sim'
'B' 'Não'
'C' 'Não sei'.
VARIABLE LABELS TX_RESP_Q089 'Neste ano, nesta escola, ocorreram as seguintes situações: Os livros escolhidos foram os recebidos'. 
VALUE LABELS TX_RESP_Q089
'A' 'Sim'
'B' 'Não'
'C' 'Não sei'.
VARIABLE LABELS TX_RESP_Q090 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não este ano, nesta escola: Agressão verbal ou física de alunos a professores ou funcionários da escola'. 
VALUE LABELS TX_RESP_Q090
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q091 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não este ano, nesta escola: Agressão verbal ou física de alunos a outros alunos da escola'. 
VALUE LABELS TX_RESP_Q091
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q092 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não este ano, nesta escola: Você foi vítima de atentado à vida'. 
VALUE LABELS TX_RESP_Q092
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q093 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não este ano, nesta escola: Você foi ameaçado por algum aluno'. 
VALUE LABELS TX_RESP_Q093
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q094 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não este ano, nesta escola: Você foi vítima de furto (sem uso de violência)'. 
VALUE LABELS TX_RESP_Q094
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q095 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não este ano, nesta escola: Você foi vítima de roubo (com uso de violência)'. 
VALUE LABELS TX_RESP_Q095
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q096 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não este ano, nesta escola: Alunos frequentaram a escola sob efeito de bebida alcoólica'. 
VALUE LABELS TX_RESP_Q096
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q097 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não este ano, nesta escola: Alunos frequentaram a escola sob efeito de drogas ilícitas'. 
VALUE LABELS TX_RESP_Q097
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q098 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não este ano, nesta escola: Alunos frequentaram a escola portando arma branca (facas, canivetes etc)'. 
VALUE LABELS TX_RESP_Q098
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q099 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não este ano, nesta escola: Alunos frequentaram a escola portando arma de fogo'. 
VALUE LABELS TX_RESP_Q099
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q100 'Nesta escola, há projetos nas seguintes temáticas: Violência'. 
VALUE LABELS TX_RESP_Q100
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q101 'Nesta escola, há projetos nas seguintes temáticas: Os malefícios do uso de drogas'. 
VALUE LABELS TX_RESP_Q101
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q102 'Nesta escola, há projetos nas seguintes temáticas: Racismo'. 
VALUE LABELS TX_RESP_Q102
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q103 'Nesta escola, há projetos nas seguintes temáticas: Machismo e homofobia'. 
VALUE LABELS TX_RESP_Q103
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q104 'Nesta escola, há projetos nas seguintes temáticas: Bullying'. 
VALUE LABELS TX_RESP_Q104
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q105 'Nesta escola, há projetos nas seguintes temáticas: Sexualidade e gravidez na adolescência'. 
VALUE LABELS TX_RESP_Q105
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q106 'Nesta escola, há projetos nas seguintes temáticas: Desigualdades sociais'. 
VALUE LABELS TX_RESP_Q106
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q107 'Nesta escola, há projetos nas seguintes temáticas: Diversidade religiosa'. 
VALUE LABELS TX_RESP_Q107
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q108 'Nesta escola, há projetos nas seguintes temáticas: Meio ambiente'. 
VALUE LABELS TX_RESP_Q108
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q109 'Nesta escola, o ensino religioso: É de presença obrigatória'. 
VALUE LABELS TX_RESP_Q109
'A' 'Não há aula de ensino religioso'
'B' 'Sim'
'C' 'Não'.
VARIABLE LABELS TX_RESP_Q110 'Nesta escola, o ensino religioso: Segue uma religião específica'. 
VALUE LABELS TX_RESP_Q110
'A' 'Não há aula de ensino religioso'
'B' 'Sim'
'C' 'Não'.
VARIABLE LABELS TX_RESP_Q111 'Nesta escola, o ensino religioso: Nesta escola há atividades para os estudantes que não queiram participar das aulas de ensino religioso'. 
VALUE LABELS TX_RESP_Q111
'A' 'Não há aula de ensino religioso'
'B' 'Sim'
'C' 'Não'.



