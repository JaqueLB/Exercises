algoritmo "Exerc�cio 2 - Calculadora"
// Fun��o : Receber dois n�meros, calcular e mostrar a soma, a subtra��o,
// a multiplica��o e a divis�o dos numeros.
// Autor : Jaqueline L. Botaro
// Data : 04/03/2016
// Se��o de Declara��es 
var
    numero1,numero2,soma,subtracao,multiplicacao,divisao: real
inicio
// Se��o de Comandos 
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
   escreva("A soma �: ",soma)
   escreval("")
   escreva("A subtracao �: ",subtracao)
   escreval("")
   escreva("A multiplicacao �: ",multiplicacao)
   escreval("")
   escreva("A divisao �: ",divisao)
fimalgoritmo
