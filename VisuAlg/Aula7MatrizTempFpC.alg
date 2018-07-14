algoritmo "Aula 7 - Conversor de Temperaturas"
// Função :
// Autor :
// Data : 06/04/2016
// Seção de Declarações 
var
   temp:vetor[1..100,1..2] de real
   i:inteiro
   resp:caractere
inicio
// Seção de Comandos
   i<-1
   resp<-"S"
   enquanto resp = "S" faca
      escreval("*** Sistema para Conversão de Temperaturas Fahrenheit em Celsius ***")
      escreval()
      escreva("Informe a temperatura em Fahrenheit: ")
      leia(temp[i,1])
      temp[i,2]<-(temp[i,1]-32)*(5/9)
      escreval()
      escreva("Deseja informar outra temperatura? (S/N) ")
      leia(resp)
      limpatela
      se resp = "S" entao
         i<-i+1
      fimse
   fimenquanto
   limpatela
   escreval("*** Sistema para Conversão de Temperaturas Fahrenheit em Celsius ***")
   escreval()
   escreval("*** Resultado da Conversão ***")
   escreval()
   para i de 1 ate 100 faca
      se ((temp[i,1] = 0) e (temp[i,2] = 0)) entao
         i<-101
      senao
         escreval("Conversão:",temp[i,1],"ºF =",temp[i,2],"ºC.")
         se temp[i,2]<5 entao
            escreval("FRIO")
            escreval("--------------------------------------------------------")
         senao
            se ((temp[i,2]>=5) e (temp[i,2]<25)) entao
               escreval("AGRADÁVEL")
               escreval("------------------------------------------------------")
            senao  // para >= 25
               escreval("QUENTE")
               escreval("------------------------------------------------------")
            fimse
         fimse
      fimse
   fimpara
fimalgoritmo
