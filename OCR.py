
############################################################################################
###                                                                                      ###
###    Algorítimo de conversão de multiplos arquivos com imagens PDFs em arquivos txt    ###
###                             Diego Telles - 18/04/2020                                ###
###                                 github.com/diegozd                                   ###
###                                                                                      ###
############################################################################################

import io
import os
from PIL import Image
import pytesseract
from wand.image import Image as wi

end_filespfds = './marrero/pdf'
end_filesptxt = './marrero/txt'

pdfsList = os.listdir(end_filespfds)
txtList = os.listdir(end_filesptxt)

n = 0
for arqpdf in pdfsList:
    
    filenamepdf = str(arqpdf)
    fim = filenamepdf.rfind('.pdf')
    filenametxt = filenamepdf[0:fim] + '.txt'

    if filenametxt in txtList:
        print(n, '/', len(pdfsList), ' ', filenametxt, ' arquivo ja existente')
    else:
        print(n, '/', len(pdfsList), 'convertendo ', arqpdf)
        pdf = wi(filename = end_filespfds + '/' + filenamepdf, resolution= 300)
        pdfImage = pdf.convert('jpeg')

        imageBlobs = []
        for img in pdfImage.sequence:
            imgPage = wi(image= img)
            imageBlobs.append(imgPage.make_blob('jpeg'))

        recognized_text = []
        for imgBlobs in imageBlobs:
            im = Image.open(io.BytesIO(imgBlobs))
            text = pytesseract.image_to_string(im, lang='por')
            recognized_text.append(text)

        f = open(end_filesptxt + '/' + filenametxt,'w')
        for ele in recognized_text:
            f.write(ele+'\n')
        f.close()
        os.system('find /tmp -maxdepth 1 -type f -name "magick-*" -delete')        
    n=n+1
    
print('FIM!')


#print(recognized_text)