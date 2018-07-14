# Challenge 12 - Create a function for writing in files, that allow the user to input the name of the file and the text
#Criar uma tag para write
WRITE = "w"
#Definir uma função que crie e permita inserção de dados
#Fechar o arquivo para evitar erros
def writeNewFile(data,fileName):
    file = open(fileName, WRITE)
    file.write(data)
    file.close()
    return
writeNewFile("oi meu nome é jaqueline,\neu amo biscoitos e adoro chocolate.","teste1.txt")
print("File created succesfully!") #informar o usuário que a gravação foi realizada com sucesso

#Para ler o novo arquivo:
#definir o nome do arquivo e criar uma tag para leitura
file2 = "teste1.txt"
READ = "r"

#modo de leitura completo (todo o conteúdo de uma vez, na forma em que está no arquivo)
contentFile = open(file2, READ)
print(contentFile.read())
contentFile.close()

##modo de leitura linha a linha:
#with open(file2, READ) as teste:
#    for line in teste:
#        print(line)