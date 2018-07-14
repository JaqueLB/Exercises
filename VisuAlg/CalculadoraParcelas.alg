algoritmo "Exercicio 10 - Calculadora de Prestações"
// Função : Recebe o valor da compra, divide em 5 parcelas sem juros, mostra
// as parcelas de cada mês.
// Autor : Jaqueline L. Botaro
// Data : 10/03/2016
// Seção de Declarações 
var
   valorCompra,valorParcela:real
inicio
// Seção de Comandos
   escreva("Estamos com uma promoção, todo produto será vendido")
   escreval()
   escreva("em 5 (cinco) parcelas sem juros.")
   escreval()
   escreva("Informe o valor de sua compra: ")
   leia(valorCompra)
   valorParcela<-valorCompra/5
   escreva("O valor da parcela será de",valorParcela," reais por mês.")
fimalgoritmo
