
################################################################################
###                                                                          ###
###    Algorítimo de busca de palavras chaves em multiplos documentos txt    ###
###                       Diego Telles - 18/04/2020                          ###
###                           github.com/diegozd                             ###
###                                                                          ###
################################################################################

import os
import re

# Lista das palavras chaves como devem ser buscadas no documento
PalvrChvsList = ['ensino religioso',
                'sistema municipal de',
                'curricular'
                ] 


#Endereço da pasta que contém os arquivos a serem pesquisados                
DirBusca = './Cordeiro/leis/filestxt'
#DirBusca = './Cordeiro/resolucoes/filestxt'

#Endereço do local onde as pastas referentes as palavras chaves devem ser criadas
DirSaveFile = './Cordeiro/leis'
#DirSaveFile = './Cordeiro/resolucoes'

#Nome do diretorio de Palavras Chaves
PlvrsChvsFolder = 'PlvrsChvs'

# A partir daqui nada deve ser alterado
auxDirSave = os.listdir(DirSaveFile)
if PlvrsChvsFolder in auxDirSave:
    print('Diretorio de Palvras Chaves ja existente - ', PlvrsChvsFolder)
else:
    print('Criando diretorio de Palavras Chaves - ', PlvrsChvsFolder)
    consolecmd = 'mkdir ' + DirSaveFile + '/' + PlvrsChvsFolder
    os.system(consolecmd)
DirSaveFile = DirSaveFile + '/' + PlvrsChvsFolder

#Lista dos arquivos contidos nos diretorios supracitados 
dirlistBusca = os.listdir(DirBusca)
dirlistSave = os.listdir(DirSaveFile)

#buscando palavra chave
for PalvrChv in PalvrChvsList:

    #buscando palavra chave i em cada arquivo
    for filetxt in dirlistBusca:

        with open(DirBusca + '/' + filetxt, "r") as openfile:
            seachLines = openfile.readlines()

        for line in seachLines:
            if re.search(PalvrChv,line.lower()):
                print('Copiando ', filetxt, ' para ', PlvrsChvsFolder)
                filetxtasps = '"' + filetxt + '"'
                consolecmd = 'cp ' + DirBusca + '/' + filetxtasps + ' ' + DirSaveFile
                os.system(consolecmd)

                txtapdn = filetxt + ' - ' + PalvrChv
                with open(DirSaveFile + '/' + 'log.txt','a') as logfile:
                    logfile.write(txtapdn + "\n")

with open(DirSaveFile + '/' + 'log.txt','a') as logfile:
    logfile.write("----------------------------------------------" + "\n" + "\n")
