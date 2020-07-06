
##########################################################################
###                                                                    ###
###    Algorítimo de download de multiplos arquivos PDFs de uma url    ###
###                    Diego Telles - 18/04/2020                       ###
###                        github.com/diegozd                          ###
###                                                                    ###
##########################################################################

import requests
import os

#url = 'https://www.camaracordeiro.rj.gov.br/leis-ordinarias/'

url = 'https://www.camaracordeiro.rj.gov.br/resolucoes/'
end_filespfds = './Cordeiro/resolucoes/filespdf'
end_arvore = './Cordeiro/resolucoes'

end_arvore = end_arvore + '/list.txt'
r = requests.get(url)
with open(end_arvore, 'wb') as f:
    f.write(r.content)

pdfsList = os.listdir(end_filespfds)

procura = r.content.__str__()
fim = 0
for n in range(procura.count('.pdf')):
    fim = procura.find('.pdf', fim+4)
    ini = procura.rfind('http', 0, fim)
    inifilename = procura.rfind('/', 0, fim)
    
    filename = procura[inifilename-2:inifilename] + '_-_' + procura[inifilename+1:fim+4]

    url = procura[ini:fim+4]

    if filename in pdfsList:
        print(n, '/', procura.count('.pdf'), filename, ' arquivo ja existente')
    else:
        print(n, '/', procura.count('.pdf'), ' ', filename)
        r = requests.get(url)
        with open(end_filespfds + '/' + filename, 'wb') as f:
            f.write(r.content)
    #print(procura[ini:fim+4])
print('FIM!')