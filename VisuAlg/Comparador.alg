algoritmo "Exercicio 23 - Solicita numero, exibe msg se >80,<25 ou =40"
// Função : Solicitar um numero e exibir uma mensagem se o numero for maior que
// 80, menor que 25 ou igual a 40.
// Autor : Jaqueline
// Data : 15/03/2016
// Seção de Declarações 
var
   num:inteiro
inicio
// Seção de Comandos
   escreval("Digite um numero inteiro:")
   leia(num)
   se num > 80 entao
      escreval("O numero é maior que 80.")
   senao
      se num < 25 entao
         escreval("O numero é menor que 25.")
      senao
         se num = 40 entao
            escreval("O numero é igual a 40.")
         senao
            escreval("O numero não atende às especificações.")
         fimse
      fimse
   fimse
fimalgoritmo
