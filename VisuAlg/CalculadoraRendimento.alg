algoritmo "Exercicio 9 - Calculadora de Rendimentos apos um mes"
// Função : Receber o valor depositado, e exibir o rendimento após um mês,
// considerando o juro da poupança em 0,70% a.m.
// Autor : Jaqueline L. Botaro
// Data : 10/03/2016
// Seção de Declarações 
var
   deposito,rendimento,valorMes:real
inicio
// Seção de Comandos
   escreva("Este programa exibe os rendimentos após 1 mês de")
   escreva("um depósito feito numa poupança a 0,7% a.m.")
   escreval()
   escreva("Digite o valor do deposito: ")
   leia(deposito)
   rendimento<-(deposito*0.7)/100
   valorMes<-rendimento+deposito
   escreva("O valor total após um mês será: ",valorMes)
fimalgoritmo
