algoritmo "Aula 8 - Multiplica��o de Matrizes"
// Fun��o :
// Autor :
// Data : 06/04/2016
// Se��o de Declara��es 
var
   matrizA,matrizB,matrizR:vetor[1..3,1..3] de inteiro
   m,n,i,j,k,soma:inteiro
inicio
// Se��o de Comandos
   i<-1
   j<-1
   k<-1
   escreval("Informe o numero de linhas e colunas das matrizes:")
   leia(m,n)
   para i de 1 ate m faca
      para j de 1 ate n faca
         escreva("Matriz A: Digite o numero para linha",i,", coluna",j,": ")
         leia(matrizA[i,j])
      fimpara
   fimpara
   
   limpatela
   
   para i de 1 ate m faca
      para j de 1 ate n faca
         escreva("Matriz B: Digite o numero para linha",i,", coluna",j,": ")
         leia(matrizB[i,j])
      fimpara
   fimpara
   
   limpatela
   
   escreval("**** Resultado da Multiplica��o ****")
   para i de 1 ate m faca
      para j de 1 ate n faca
         soma<-0
         para k de 1 ate n faca
            soma<-(soma+(matrizA[i,k]*matrizB[k,j]))
         fimpara
         matrizR[i,j]<-soma
         escreval("Matriz R:[",i,",",j," ]:",matrizR[i,j])
      fimpara
   fimpara
fimalgoritmo
