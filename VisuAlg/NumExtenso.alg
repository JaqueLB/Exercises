algoritmo "Exercicio 26 - Escrever por extenso numeros entre 1 e 5"
// Função : Ler um numero entre 1 e 5, e escrever por extenso. Se o numero
// estiver fora do intervalo, informar numero inválido.
// Autor : Jaqueline
// Data : 15/03/2016
// Seção de Declarações 
var
   numero: inteiro
inicio
// Seção de Comandos
   escreval("Digite um numero inteiro entre 1 e 5:")
   leia(numero)
   escolha numero
   caso 1
      escreval("Um")
   caso 2
      escreval("Dois")
   caso 3
      escreval("Tres")
   caso 4
      escreval("Quatro")
   caso 5
      escreval("Cinco")
   outrocaso
      escreval("Numero Inválido!")
   fimescolha
fimalgoritmo
