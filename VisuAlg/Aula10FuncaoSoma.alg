algoritmo "Aula 10 - Criando Funcao Soma"
// Fun��o : Mostrar a criacao de uma funcao para somar dois numeros.
// Autor : Jaqueline
// Data : 08/04/2016
// Se��o de Declara��es 
var
   num1,num2,soma:real  // variaveis globais
   funcao fsoma(v1,v2:real):real
   var
      total:real // variavel local
   inicio
      total<-v1+v2
      retorne total
   fimfuncao
inicio
// Se��o de Comandos
   escreval("Digite dois numeros para serem somados:")
   leia(num1)
   leia(num2)
   soma<-fsoma(num1,num2) // uso da funcao
   escreval("O resultado da soma eh:",soma)
fimalgoritmo
