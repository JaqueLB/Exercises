algoritmo "Exercicio 3 Aula 6"
// Fun��o : Incluir 10 numeros em um vetor e mostra-los
// Autor :  Jaqueline Lemes Botaro
// Data : 10/03/2016
// Se��o de Declara��es 
var
   indice:inteiro
   v1:vetor [1..10] de real
inicio
// Se��o de Comandos 
   escreval("*** Entrada de dados num vetor ***")
   escreval("")
   para indice de 1 ate 10 faca
      escreval("Digite um numero qualquer: ")
      leia(v1[indice])
   fimpara
   limpatela
   escreval("*** Saida de dados de um vetor ***")
   escreval("")
   para indice de 1 ate 10 faca
      escreval("v[",indice,"]:",v1[indice])
   fimpara
fimalgoritmo
