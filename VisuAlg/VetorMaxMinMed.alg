algoritmo "Exercicio 5 Aula 6"
// Fun��o : Solicitar 10 numeros. Exibir o maior, o menor e a m�dia.
// Autor :
// Data : 11/03/2016
// Se��o de Declara��es 
var
   indiceA:inteiro
   maior,menor,media:real
   v1:vetor[1..3] de real
   s1:vetor[1..3] de real
inicio
// Se��o de Comandos
   para indiceA de 1 ate 10 faca
      escreval("Digite um numero qualquer: ")
      leia(v1[indiceA])
      se indiceA>1 entao
         s1[indiceA]<-s1[indiceA-1]+v1[indiceA]
      senao
         s1[indiceA]<-v1[indiceA]
      fimse
   fimpara
   
   limpatela
   
   maior<- -999999999
   menor<-999999999
   
   para indiceA de 1 ate 10 faca
      escreval("v[",indiceA,"]:",v1[indiceA])
      escreval("Somat�rio parcial[",indiceA,"]:",s1[indiceA])
      
      se v1[indiceA]>maior entao
         maior<-v1[indiceA]
      fimse
      se v1[indiceA]<menor entao
         menor<-v1[indiceA]
      fimse
      fimpara
   fimpara
   media<-s1[10]/10
   escreval("Maior:",maior," Menor:",menor," M�dia:",media)
   
fimalgoritmo
