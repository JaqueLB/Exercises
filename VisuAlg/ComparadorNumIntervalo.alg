algoritmo "Exercicio 15 - Comparador de um numero no intervalo 100-200"
// Fun��o : Receber um numero, comparar se este numero est� entre 100-200,
// informar o usu�rio.
// Autor : Jaqueline L. Botaro
// Data : 10/03/2016
// Se��o de Declara��es 
var
   numero:inteiro
inicio
// Se��o de Comandos 
   escreva("Este programa informa se o numero digitado est� entre 100 e 200.")
   escreval()
   escreva("Informe um numero: ")
   leia(numero)
   se numero >= 100 entao
      se numero <= 200 entao
         escreval("O numero",numero," est� entre 100 e 200.")
      senao // caso o numero seja maior que 200
         escreval("O numero",numero," n�o est� entre 100 e 200.")
      fimse
   senao  // caso o numero seja menor que 100
      escreval("O numero",numero," n�o est� entre 100 e 200.")
   fimse
fimalgoritmo
