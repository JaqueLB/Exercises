algoritmo "Exercicio 8 - Conversor de valor US$ para R$"
// Fun��o : Converter para real o d�lar, seguindo a cota��o do
// dia fornecida pelo usu�rio. Exibir o resultado.
// Autor : Jaqueline L. Botaro
// Data : 10/03/2016
// Se��o de Declara��es 
var
   valorReais,valorDolar,cotDolar:real
inicio
// Se��o de Comandos
   escreva("Este programa exibe a convers�o de um valor em d�lares para reais.")
   escreval()
   escreva("Qual a cota��o atual do d�lar? ")
   leia(cotDolar)
   escreva("Qual o valor em d�lar que voc� possui? ")
   leia(valorDolar)
   valorReais<-valorDolar * cotDolar
   escreva("Voc� possui",valorReais," reais.")
fimalgoritmo
