algoritmo "Exercicio 20 - Calculadora de desconto de acordo com ano"
// Função : Calcular e exibir o valor de desconto e valor a ser pago pelo
// cliente de vários carros. O desconto deverá ser calculado de acordo com o ano
// do veiculo: até 2000 - 12%, e acima de 2000 - 7%.
// O sistema perguntará se quer calcular o desconto até que o usuário digite N
// (Não). Informar quantidade de carros com ano até 2000 e total geral.
// Autor :
// Data : 15/03/2016
// Seção de Declarações 
var
   programa: caractere
   ano, carrosTotal, carros2000, carrosNovos: inteiro
   valor, desconto, valorFinal: real
inicio
// Seção de Comandos
   escreval("**** Calculadora de descontos Carango Velho ****")
   programa<-"S"
   enquanto programa <> "N" faca
      escreval("")
      escreval("Digite o valor do carro:")
      leia(valor)
      escreval("Digite o ano do carro:")
      leia(ano)
      se ano <= 2000 entao
         desconto<-valor*0.12
         valorFinal<-valor-desconto
         escreval("")
         escreval("O valor do desconto é:",desconto)
         escreval("O valor final é:",valorFinal)
         carros2000<-carros2000+1
      senao
         desconto<-valor*0.07
         valorFinal<-valor-desconto
         escreval("")
         escreval("O valor do desconto é:",desconto)
         escreval("O valor final é:",valorFinal)
         carrosNovos<-carrosNovos+1
      fimse
      escreval("")
      escreval("Deseja calcular o valor de outro carro?")
      escreval("Digite S se sim, e N se Não:")
      leia(programa)
   fimenquanto
   escreval("")
   escreval("Carros até 2000:",carros2000," Carros novos:",carrosNovos)
         
fimalgoritmo
