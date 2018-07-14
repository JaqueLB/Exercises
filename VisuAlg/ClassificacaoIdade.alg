algoritmo "Exercicio 34 - Nadador por idade"
// Função : Classificar o nadador de acordo com idade fornecida e dados abaixo
// Infantil A = 5-7 anos
// Infantil B = 8-10 anos
// Juvenil A = 11-13 anos
// Juvenil B = 14-17 anos
// Senior = 18-25 anos Mensagem de fora da faixa quando idade n comtemplada
// Autor : Jaqueline
// Data : 06/04/2016
// Seção de Declarações 
var
   idade:inteiro
inicio
// Seção de Comandos
   escreval("Este programa informa a classificacao do nadador de acordo com idade")
   escreval()
   escreva("Digite a idade do atleta: ")
   leia(idade)
   escolha idade
      caso 5,6,7
         escreval("Infantil A")
      caso 8,9,10
         escreval("Infantil B")
      caso 11,12,13
         escreval("Juvenil A")
      caso 14,15,16,17
         escreval("Juvenil B")
      caso 18,19,20,21,22,23,24,25
         escreval("Senior")
      outrocaso
         escreval("Idade fora da faixa contemplada.")
   fimescolha
fimalgoritmo
