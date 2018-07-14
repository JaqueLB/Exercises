algoritmo "Exercicio 11 - Calculadora de Preço Final"
// Função : Receber o preço de custo, o percentual de acrescimo e calcular
// o preço final de venda. Exibir o resultado.
// Autor : Jaqueline L. Botaro
// Data : 10/03/2016
// Seção de Declarações 
var
   valorCusto,acrescimo,valorVenda,valorFinal:real
inicio
// Seção de Comandos
   escreva("Este programa exibe o preço final de venda, de acordo com o custo,")
   escreval()
   escreva("e a taxa de acrescimo informada.")
   escreval()
   escreva("Informe o preço de custo: ")
   leia(valorCusto)
   escreva("informe a taxa de acrescimo (decimal): ")
   leia(acrescimo)
   valorVenda<-valorCusto*acrescimo
   valorFinal<-valorCusto+valorVenda
   escreva("O valor final de venda é de ",valorFinal," reais.")
fimalgoritmo
