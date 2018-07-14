algoritmo "Exercicio 5 - Inversor"
// Função : Ler valores A e B, inverter, mostrar valores invertidos
// Autor : Jaqueline L. Botaro
// Data : 04/03/2016
// Seção de Declarações 
var
   valorA,valorB,auxiliar: inteiro

inicio
// Seção de Comandos
   escreva("Inversor de valores numericos.")
   escreval("")
   escreva("Digite o valor numerico (inteiro) A: ")
   leia(valorA)
   escreva("Digite o valor numerico (inteiro) B: ")
   leia(valorB)
   auxiliar<-valorA
   valorA<-valorB
   valorB<-auxiliar
   escreval("")
   escreva("Valor de A: ",valorA)
   escreval("")
   escreva("Valor de B: ",valorB)
fimalgoritmo
