algoritmo "Aula 8 - Matriz de ordem m x n"
// Função :
// Autor :
// Data : 06/04/2016
// Seção de Declarações 
var
   m,n,i,j:inteiro
   matrizA,matrizB,matrizC:vetor[1..10,1..10] de inteiro
inicio
// Seção de Comandos
   m<-1
   n<-1
   i<-1
   j<-1
   escreval("*** Entrada de Dados da Matriz A ***")
   escreval()
   escreval("Informe a quantidade de linhas e de colunas da matriz A:")
   leia(m,n)
   para i de 1 ate m faca
      para j de 1 ate n faca
        matrizA[i,j]<-0
      fimpara
   fimpara
   escreval()
   escreval("*** Resultado da Matriz A ***")
   para i de 1 ate m faca
      para j de 1 ate n faca
         escreva(matrizA[i,j])
      fimpara
      escreval(" ")
   fimpara
   escreval()
   escreval("*** Entrada de Dados da Matriz B ***")
   escreval()
   escreval("Informe a quantidade de linhas e de colunas da matriz B:")
   leia(m,n)
   para i de 1 ate m faca
      para j de 1 ate n faca
         se (i=1) entao
            matrizB[i,j]<-1
         senao
            matrizB[i,j]<-0
         fimse
      fimpara
   fimpara
   escreval()
   escreval("*** Resultado da Matriz B ***")
   para i de 1 ate m faca
      para j de 1 ate n faca
         escreva(matrizB[i,j])
      fimpara
      escreval(" ")
   fimpara
   escreval()
   escreval("*** Entrada de Dados da Matriz C ***")
   escreval()
   escreval("Informe a quantidade de linhas e de colunas da matriz C:")
   leia(m,n)
   para i de 1 ate m faca
      para j de 1 ate n faca
         se (j=1) entao
            matrizC[i,j]<-1
         senao
            matrizC[i,j]<-0
         fimse
      fimpara
   fimpara
   escreval()
   escreval("*** Resultado da Matriz C ***")
   para i de 1 ate m faca
      para j de 1 ate n faca
         escreva(matrizC[i,j])
      fimpara
      escreval(" ")
   fimpara
fimalgoritmo
