algoritmo "Exercicio 23 - Solicita numero, exibe msg se >80,<25 ou =40"
// Fun��o : Solicitar um numero e exibir uma mensagem se o numero for maior que
// 80, menor que 25 ou igual a 40.
// Autor : Jaqueline
// Data : 15/03/2016
// Se��o de Declara��es 
var
   num:inteiro
inicio
// Se��o de Comandos
   escreval("Digite um numero inteiro:")
   leia(num)
   se num > 80 entao
      escreval("O numero � maior que 80.")
   senao
      se num < 25 entao
         escreval("O numero � menor que 25.")
      senao
         se num = 40 entao
            escreval("O numero � igual a 40.")
         senao
            escreval("O numero n�o atende �s especifica��es.")
         fimse
      fimse
   fimse
fimalgoritmo
