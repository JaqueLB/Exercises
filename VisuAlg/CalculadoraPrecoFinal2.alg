algoritmo "Exercicio 12 - Calculadora de Preço Final 2"
// Função : Receber o valor de custo de um carro, incluir os impostos(45%),
// a porcentagem de distribuidor (28%) e calcular o preço para o consumidor.
// Mostrar o valor obtido.
// Autor : Jaqueline L. Botaro
// Data : 10/03/2016
// Seção de Declarações 
var
   custo,distribuidor,imposto,valorFinal:real
inicio
// Seção de Comandos
   escreva("Este programa informa o preço final do carro.")
   escreval()
   escreva("Informe o valor de custo do veiculo: ")
   leia(custo)
   imposto<-custo*0.45
   distribuidor<-(custo+imposto)*0.28
   valorFinal<-custo+imposto+distribuidor
   escreva("O valor final para o consumidor será de",valorFinal," reais.")
fimalgoritmo
