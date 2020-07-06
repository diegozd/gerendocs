
'''
import re

keywords = ['ensino religioso',
            'sistema municipal de',
            'curricular',
            'curriculares'
            ] 


with open("./Cordeiro/resolucoes/PlvrsChvs/os_-_Lei_Organica.txt", "r", encoding="utf8") as f:
    seachLines = f.readline()
    f.close



with open("./Cordeiro/resolucoes/PlvrsChvs/os_-_Lei_Organica.txt","r") as f:
    data = f.read().lower()
    for keyword in keywords:
        if keyword in data:
            print('sim')
        else:
            print('nao')



for line in seachLines:
    for keyword in keywords:
        if keyword in line.lower():
            print(line)



#flags=re.IGNORECASE
pattern = re.compile('|'.join(keywords))
with open("./Cordeiro/resolucoes/PlvrsChvs/01_-_resolucao 018.txt", "r", encoding="utf8") as f:
    seachLines = f.readlines()
print(pattern)

for line in seachLines:
    #print(line.lower())
    if re.search(pattern,line.lower()):
        print(line)
'''
