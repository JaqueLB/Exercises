algoritmo "Aula 8 - Matriz 3x3"
// Fun��o :
// Autor :
// Data : 06/04/2016
// Se��o de Declara��es 
var
   numeros:vetor[1..3,1..3] de inteiro
   i,j,par:inteiro
inicio
// Se��o de Comandos
   i<-1
   j<-1
   escreval("*** Detec��o de Numeros Pares em uma Matriz 3x3 ***")
   escreval()
   escreval("*** Constru��o da Matriz ***")
   escreval()
   para i de 1 ate 3 faca
      para j de 1 ate 3 faca
         escreva("Digite um valor para linha",i,", coluna",j,": ")
         leia(numeros[i,j])
         se (numeros[i,j] mod 2 = 0) entao
            par<-par+1
         fimse
      fimpara
   fimpara
   
   limpatela
   
   escreval("*** Detec��o de Numeros Pares em uma Matriz 3x3 ***")
   escreval()
   escreval("*** Contagem de Numeros Pares e suas Localiza��es ***")
   escreval()
   se par>0 entao
      se par=1 entao
         escreval("Temos",par," numero par na matriz.")
      senao
         escreval("Temos",par," numeros pares na matriz.")
      fimse
      para i de 1 ate 3 faca
         para j de 1 ate 3 faca
            se (numeros[i,j] mod 2 = 0) entao
               escreval("O numero presente em [",i,",",j," ] � par.")
            fimse
         fimpara
      fimpara
   senao
      escreval("Nesta matriz n�o existem numeros pares.")
   fimse
fimalgoritmo
