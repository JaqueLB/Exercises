algoritmo "Exercicio 15 - Comparador de um numero no intervalo 100-200"
// Função : Receber um numero, comparar se este numero está entre 100-200,
// informar o usuário.
// Autor : Jaqueline L. Botaro
// Data : 10/03/2016
// Seção de Declarações 
var
   numero:inteiro
inicio
// Seção de Comandos 
   escreva("Este programa informa se o numero digitado está entre 100 e 200.")
   escreval()
   escreva("Informe um numero: ")
   leia(numero)
   se numero >= 100 entao
      se numero <= 200 entao
         escreval("O numero",numero," está entre 100 e 200.")
      senao // caso o numero seja maior que 200
         escreval("O numero",numero," não está entre 100 e 200.")
      fimse
   senao  // caso o numero seja menor que 100
      escreval("O numero",numero," não está entre 100 e 200.")
   fimse
fimalgoritmo
