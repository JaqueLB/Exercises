algoritmo "Exerc�cio 3 - Calculadora de consumo m�dio de combustivel"
// Fun��o : Calcular o consumo m�dio do veiculo com base na distancia total
// percorrida e combustivel total gasto.
// Autor : Jaqueline L. Botaro
// Data : 04/03/2016
// Se��o de Declara��es 
var
   distancia,combustivel,consumo: real

inicio
// Se��o de Comandos 
   escreva("Calculadora de consumo m�dio de combustivel.")
   escreval("")
   escreva("Digite a distancia percorrida: ")
   leia(distancia)
   escreva("Digite o combustivel gasto: ")
   leia(combustivel)
   consumo<-distancia/combustivel
   escreva("O consumo medio do seu veiculo �: ",consumo)
fimalgoritmo
