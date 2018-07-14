algoritmo "Exercício 3 - Calculadora de consumo médio de combustivel"
// Função : Calcular o consumo médio do veiculo com base na distancia total
// percorrida e combustivel total gasto.
// Autor : Jaqueline L. Botaro
// Data : 04/03/2016
// Seção de Declarações 
var
   distancia,combustivel,consumo: real

inicio
// Seção de Comandos 
   escreva("Calculadora de consumo médio de combustivel.")
   escreval("")
   escreva("Digite a distancia percorrida: ")
   leia(distancia)
   escreva("Digite o combustivel gasto: ")
   leia(combustivel)
   consumo<-distancia/combustivel
   escreva("O consumo medio do seu veiculo é: ",consumo)
fimalgoritmo
