algoritmo "Aula 7 - Conversor de Temperaturas"
// Fun��o :
// Autor :
// Data : 06/04/2016
// Se��o de Declara��es 
var
   tempF:vetor[1..100] de real
   tempC:vetor[1..100] de real
   i:inteiro
   resp:caractere
inicio
// Se��o de Comandos
   i<-1
   resp<-"S"
   enquanto resp = "S" faca
      escreval("*** Sistema para Convers�o de Temperaturas Fahrenheit em Celsius ***")
      escreval()
      escreva("Informe a temperatura em Fahrenheit: ")
      leia(tempF[i])
      tempC[i]<-(tempF[i]-32)*(5/9)
      escreval()
      escreva("Deseja informar outra temperatura? (S/N) ")
      leia(resp)
      limpatela
      se resp = "S" entao
         i<-i+1
      fimse
   fimenquanto
   limpatela
   escreval("*** Sistema para Convers�o de Temperaturas Fahrenheit em Celsius ***")
   escreval()
   escreval("*** Resultado da Convers�o ***")
   escreval()
   para i de 1 ate 100 faca
      se ((tempF[i] = 0) e (tempC[i] = 0)) entao
         i<-101
      senao
         escreval("Temperatura em Fahrenheit:",tempF[i],"�F.")
         escreval("Temperatura em Celsius:",tempC[i],"�C.")
         se tempC[i]<5 entao
            escreval("FRIO")
            escreval("--------------------------------------------------------")
         senao
            se ((tempC[i]>=5) e (tempC[i]<25)) entao
               escreval("AGRAD�VEL")
               escreval("------------------------------------------------------")
            senao  // para >= 25
               escreval("QUENTE")
               escreval("------------------------------------------------------")
            fimse
         fimse
      fimse
   fimpara
fimalgoritmo
