algoritmo "Exercicio 25 - Comparar dois numeros"
// Fun��o : Ler dois numeros, verificar e informar se eles s�o iguais ou
// diferentes, e se forem diferentes, informar o maior.
// Autor : Jaqueline
// Data : 15/03/2016
// Se��o de Declara��es 
var
   num1,num2:real
inicio
// Se��o de Comandos
   escreval("Digite dois numeros:")
   leia(num1)
   leia(num2)
   se num1 = num2 entao
      escreval("O numero",num1," � igual ao numero",num2)
   senao
      se num1 > num2 entao
         escreval("Eles s�o diferentes!")
         escreval("O numero",num1," � maior que o numero",num2)
      senao
         escreval("Eles s�o diferentes!")
         escreval("O numero",num2," � maior que o numero",num1)
      fimse
   fimse
fimalgoritmo
