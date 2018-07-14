algoritmo "Aula 10 - Funcao Sobrenome"
// Função : Criar funcao para exibir o sobrenome do usuario
// Autor : Jaqueline
// Data : 08/04/2016
// Seção de Declarações 
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
// Seção de Comandos
   escreva("Digite o nome e sobrenome: ")
   leia(nome)
   sobrenome2<-fsobrenome(nome)
   escreval("Seu sobrenome eh ",sobrenome2)
fimalgoritmo
