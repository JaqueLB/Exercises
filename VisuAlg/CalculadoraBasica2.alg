algoritmo "Exercicio 31 - Calculadora b�sica 2"
// Fun��o : Ler 2 numeros e o caractere da opera��o desejada. Previnir contra
// divis�o por 0 e outros caracteres n�o matematicos
// Autor : Jaqueline
// Data : 15/03/2016
// Se��o de Declara��es 
var
   numA,numB,resultado: real
   operador: caractere
inicio
// Se��o de Comandos
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
      escreval("Operador inv�lido!")
   fimescolha
fimalgoritmo
