algoritmo "Exercicio 12 - Calculadora de Pre�o Final 2"
// Fun��o : Receber o valor de custo de um carro, incluir os impostos(45%),
// a porcentagem de distribuidor (28%) e calcular o pre�o para o consumidor.
// Mostrar o valor obtido.
// Autor : Jaqueline L. Botaro
// Data : 10/03/2016
// Se��o de Declara��es 
var
   custo,distribuidor,imposto,valorFinal:real
inicio
// Se��o de Comandos
   escreva("Este programa informa o pre�o final do carro.")
   escreval()
   escreva("Informe o valor de custo do veiculo: ")
   leia(custo)
   imposto<-custo*0.45
   distribuidor<-(custo+imposto)*0.28
   valorFinal<-custo+imposto+distribuidor
   escreva("O valor final para o consumidor ser� de",valorFinal," reais.")
fimalgoritmo
