algoritmo "Exercicio 1 Aula 6"
// Fun��o : Calcular o fatorial de um numero qualquer
// Autor : Jaqueline L. Botaro
// Data : 10/03/2016
// Se��o de Declara��es 
var
   fatorial,contador,valor,anterior:inteiro
inicio
// Se��o de Comandos
   fatorial<-0
   anterior<-1
   escreva("Digite um numero qualquer: ")
   leia(valor)
   para contador de 1 ate valor faca
        fatorial<-i*anterior
        anterior<-fatorial
   fimpara
   escreval("O fatorial do numero",valor," �",fatorial)
fimalgoritmo
