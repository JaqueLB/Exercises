algoritmo "Exercicio 11 - Calculadora de Pre�o Final"
// Fun��o : Receber o pre�o de custo, o percentual de acrescimo e calcular
// o pre�o final de venda. Exibir o resultado.
// Autor : Jaqueline L. Botaro
// Data : 10/03/2016
// Se��o de Declara��es 
var
   valorCusto,acrescimo,valorVenda,valorFinal:real
inicio
// Se��o de Comandos
   escreva("Este programa exibe o pre�o final de venda, de acordo com o custo,")
   escreval()
   escreva("e a taxa de acrescimo informada.")
   escreval()
   escreva("Informe o pre�o de custo: ")
   leia(valorCusto)
   escreva("informe a taxa de acrescimo (decimal): ")
   leia(acrescimo)
   valorVenda<-valorCusto*acrescimo
   valorFinal<-valorCusto+valorVenda
   escreva("O valor final de venda � de ",valorFinal," reais.")
fimalgoritmo
