algoritmo "Exercicio 4 Aula 6"
// Fun��o : Le 10 numeros, calcula a soma e mostra a soma parcial a cada
// numero inluido
// Autor : Jaqueline
// Data : 11/03/2016
// Se��o de Declara��es 
var
   indice:inteiro
   v1: vetor[1..10] de real
   s1: vetor[1..10] de real
inicio
// Se��o de Comandos
   escreval("*** Entrada de dados num vetor ***")
   escreval("")
   para indice de 1 ate 10 faca
      escreval("Digite um numero qualquer: ")
      leia(v1[indice])
      se indice>1 entao
         s1[indice]<-s1[indice-1]+v1[indice]
      senao
         s1[indice]<-v1[indice]
      fimse
   fimpara
   limpatela
   escreval("*** Saida de dados de um vetor ***")
   escreval("")
   para indice de 1 ate 10 faca
      escreval("v[",indice,"]:",v1[indice])
      escreval("Somat�rio parcial[",indice,"]",s1[indice])
   fimpara
fimalgoritmo
