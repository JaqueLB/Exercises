algoritmo "Aula 10 - Funcao Sobrenome"
// Fun��o : Criar funcao para exibir o sobrenome do usuario
// Autor : Jaqueline
// Data : 08/04/2016
// Se��o de Declara��es 
var
   nome,sobrenome2: caracter
   funcao fsobrenome(completo:caracter):caracter
   var
      sobrenome1:caracter
      qtletras,espaco:inteiro
   inicio
      qtletras<-Compr(completo)
      espaco<-Pos(" ",completo)
      sobrenome1<-Copia(completo,espaco+1,qtletras)
      retorne sobrenome1
   fimfuncao
inicio
// Se��o de Comandos
   escreva("Digite o nome e sobrenome: ")
   leia(nome)
   sobrenome2<-fsobrenome(nome)
   escreval("Seu sobrenome eh ",sobrenome2)
fimalgoritmo
