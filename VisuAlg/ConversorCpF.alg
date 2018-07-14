algoritmo "Exercicio 7 - Converter temp de celsius p farenheit"
// Função : Ler temperatura em Celsius, converter para Farenheit, exibir
// resultado
// Autor : Jaqueline L. Botaro
// Data : 10/03/2016
// Seção de Declarações 
var
   tempC, tempF: real
inicio
// Seção de Comandos 
   escreva("Este programa converte temperaturas, de Celsius para Farenheit.")
   escreval()
   escreva("Digite a temperatura em Celsius: ")
   leia(tempC)
   tempF<-((9*tempC) + 160)/5
   escreva("A temperatura em Farenheit é: ",tempF)
fimalgoritmo
