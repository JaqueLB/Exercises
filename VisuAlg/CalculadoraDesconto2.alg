algoritmo "Exercicio 27 - Desconto de acordo com combustivel"
// Fun��o : Ler o custo do veiculo, calcular o desconto de acordo com o
// combustivel, e exibir ao cliente o valor do desconto e o valor final.
// alcool -25%, gasolina -21%, diesel -14%
// Autor :
// Data : 15/03/2016
// Se��o de Declara��es 
var
   desconto, custo, venda: real
   combustivel,programa: caractere
inicio
// Se��o de Comandos
   programa<-"S"
   escreval("**** Calculadora de descontos Carango Velho ****")
   escreval("")
   enquanto programa <> "N" faca
      escreval("Digite o valor do veiculo:")
      leia(custo)
      escreval("Digite o tipo de combustivel, A para alcool, G para gasolina ou")
      escreval("D para diesel:")
      leia(combustivel)
      se combustivel = "A" entao
         desconto<-custo*0.25
         venda<-custo-desconto
         escreval("O desconto � de",desconto,". O valor final �",venda)
      senao
         se combustivel = "G" entao
            desconto<-custo*0.21
            venda<-custo-desconto
            escreval("O desconto � de",desconto,". O valor final �",venda)
         senao
            se combustivel = "D" entao
               desconto<-custo*0.14
               venda<-custo-desconto
               escreval("O desconto � de",desconto,". O valor final �",venda)
            fimse
         fimse
      fimse
      escreval("")
      escreval("Deseja informar mais um pre�o?")
      escreval("Digite S se sim, e N se n�o:")
      leia(programa)
      escreval("")
   fimenquanto
fimalgoritmo
