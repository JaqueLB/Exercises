algoritmo "Exercício 2 - Calculadora"
// Função : Receber dois números, calcular e mostrar a soma, a subtração,
// a multiplicação e a divisão dos numeros.
// Autor : Jaqueline L. Botaro
// Data : 04/03/2016
// Seção de Declarações 
var
    numero1,numero2,soma,subtracao,multiplicacao,divisao: real
inicio
// Seção de Comandos 
   escreva("Calculadora Basica")
   escreval("")
   escreva("Digite o primeiro numero: ")
   leia(numero1)
   escreva("Digite o segundo numero: ")
   leia(numero2)
   soma<-numero1+numero2
   subtracao<-numero1-numero2
   multiplicacao<-numero1*numero2
   divisao<-numero1/numero2
   escreva("A soma é: ",soma)
   escreval("")
   escreva("A subtracao é: ",subtracao)
   escreval("")
   escreva("A multiplicacao é: ",multiplicacao)
   escreval("")
   escreva("A divisao é: ",divisao)
fimalgoritmo
