algoritmo "Exercicio 9 - Calculadora de Rendimentos apos um mes"
// Fun��o : Receber o valor depositado, e exibir o rendimento ap�s um m�s,
// considerando o juro da poupan�a em 0,70% a.m.
// Autor : Jaqueline L. Botaro
// Data : 10/03/2016
// Se��o de Declara��es 
var
   deposito,rendimento,valorMes:real
inicio
// Se��o de Comandos
   escreva("Este programa exibe os rendimentos ap�s 1 m�s de")
   escreva("um dep�sito feito numa poupan�a a 0,7% a.m.")
   escreval()
   escreva("Digite o valor do deposito: ")
   leia(deposito)
   rendimento<-(deposito*0.7)/100
   valorMes<-rendimento+deposito
   escreva("O valor total ap�s um m�s ser�: ",valorMes)
fimalgoritmo
