algoritmo "Exercicio 4 - Calculadora de Salario"
// Fun��o : Calcular salario total do vendedor considerando 15% sobre o valor
// das vendas totais realizadas no mes, e o salario fixo. Mostar nome, salario
// fixo e salario total.
// Autor : Jaqueline L. Botaro
// Data : 04/03/2016
// Se��o de Declara��es
var
   nome: caractere
   salarioFixo,vendasMes,salarioTotal: real

inicio
// Se��o de Comandos
   escreva("Sistema de Gest�o de Vendedores")
   escreval("")
   escreva("Digite o nome do vendedor: ")
   leia(nome)
   escreva("Digite o salario fixo do vendedor: ")
   leia(salarioFixo)
   escreva("Digite o valor das vendas do mes: ")
   leia(vendasMes)
   salarioTotal<-vendasMes*0.15+salarioFixo
   escreval("")
   escreva("Nome: ",nome)
   escreval("")
   escreva("Salario Fixo: ",salarioFixo)
   escreval("")
   escreva("Salario Total: ",salarioTotal)
fimalgoritmo
