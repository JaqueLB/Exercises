algoritmo "Exercicio 8 - Conversor de valor US$ para R$"
// Função : Converter para real o dólar, seguindo a cotação do
// dia fornecida pelo usuário. Exibir o resultado.
// Autor : Jaqueline L. Botaro
// Data : 10/03/2016
// Seção de Declarações 
var
   valorReais,valorDolar,cotDolar:real
inicio
// Seção de Comandos
   escreva("Este programa exibe a conversão de um valor em dólares para reais.")
   escreval()
   escreva("Qual a cotação atual do dólar? ")
   leia(cotDolar)
   escreva("Qual o valor em dólar que você possui? ")
   leia(valorDolar)
   valorReais<-valorDolar * cotDolar
   escreva("Você possui",valorReais," reais.")
fimalgoritmo
