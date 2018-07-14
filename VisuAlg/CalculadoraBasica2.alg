algoritmo "Exercicio 31 - Calculadora básica 2"
// Função : Ler 2 numeros e o caractere da operação desejada. Previnir contra
// divisão por 0 e outros caracteres não matematicos
// Autor : Jaqueline
// Data : 15/03/2016
// Seção de Declarações 
var
   numA,numB,resultado: real
   operador: caractere
inicio
// Seção de Comandos
   escreval("Digite dois numeros a serem calculados:")
   leia(numA)
   leia(numB)
   escreval("Digite o operador desejado (+,-,* ou /):")
   leia(operador)
   escolha operador
   caso "+"
      resultado<-numA+numB
      escreval(numA," +",numB," =",resultado)
   caso "-"
      resultado<-numA-numB
      escreval(numA," -",numB," =",resultado)
   caso "*"
      resultado<-numA*numB
      escreval(numA," *",numB," =",resultado)
   caso "/"
      se numB = 0 entao
         escreval("Impossivel dividir um numero por 0!!")
      senao
         resultado<-numA/numB
         escreval(numA," /",numB," =",resultado)
      fimse
   outrocaso
      escreval("Operador inválido!")
   fimescolha
fimalgoritmo
