algoritmo "Exercicio 1 Aula 6"
// Função : Calcular o fatorial de um numero qualquer
// Autor : Jaqueline L. Botaro
// Data : 10/03/2016
// Seção de Declarações 
var
   fatorial,contador,valor,anterior:inteiro
inicio
// Seção de Comandos
   fatorial<-0
   anterior<-1
   escreva("Digite um numero qualquer: ")
   leia(valor)
   para contador de 1 ate valor faca
        fatorial<-i*anterior
        anterior<-fatorial
   fimpara
   escreval("O fatorial do numero",valor," é",fatorial)
fimalgoritmo
