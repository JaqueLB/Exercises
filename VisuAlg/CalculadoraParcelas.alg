algoritmo "Exercicio 10 - Calculadora de Presta��es"
// Fun��o : Recebe o valor da compra, divide em 5 parcelas sem juros, mostra
// as parcelas de cada m�s.
// Autor : Jaqueline L. Botaro
// Data : 10/03/2016
// Se��o de Declara��es 
var
   valorCompra,valorParcela:real
inicio
// Se��o de Comandos
   escreva("Estamos com uma promo��o, todo produto ser� vendido")
   escreval()
   escreva("em 5 (cinco) parcelas sem juros.")
   escreval()
   escreva("Informe o valor de sua compra: ")
   leia(valorCompra)
   valorParcela<-valorCompra/5
   escreva("O valor da parcela ser� de",valorParcela," reais por m�s.")
fimalgoritmo
