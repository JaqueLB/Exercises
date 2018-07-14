algoritmo "Exercicio 35 - Calculo da conta de luz"
// Função : Calcular o valor da conta de luz de acordo com o tipo do cliente e
// o KW/h. Tipo 1 (casa) 0,60 reais por kw/h, Tipo 2 (comercio) 0,48 reais por
// kw/h, Tipo 3 (industria) 1,29 reais por kw/h
// Autor : Jaqueline
// Data : 06/04/2016
// Seção de Declarações 
var
   kwh, residencia: inteiro
   consumo: real
inicio
// Seção de Comandos
   escreval("*** Calculadora do Valor da Conta de Luz ***")
   escreval()
   escreva("Digite a quantidade de KW/h gasto no mes: ")
   leia(kwh)
   escreval()
   escreva("Digite o codigo do tipo da residencia (1-Casa, 2-Comercio, 3-Industria): ")
   leia(residencia)
   se residencia = 1 entao
      consumo<-kwh*0.6
   fimse
   se residencia = 2 entao
      consumo<-kwh*0.48
   fimse
   se residencia = 3 entao
      consumo<-kwh*1.29
   fimse
   limpatela
   escreval("*** Calculadora do Valor da Conta de Luz ***")
   escreval()
   escreval("Valor da conta no mes:",consumo," reais.")
fimalgoritmo
