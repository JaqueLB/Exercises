algoritmo "Exercicio 20 - Calculadora de desconto de acordo com ano"
// Fun��o : Calcular e exibir o valor de desconto e valor a ser pago pelo
// cliente de v�rios carros. O desconto dever� ser calculado de acordo com o ano
// do veiculo: at� 2000 - 12%, e acima de 2000 - 7%.
// O sistema perguntar� se quer calcular o desconto at� que o usu�rio digite N
// (N�o). Informar quantidade de carros com ano at� 2000 e total geral.
// Autor :
// Data : 15/03/2016
// Se��o de Declara��es 
var
   programa: caractere
   ano, carrosTotal, carros2000, carrosNovos: inteiro
   valor, desconto, valorFinal: real
inicio
// Se��o de Comandos
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
         escreval("O valor do desconto �:",desconto)
         escreval("O valor final �:",valorFinal)
         carros2000<-carros2000+1
      senao
         desconto<-valor*0.07
         valorFinal<-valor-desconto
         escreval("")
         escreval("O valor do desconto �:",desconto)
         escreval("O valor final �:",valorFinal)
         carrosNovos<-carrosNovos+1
      fimse
      escreval("")
      escreval("Deseja calcular o valor de outro carro?")
      escreval("Digite S se sim, e N se N�o:")
      leia(programa)
   fimenquanto
   escreval("")
   escreval("Carros at� 2000:",carros2000," Carros novos:",carrosNovos)
         
fimalgoritmo
